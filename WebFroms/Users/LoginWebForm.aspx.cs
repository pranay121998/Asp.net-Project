using EmployeeWorkBook.Models.CommonCls;
using EmployeeWorkBook.Models.DL;
using EmployeeWorkBook.Models.PL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWorkBook.WebFroms.Users
{
    public partial class LoginWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSubmit(object sender, EventArgs e)
        {
            User_PL userObj = new User_PL();

         
            string eMail = txtEmail.Text;
            string pass = textPassword.Text;
    

          
            userObj.Email = eMail;
            userObj.EmpPass = pass;
          

            ApiResponse res = new UserModel().GetUserData(userObj);
            if (res.successcode)
            {
                //this.ClientScript.RegisterStartupScript(this.GetType(), "Success", "alert('" + res.msg.Replace("'","") + "')", true);

                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('User Logged In!', '" + res.msg.Replace("'", "") + "', 'success');", true);
                Session["userId"] = res.data;
                Response.Redirect("/WebFroms/Products/Home.aspx");
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Invalid Credintials!', '" + res.msg.Replace("'", "") + "', 'error');", true);

                //this.ClientScript.RegisterStartupScript(this.GetType(), "Failed", "alert('" + res.msg.Replace("'","") + "')", true);
            }
        }
    }
}