using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using EmployeeWorkBook.Models.CommonCls.DataBaseConnection;
using EmployeeWorkBook.Models.CommonCls;
using EmployeeWorkBook.Models.PL;

namespace EmployeeWorkBook.Models.DL
{
    public class UserModel
    {
        private DBConnection DB = new DBConnection();

        SqlConnection con;

        ApiResponse res;
        public ApiResponse SaveUser(User_PL userData) {
            res = new ApiResponse();
            try
            {
                con = DB.GetConnectToDB();
                using (con)
                {
                    //SqlCommand cmd = new SqlCommand("insert into EmpData(FirstName,LastName,Email,Gender,Dob,EmpPass,PhoneNo) values " +
                    //    "('"+userData.FirstName+"','"+userData.LastName+"','"+userData.Email+"','"+userData.Gender+"','"+userData.Dob+"','"+userData.EmpPass+"','"+userData.PhoneNo+"')", con);
                    SqlCommand cmd = new SqlCommand("SaveUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Ind",1);
                    cmd.Parameters.AddWithValue("@FName", userData.FirstName);
                    cmd.Parameters.AddWithValue("@LName", userData.LastName);
                    cmd.Parameters.AddWithValue("@gMail",userData.Email);
                    cmd.Parameters.AddWithValue("@Gender",userData.Gender);
                    cmd.Parameters.AddWithValue("@dob",userData.Dob);
                    cmd.Parameters.AddWithValue("@pass",userData.EmpPass);
                    cmd.Parameters.AddWithValue("@PhoneNo",userData.PhoneNo);
                     
                    if (con.State == ConnectionState.Closed)
                        con.Open();
                    int n = cmd.ExecuteNonQuery();
                    con.Close();
                    if (n != 0)
                    {
                        res.data = "";
                        res.successcode = true;
                        res.msg = "Data Inserted Successfully.";
                    }
                    else
                    {
                        res.data = "";
                        res.successcode = false;
                        res.msg = "Data Not Saved";

                    }
                    //cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.Parameters.AddWithValue("@dkl",dsk)
                }
            }catch(Exception ex)
            {
                res.data = null;
                res.msg = ex.Message;
                res.successcode = false;
            }

            return res;

        }



        public ApiResponse GetUserData(User_PL userData)
        {
            res = new ApiResponse();
            try
            {
                con = DB.GetConnectToDB();
                using (con)
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from EmpData where Email='"+userData.Email+ "' and EmpPass='"+userData.EmpPass+"'", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt !=null && dt.Rows.Count>0)
                    {
                        res.data = dt;
                        res.successcode = true;
                        res.msg = "Data Access Successfully.";
                    }
                    else
                    {
                        res.data = "";
                        res.successcode = false;
                        res.msg = "Data Not Found.";

                    }
                    //cmd.CommandType = CommandType.StoredProcedure;
                    //cmd.Parameters.AddWithValue("@dkl",dsk)
                    con.Close();


                }
            }
            catch (Exception ex)
            {
                res.data = null;
                res.msg = ex.Message;
                res.successcode = false;
                con.Close();
            }

            return res;

        }

    }
}