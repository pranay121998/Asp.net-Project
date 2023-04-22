using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeeWorkBook.Models.CommonCls
{
    public class ApiResponse
    {
        public object data { get; set; }
        public string msg { get; set; }
        public bool successcode { get; set; }
    }
}