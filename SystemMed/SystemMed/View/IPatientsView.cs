using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.Data;

namespace SystemMed.View
{
    public interface IPatientsView
    {
        IEnumerable<Patient> Patients { set; }
        string Message { set; }
    }
}