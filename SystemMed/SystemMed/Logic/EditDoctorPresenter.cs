using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.View;
using SystemMed.Data;
using System.Data;
using System.Windows;
using SystemMed.Models;
namespace SystemMed.Logic
{
    public class EditDoctorPresenter
    {
        public Doctor Doctor { get; set; }
        public IEditDoctorView View { get; set; }

        public EditDoctorPresenter(IEditDoctorView view)
        {
            this.View = view;
        }

        public EditDoctorPresenter(IEditDoctorView view, int doctorId)
        {
            this.View = view;
            this.Load(doctorId);
        }

        protected void FillDoctor()
        {
            Doctor.Name = View.DoctorName;
            Doctor.Skils = View.Skills;
            Doctor.Phone = View.Phone;
            Doctor.Address = View.Address;
        }

        protected void FillView()
        {
            View.DoctorName = Doctor.Name;
            View.Skills = Doctor.Skils;
            View.Phone = Doctor.Phone;
            View.Address = Doctor.Address;
            View.DoctorId = Doctor.DoctorId;
        }

        protected bool IsValid()
        {
            string message = string.Empty;
            bool isValid = IsDataValid(out message);
            View.Message = message;

            return isValid;
        }

        protected bool IsDataValid(out string message)
        {
            message = string.Empty;
            bool isValid = true;


            if (String.IsNullOrEmpty(Doctor.Name))
            {
                message += String.Format("Поле '{0}' пусто!\n", "Имя");
                isValid = false;
            }

            return isValid;
        }

        public void Save()
        {
            
            this.FillDoctor();
            bool isValid = IsValid();
            if (isValid)
            {
                MessageBox.Show("Успешно");
                SaveModel(Doctor);
                FillView();
                
                
            }
        }

        private void SaveModel(Doctor model)
        {
            try
            {
                if (Doctor.DoctorId == 0)
                {
                    DoctorDataAccess.InsertDoctor(Doctor);
                }
                else
                {
                    DoctorDataAccess.UpdateDoctor(Doctor);
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
            var newDoctor = new Doctor();
            this.Doctor = newDoctor;
            this.FillView();
        }

        public void Load(int doctorId)
        {
            try
            {
                if (doctorId == 0)
                {
                    throw new ArgumentNullException("doctorId должен отличаться от 0!");
                }
                var doctor = DoctorDataAccess.GetDoctorById(doctorId);
                this.Doctor = doctor;
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
