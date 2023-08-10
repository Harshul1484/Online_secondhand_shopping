using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class signup_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\signupdata.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {      
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into user_signup(username,password,email,usertype) values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','user')";
        cmd.ExecuteNonQuery();
        txtUsername.Text = "";
        txtPassword.Text = "";
        txtEmail.Text = "";
        Response.Write("<script> alert('Registration Done'); </script>");
        con.Close();
        Response.Redirect("~/login_page.aspx");
        
        
    }
}