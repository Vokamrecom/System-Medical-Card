using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SystemMed.Data;
namespace SystemMed.View
{
    public interface IEditUserView
    {
        int UserId { set; }
        string UserName { get; set; }
        string Password { get; set; }
        string ConfirmPassword { get; set; }

        string Message { set; }
    }
}