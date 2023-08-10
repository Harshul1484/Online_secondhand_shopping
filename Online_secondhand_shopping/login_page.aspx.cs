using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\signupdata.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PasswordChanged"] != null && (bool)Session["PasswordChanged"])
        {
            // Display an alert using JavaScript.
            Response.Write("<script> alert('Password changed successfully') </script>");

            // Reset the session variable to avoid showing the alert on subsequent page loads.
            Session["PasswordChanged"] = false;
        }

            if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        
        //cookie fetch

        if(!IsPostBack)
        {
            if (Request.Cookies["uname"]!=null && Request.Cookies["upass"] != null)
            {
                txtUsername.Text = Request.Cookies["uname"].Value;
                txtPassword.Text = Request.Cookies["upass"].Value;
                //default value of checkbox
                CheckBox1.Checked = true;
            }
        }
    }

        protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from user_signup where username=@username and password=@pwd";
        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
        cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count != 0)
        {
            if(CheckBox1.Checked)
            {
                Response.Cookies["uname"].Value = txtUsername.Text;
                Response.Cookies["upass"].Value = txtPassword.Text;
                //expire cookie in 10 days
                Response.Cookies["uname"].Expires = DateTime.Now.AddDays(10);
                Response.Cookies["upass"].Expires = DateTime.Now.AddDays(10);
            }
            else
            {
                //dont save details -1 means 0 days
                Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["upass"].Expires = DateTime.Now.AddDays(-1);
            }
            string utype = dt.Rows[0][4].ToString().Trim();
            if (utype == "user")
            {
                Session["Username"] = txtUsername.Text;
                Response.Redirect("~/user_homepage.aspx");
            }
            if (utype == "Admin")
            {
                Session["Username"] = txtUsername.Text;
                Response.Redirect("~/Admin_page.aspx");
            }
        }
        else
        {
            error_mess01.Text = "Incorrect credentials";
        }
    }
}