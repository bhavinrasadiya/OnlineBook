using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineBook
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Submit(object sender, EventArgs e)
        {
            string name = txtBookName.Text;
            Response.Write("Hellloo" + name);

            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\irb\Desktop\Mini Project\Mini Project\Mini Project\OnlineBook\OnlineBook\App_Data\Library.mdf;Integrated Security=True");
            cn.Open();

            String q = "Insert into lend_book (book_name,total_pages,available_book,charge,publisher,edition,description,category)values (@book_name,@total_pages,@available_book,@charge,@publisher,@edition,@description,@category)";
            SqlCommand cmd = new SqlCommand(q, cn);

            cmd.Parameters.AddWithValue("@book_name", txtBookName.Text);
            cmd.Parameters.AddWithValue("@total_pages", txtTotalPages.Text);
            cmd.Parameters.AddWithValue("@available_book", txtAvailableBook.Text);
            cmd.Parameters.AddWithValue("@charge", txtCharge.Text); 
            cmd.Parameters.AddWithValue("@publisher", txtPublisher.Text);
            cmd.Parameters.AddWithValue("@edition", txtEdition.Text);
            cmd.Parameters.AddWithValue("@description", txtDescription.Text);
            
            cmd.Parameters.AddWithValue("@category", category.SelectedValue);
          

            // cmd.Parameters.AddWithValue("@available_book", avalible_book.SelectedValue);
            // cmd.Parameters.AddWithValue("@language", language.SelectedValue);
               
            cmd.ExecuteNonQuery();
       
                Label1.Text = "Record inserted Successfully";


            cn.Close();


        }

    }
}