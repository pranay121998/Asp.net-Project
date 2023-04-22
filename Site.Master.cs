using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace EmployeeWorkBook
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public bool isLogin = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable userData = (DataTable)Session["userId"] ?? null;

            if ( userData!=null && userData.Rows.Count > 0) {
                isLogin = true;
            }
        }

        public void Logout(object sender, EventArgs e) {
            Session.Remove("userId");
            Response.Redirect("/WebFroms/Users/LoginWebForm.aspx");        
        }
    }
}