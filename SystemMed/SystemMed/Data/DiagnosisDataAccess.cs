using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace SystemMed.Data
{
    public class DiagnosesDataAccess//bil diagnosis
    {
        public static IQueryable<Diagnosis> GetDiagnoses()
        {
            SystemMedContainer context = new SystemMedContainer();
            return context.Diagnoses;
        }

        public static IQueryable<Diagnosis> GetDiagnosesByPatientId(int patientId)
        {
            SystemMedContainer context = new SystemMedContainer();
            var diagnoses = context.Diagnoses.Include("Doctor").Where(d => d.PatientId == patientId);

            return diagnoses;
        }

        public static IQueryable<Diagnosis> GetDiagnosesByDoctorId(int doctorId)
        {
            SystemMedContainer context = new SystemMedContainer();
            var diagnoses = context.Diagnoses.Include("Patient").Where(d => d.DoctorId == doctorId);

            return diagnoses;
        }

        public static Diagnosis GetDiagnosisById(int diagnosisId)
        {
            SystemMedContainer context = new SystemMedContainer();
            var diagnosis = context.Diagnoses.Where(p => p.DiagnoseId == diagnosisId).FirstOrDefault();
            context.Detach(diagnosis);
            return diagnosis;
        }

        public static void InsertDiagnosis(Diagnosis diagnosis)
        {
            SystemMedContainer context = new SystemMedContainer();
            if (diagnosis.EntityState != EntityState.Detached)
            {
                context.ObjectStateManager.ChangeObjectState(diagnosis, EntityState.Added);
            }
            else
            {
                context.Diagnoses.AddObject(diagnosis);
            }
            context.SaveChanges();
        }

        public static void UpdateDiagnosis(Diagnosis diagnosis)
        {
            SystemMedContainer context = new SystemMedContainer();
            context.Diagnoses.AddObject(diagnosis);
            context.ObjectStateManager.ChangeObjectState(diagnosis, EntityState.Modified);
            context.SaveChanges();
        }

        public static void DeleteDiagnosis(Diagnosis diagnosis)
        {
            SystemMedContainer context = new SystemMedContainer();
            if (diagnosis.EntityState == EntityState.Detached)
            {
                context.Diagnoses.Attach(diagnosis);
            }
            context.Diagnoses.DeleteObject(diagnosis);
            context.SaveChanges();
        }

        public static void DeleteDiagnosisById(int diagnosisId)
        {
            SystemMedContainer context = new SystemMedContainer();
            var diagnosis = context.Diagnoses.Where(p => p.DiagnoseId == diagnosisId).FirstOrDefault();

            context.Diagnoses.DeleteObject(diagnosis);
            context.SaveChanges();
        }

    }
}
