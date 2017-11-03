using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Signup : System.Web.UI.Page
{

    string userid = "admin";
    string password = "pass";
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Request.Cookies["authcookie"]!=null)
        {

            if(Request.Cookies["authcookie"]["userid"]==userid && Request.Cookies["authcookie"]["password"] == password)
            {
                Response.Redirect("~/Registration.aspx");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        String con = ConfigurationManager.ConnectionStrings["registration"].ConnectionString;
        SqlConnection cn = new SqlConnection(con);
        string query = string.Format("select * from Signupp where UserID=@UserId and Passcode=@Passcode");
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.Add("@UserID", SqlDbType.NVarChar).Value = tbuname.Text.ToString();
        cmd.Parameters.Add("@Passcode", SqlDbType.NVarChar).Value = tbpwd.Text.ToString();
        try
        {
            cn.Open();
            int obj = Convert.ToInt32(cmd.ExecuteScalar());
            if(obj>0)
            {


                if (tbuname.Text == userid && tbpwd.Text == password)
                {
                    if (tbcheck.Checked)
                    {
                        Response.Cookies["authcookie"]["userid"] = tbuname.Text;
                        Response.Cookies["authcookie"]["password"] = tbpwd.Text;
                        Response.Cookies["authcookie"].Expires = DateTime.Now.AddDays(2);
                    }
                    Response.Redirect("~/Registration.aspx");

                }

            }
            else
            {
                 
            }


        }
        catch (Exception ex)
        {
           
        }
        finally
        {
            cn.Close();

        }

       

    }
}