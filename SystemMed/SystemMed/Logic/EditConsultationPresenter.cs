using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using SystemMed.View;
using SystemMed.Data;

//using SystemMed.Models;
namespace SystemMed.Logic
{
    public class EditConsultationPresenter
    {
        public Consultation Consultation { get; set; }
        public IEditConsultationView View { get; set; }

        public EditConsultationPresenter(IEditConsultationView view)
        {
            this.View = view;
        }

        public EditConsultationPresenter(IEditConsultationView view, int consultationId)
        {
            this.View = view;
            this.Load(consultationId);
        }

        protected void FillConsultation()
        {
            Consultation.DoctorId = View.DoctorId;
            Consultation.PatientId = View.PatientId;
            Consultation.ScheduleDate = View.ScheduleDate;
            Consultation.ScheduleTime = View.ScheduleTime;
            Consultation.Notes = View.Notes;
            Consultation.Reason = View.Reason;
            Consultation.Conclusion = View.Conclusion;
        }

        protected void FillView()
        {
            int doctorId = Consultation.DoctorId.HasValue ? Consultation.DoctorId.Value : 0;
            View.DoctorId = doctorId;
            var consultationDoctor = DoctorDataAccess.GetDoctorById(doctorId);
            if (consultationDoctor != null)
            {
                View.DoctorName = consultationDoctor.Name;
            }
            else
            {
                View.DoctorName = "Не выбран пациент";
            }


            int patientId = Consultation.PatientId.HasValue ? Consultation.PatientId.Value : 0;
            View.PatientId = patientId;
            var consultationPatient = PatientsDataAccess.GetPatientById(patientId);
            if (consultationPatient != null)
            {
                View.PatientName = consultationPatient.Name;
                View.PatientNumber = consultationPatient.Number;
            }
            else
            {
                View.PatientName = "Не выбран пациент";
                View.PatientNumber = string.Empty;
            }

            DateTime scheduleDate = Consultation.ScheduleDate.HasValue ? Consultation.ScheduleDate.Value : DateTime.Now;
            TimeSpan scheduleTime = Consultation.ScheduleTime.HasValue ? Consultation.ScheduleTime.Value : TimeSpan.MinValue;
            View.ScheduleDate = scheduleDate;
            View.ScheduleTime = scheduleTime;
            View.Notes = Consultation.Notes;
            View.Reason = Consultation.Reason;
            View.Conclusion = Consultation.Conclusion;
            View.ConsultationId = Consultation.ConsultationId;
        }

        protected bool IsValid()
        {
            string message = string.Empty;
            bool isValid = IsDataValid(out message);
            if (!isValid)
            {
                View.Message = message;
            }

            return isValid;
        }

        protected bool IsDataValid(out string message)
        {
            message = string.Empty;
            bool isValid = true;
           

            if (!Consultation.ScheduleDate.HasValue)
            {
                message += String.Format("Поле '{0}' пусто!\n", "Дата");
                isValid = false;
            }
            
            if (!Consultation.ScheduleTime.HasValue)
            {
                MessageBox.Show("Время не выбрано!!!!!!");
                message += String.Format("Поле '{0}' пусто!\n", "Время");
                isValid = true;
            }
            

            if ((!Consultation.PatientId.HasValue) || (Consultation.PatientId == 0))
            {
                message += String.Format("Поле '{0}' пусто!\n", "Пациент");
                isValid = false;
            }

            if (!Consultation.DoctorId.HasValue)
            {
                message += String.Format("Поле '{0}' пусто!\n", "Врач");
                isValid = false;
            }

            return isValid;
        }

        public void Save()
        {
            this.FillConsultation();
            bool isValid = IsValid();
            if (isValid)
            {
                SaveModel(Consultation);
                FillView();
            }
        }

        private void SaveModel(Consultation model)
        {
            try
            {
                if (Consultation.ConsultationId == 0)
                {
                    ConsultationDataAccess.InsertConsultation(Consultation);
                }
                else
                {
                    ConsultationDataAccess.UpdateConsultation(Consultation);
                }
                View.Message = "Успешная запись!";
            }
            catch (Exception e)
            {
                var message = String.Format("Ошибка при запросе базы данных!Вызовите администратора!/n {0} ", e.Message);
                View.Message = message;
            }

        }

        public void CreateNew()
        {
            var newConsultation = new Consultation();
            this.Consultation = newConsultation;


            var currentUser = Membership.CurrentUser;

            var currentUserPatient = currentUser.Patient;
            if (currentUserPatient != null)
            {
                this.Consultation.PatientId = currentUserPatient.PatientId;
                this.View.PatientName = currentUserPatient.Name;
                this.View.PatientNumber = currentUserPatient.Number;

            }

            this.FillView();

        }

        public void Load(int consultationId)
        {
            try
            {
                if (consultationId == 0)
                {
                    throw new ArgumentNullException("consultationId  должен отличаться от 0!");
                }
                var consultation = ConsultationDataAccess.GetConsultationById(consultationId);
                this.Consultation = consultation;
                this.FillView();
            }
            catch (Exception e)
            {
                string message = "Ошибка!:" + e.Message;
                View.Message = message;
            }
        }
    }
}
