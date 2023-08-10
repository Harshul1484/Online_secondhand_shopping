using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class forgetpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\signupdata.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from user_signup where email=@email";
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count != 0)
        {
            string myGUID = Guid.NewGuid().ToString();
            int Uid = Convert.ToInt32(dt.Rows[0][0]);
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "Insert into forgotpass(Id,Uid,RequestDateTime) values('"+myGUID+"','"+Uid+"',GETDATE())";
            cmd2.ExecuteNonQuery();
            //Send link

            string toemailaddress = dt.Rows[0][3].ToString();
            string username = dt.Rows[0][1].ToString();
            string emailbody = "Hi ," + username + ",<br/>Click the link below to reset password<br/> http://localhost:50848/recoverpassword.aspx?id="+myGUID;
            MailMessage passrecmail = new MailMessage("zaahidvohra120@gmail.com", toemailaddress);
            passrecmail.Body = emailbody;
            passrecmail.IsBodyHtml= true;
            passrecmail.Subject = "Reset Password";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
            smtp.UseDefaultCredentials= false;
            smtp.Credentials = new NetworkCredential("thriftyfinds520@gmail.com", "cxxxrrxhpujtehaj");
            smtp.EnableSsl= true;
            smtp.Send(passrecmail);

            //send link end
            resetpassmsg_lbl.Text = "Link Sent - Check you email";
            resetpassmsg_lbl.ForeColor = System.Drawing.Color.Green;
            txtEmail.Text=string.Empty;
        }
        else
        {
            resetpassmsg_lbl.Text = "Email does not exist";
            resetpassmsg_lbl.ForeColor = System.Drawing.Color.Red;
            txtEmail.Text = string.Empty;
            txtEmail.Focus();
        }
    }
}