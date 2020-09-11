using System;
using System.Data.SqlClient;

namespace OnlineBook
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Response.Redirect("main.aspx", true);
            }

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\irb\Desktop\Mini Project\Mini Project\Mini Project\OnlineBook\OnlineBook\App_Data\Library.mdf;Integrated Security=True");
                                                    
            try
            {
                string uid = txtEmail.Text;
                string pass = txtPassword.Text;
                con.Open();
                string qry = "select * from userDetail where email='" + uid + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("main.aspx", false);
                    Session["UserName"] = txtEmail.Text;
                }
                else
                {
                    Label1.Text = "Email id & Password is not correct Try again !";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
                txtEmail.Text = String.Empty;
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }
    }
}