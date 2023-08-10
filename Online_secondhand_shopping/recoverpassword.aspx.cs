using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class recoverpassword : System.Web.UI.Page
{

    string GUIDvalue;
    int Uid;
    DataTable dt = new DataTable();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\signupdata.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["PasswordChanged"] = true;

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        GUIDvalue = Request.QueryString["id"];
        if(GUIDvalue != null)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from forgotpass where Id=@Id";
            cmd.Parameters.AddWithValue("@Id", GUIDvalue);
            SqlDataAdapter da = new SqlDataAdapter(cmd);          
            da.Fill(dt);
            if(dt.Rows.Count!=0){
                Uid = Convert.ToInt32(dt.Rows[0][1]);
            }
            else
            {
                lbl0.Text = "Link Expired";
                lbl0.ForeColor = System.Drawing.Color.Red;
            }
            
            
        }
        else
        {
            Response.Redirect("Default.aspx");
        }

        if (!IsPostBack)
        {
            if(dt.Rows.Count!=0)
            {
                txtConfirmPassword.Visible = true;
                txtPassword.Visible = true;
                lbl1.Visible = true;
                lbl2.Visible = true;   
                
            }
            else
            {
                txtConfirmPassword.Visible = false;
                txtPassword.Visible = false;
                lbl1.Visible = false;
                lbl2.Visible = false;
                btnchange.Visible = false;
                lbl0.Text = "Link Expired";
                lbl0.ForeColor=System.Drawing.Color.Red;
            }
        }
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        if(txtPassword.Text!="" && txtConfirmPassword.Text != "")
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update user_signup set password=@p where Uid=@Uid";
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Uid", Uid);
            cmd.ExecuteNonQuery();


            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "delete from forgotpass where Uid='" + Uid + "'";
            cmd2.ExecuteNonQuery();


            
            Response.Redirect("~/login_page.aspx");
            
        }
    }
}