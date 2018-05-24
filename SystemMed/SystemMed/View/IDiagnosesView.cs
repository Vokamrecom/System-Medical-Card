using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.Data;
namespace SystemMed.View
{
    public interface IDiagnosesView
    {
        IEnumerable<Diagnosis> Diagnoses { set; }
        string Message { set; }

        string SubjectSearch { get; set; }
    }
}