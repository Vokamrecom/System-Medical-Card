﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.View;
using SystemMed.Data;
using System.Data;
using SystemMed.Models;
namespace SystemMed.Logic
{
    public class EditPatientPresenter
    {
        public Patient Patient { get; set; }
        public IEditPatientView View { get; set; }

        public EditPatientPresenter(IEditPatientView view)
        {
            this.View = view;
        }

        public EditPatientPresenter(IEditPatientView view, int patientId)
        {
            this.View = view;
            this.Load(patientId);
        }

        protected void FillPatient()
        {
            Patient.Name = View.PatientName;
            Patient.Number = View.Number;
            Patient.Phone = View.Phone;
            Patient.Address = View.Address;
            Patient.Birthdate = View.Birthdate;
        }

        protected void FillView()
        {
            View.PatientName = Patient.Name;
            View.Number = Patient.Number;
            View.Phone = Patient.Phone;
            View.Address = Patient.Address;
            View.Birthdate = Patient.Birthdate.HasValue ? Patient.Birthdate.Value : DateTime.Today;
            View.PatientId = Patient.PatientId;
            View.Consultations = Patient.Consultations;
            View.Diagnosis = Patient.Diagnoses;
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

            if (String.IsNullOrEmpty(Patient.Name))
            {
                message += String.Format("Поле '{0}' пусто!\n", "Имя");
                isValid = false;
            }

            if (String.IsNullOrEmpty(Patient.Number))
            {
                message += String.Format("Поле '{0}' пусто!\n", "ЕГН");
                isValid = false;
            }

            return isValid;
        }

        public void Save()
        {
            this.FillPatient();
            bool isValid = IsValid();
            if (isValid)
            {
                SaveModel(Patient);
                FillView();
            }
        }

        private void SaveModel(Patient model)
        {
            try
            {
                if (Patient.PatientId == 0)
                {
                    PatientsDataAccess.InsertPatient(Patient);
                }
                else
                {
                    PatientsDataAccess.UpdatePatient(Patient);
                }
                View.Message = "Успешная запись!";
            }
            catch (Exception e)
            {
                var message = String.Format("Ошибка хранилища!Позвоните администратору!/ n [0] ", e.Message);
                View.Message = message;
            }

        }

        public void CreateNew()
        {
            var newPatient = new Patient();
            this.Patient = newPatient;
            this.FillView();
        }

        public void Load(int patientId)
        {
            try
            {
                if (patientId == 0)
                {
                    throw new ArgumentNullException("patientId должен отличаться от 0!");
                }
                var patient = PatientsDataAccess.GetPatientWithConsultationsAndDiagnosesById(patientId);
                this.Patient = patient;
                this.FillView();
                this.LoadConsultations();
            }
            catch (Exception e)
            {
                string message = "Ошибка!:" + e.Message;
                View.Message = message;
            }
        }

        public void LoadConsultations()
        {
            try
            {
                if (this.Patient == null || this.Patient.PatientId == 0)
                {
                    return;
                }

                int patientId = this.Patient.PatientId;
                var consultations = ConsultationDataAccess.GetConsultationsByPatientId(patientId);
                this.View.Consultations = consultations;
            }
            catch (Exception e)
            {
                string message = "Ошибка при загрузке консультации для пациента!\n" + e.Message;
                View.Message = message;
            }
        }

        public void LoadDiagnoses()
        {
            try
            {
                if (this.Patient == null || this.Patient.PatientId == 0)
                {
                    return;
                }

                int patientId = this.Patient.PatientId;
                var diagnoses = DiagnosesDataAccess.GetDiagnosesByPatientId(patientId);
                this.View.Diagnosis = diagnoses;
            }
            catch (Exception e)
            {
                string message = "Ошибка при загрузке диагнозов для пациента!\n" + e.Message;
                View.Message = message;
            }
        }

    }
}
