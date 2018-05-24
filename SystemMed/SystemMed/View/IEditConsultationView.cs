using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.Data;
using MaterialDesignThemes.Wpf;

namespace SystemMed.View
{
    public interface IEditConsultationView
    {
        int ConsultationId { get; set; }
        DateTime ScheduleDate { get; set; }
        TimeSpan ScheduleTime { get; set; }
        string Reason { get; set; }
        string Notes { get; set; }
        string Conclusion { get; set; }

        int PatientId { get; set; }
        string PatientName { get; set; }
        string PatientNumber { get; set; }

        int DoctorId { get; set; }
        string DoctorName { get; set; }

        string Message { set; }

    }
}