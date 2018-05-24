using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
namespace SystemMed.Data
{
    public class DoctorDataAccess
    {
        public static IQueryable<Doctor> GetDoctors()
        {
            SystemMedContainer context = new SystemMedContainer();
            return context.Doctors;
        }

        public static Doctor GetDoctorById(int doctorId)
        {
            SystemMedContainer context = new SystemMedContainer();
            var doctor = context.Doctors.Where(p => p.DoctorId == doctorId).FirstOrDefault();
            if (doctor != null)
            {
                context.Detach(doctor);
            }
            return doctor;
        }

        public static void InsertDoctor(Doctor doctor)
        {
            SystemMedContainer context = new SystemMedContainer();
            if (doctor.EntityState != EntityState.Detached)
            {
                context.ObjectStateManager.ChangeObjectState(doctor, EntityState.Added);
            }
            else
            {
                context.Doctors.AddObject(doctor);
            }
            context.SaveChanges();
        }

        public static void UpdateDoctor(Doctor doctor)
        {
            SystemMedContainer context = new SystemMedContainer();
            context.Doctors.AddObject(doctor);
            context.ObjectStateManager.ChangeObjectState(doctor, EntityState.Modified);
            context.SaveChanges();
        }

        public static void DeleteDoctor(Doctor doctor)
        {
            SystemMedContainer context = new SystemMedContainer();
            if (doctor.EntityState == EntityState.Detached)
            {
                context.Doctors.Attach(doctor);
            }
            context.Doctors.DeleteObject(doctor);
            context.SaveChanges();
        }

        public static void DeleteDoctorById(int doctorId)
        {
            SystemMedContainer context = new SystemMedContainer();
            var doctor = context.Doctors.Where(p => p.DoctorId == doctorId).FirstOrDefault();

            context.Doctors.DeleteObject(doctor);
            context.SaveChanges();
        }
    }
}
