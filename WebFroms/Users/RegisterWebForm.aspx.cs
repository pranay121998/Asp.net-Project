using EmployeeWorkBook.Models.CommonCls;
using EmployeeWorkBook.Models.DL;
using EmployeeWorkBook.Models.PL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWorkBook.WebFroms
{
    public partial class RegisterWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   

        }

        protected void  Buttton1_Click(object sender, EventArgs e) {
            User_PL userObj = new User_PL();
           
            string fName = txtFirstName.Text;
            string lName = txtLastName.Text;
            string eMail = txtEmail.Text;
            string phoneNo = txtPhoneNumber.Text;
            string pass = textPassword.Text;
            string cpass = textCPassword.Text;
            string genderType = string.Empty;
            string dob = DOB.Text;
            if (Male.Checked) {
                genderType = "Male";
            }
            else
            {
                genderType = "Female";
            }

            userObj.FirstName = fName;
            userObj.LastName = lName;
            userObj.Email = eMail;
            userObj.Gender = genderType;
            userObj.Dob=dob;
            userObj.EmpPass = pass;
            userObj.PhoneNo= phoneNo;

            ApiResponse res = new UserModel().SaveUser(userObj);
            if (res.successcode) {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Record Not Saved!', '" + res.msg.Replace("'","")+ "', 'error')", true);
                Response.Redirect("/WebFroms/Users/LoginWebForm.aspx");
                //this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Update Record!', 'Update Record Successfully.', 'success');", true);
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Record Not Saved!', '" + res.msg.Replace("'", "") + "', 'error');", true);

                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Failed", "alert('" + res.msg.Replace("'","") + "')", true);
            }
        }

        protected void CutomGenderValidation(object source, ServerValidateEventArgs args){
            if (Male.Checked && Female.Checked) {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

                 
        }
    }
}