using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeWorkBook.Models.PL
{
    public class User_PL
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string PhoneNo { get; set; }
        public string Gender { get; set; }

        public string Dob { get; set; }
        public string EmpPass { get; set; }
        public int EmpId { get; set; }
    }
}