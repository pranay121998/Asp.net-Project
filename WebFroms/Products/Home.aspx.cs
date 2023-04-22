using EmployeeWorkBook.Models.CommonCls;
using EmployeeWorkBook.Models.DL;
using EmployeeWorkBook.Models.PL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeWorkBook.WebFroms.Products
{
    public partial class Home : System.Web.UI.Page
    {
        ApiResponse res;
        public ArraySegment<User_PL> ShowUser ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               
            }
            GetUserData();
        }

        public void GetUserData()
        {
            try
            {
                User_PL userData = new User_PL();
                res = new UserModel().GetUserData();
                if (res.successcode) {
                    //dynamic stt = JsonConvert.SerializeObject(res.data);
                    //List<User_PL> pl = JsonConvert.DeserializeObject<List<User_PL>>(stt);
                    GridView1.DataSource = res.data;
                    GridView1.DataBind();
                }
                else
                {
                    //
                }
            }
            catch (Exception ex)
            {

                throw;
            }
            
        }
    }
}