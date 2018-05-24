using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.View;
using SystemMed.Data;
using System.Data;
using SystemMed.Models;
namespace SystemMed.Logic
{
    public class ConsultationsPresenter
    {


        public ConsultationsPresenter(IConsultationsView view)
        {
            this.View = view;
            this.View.ScheduleDateFromCriteria = DateTime.Now.AddDays(-1);
            this.View.ScheduleDateToCriteria = DateTime.Now.AddDays(7);
        }

        private IEnumerable<Consultation> _consultations;
        public IEnumerable<Consultation> Consultations
        {
            get
            {
                return _consultations;
            }
            set
            {
                _consultations = value;
                View.Consultations = _consultations;
            }
        }

        private string _message;
        public string Message
        {
            get
            {
                return _message;
            }
            set
            {
                _message = value;
                View.Message = _message;
            }
        }

        public IConsultationsView View { get; set; }

        /// <summary>
        /// Filters consultations by name and number and sets the datagrdview source
        /// </summary>
        /// <param name="name"></param>
        /// <param name="number"></param>
        public void LoadConsultationsByCriterias(DateTime? dateTimeFrom, DateTime? dateTimeTo, int patientId)
        {
            try
            {
                IQueryable<Consultation> consultationsQuery;
                consultationsQuery = ConsultationDataAccess.GetConsultations();
                if (dateTimeFrom.HasValue)
                {
                    DateTime dateTimeFromValue = dateTimeFrom.Value;
                    consultationsQuery = consultationsQuery.Where(p => p.ScheduleDate.Value > dateTimeFromValue);
                }

                if (dateTimeTo.HasValue)
                {
                    DateTime dateTimeToValue = dateTimeTo.Value;
                    consultationsQuery = consultationsQuery.Where(p => p.ScheduleDate.Value < dateTimeToValue);
                }

                if (patientId != 0)
                {
                    consultationsQuery = consultationsQuery.Where(c => c.PatientId == patientId);
                }

                this.Consultations = consultationsQuery.ToList();
            }
            catch (Exception e)
            {
                this.Message = string.Format("Ошибка при запросе базы данных!Вызовите администратора!\n {0}", e.Message);
            }
        }

        public void LoadConsultationsByCriterias()
        {
            DateTime? dateTimeFrom = this.View.ScheduleDateFromCriteria;
            DateTime? dateTimeTo = this.View.ScheduleDateToCriteria;
            int currentPatientId = 0;

            var currentUser = Membership.CurrentUser;
            if (currentUser.RoleId == (int)UserRoles.Patient)
            {
                currentPatientId = Membership.CurrentUser.PatientId.HasValue ? Membership.CurrentUser.PatientId.Value : 0;
            }
            else
            {
                currentPatientId = 0;
            }

            this.LoadConsultationsByCriterias(dateTimeFrom, dateTimeTo, currentPatientId);
        }

        internal void LoadAllConsultations()
        {
            this.LoadConsultationsByCriterias(null, null, 0);
        }
    }
}
