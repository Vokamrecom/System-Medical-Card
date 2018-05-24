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
    public class PatientsPresenter
    {

        public PatientsPresenter(IPatientsView view)
        {
            this.View = view;
        }

        private IEnumerable<Patient> _patients;
        public IEnumerable<Patient> Patients
        {
            get
            {
                return _patients;
            }
            set
            {
                _patients = value;
                View.Patients = _patients;
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

        public IPatientsView View { get; set; }

        /// <summary>
        /// Filters patients by name and number and sets the datagrdview source
        /// </summary>
        /// <param name="name"></param>
        /// <param name="number"></param>
        public void LoadPatientsByCriterias(string name, string number)
        {
            try
            {
                IQueryable<Patient> patientsQuery;
                patientsQuery = PatientsDataAccess.GetPatients();
                if (!string.IsNullOrEmpty(name))
                {
                    patientsQuery = patientsQuery.Where(p => p.Name.Contains(name));
                }

                if (!string.IsNullOrEmpty(number))
                {
                    patientsQuery = patientsQuery.Where(p => p.Number.Contains(number));
                }
                this.Patients = patientsQuery.ToList();
            }
            catch (Exception e)
            {
                this.Message = "Ошибка при запросе базы данных!Вызовите администратора!";
            }
        }

        internal void LoadAllPatients()
        {
            this.LoadPatientsByCriterias(string.Empty, string.Empty);
        }
    }
}
