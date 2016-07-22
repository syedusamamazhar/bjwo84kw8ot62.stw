using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace edusystemv1.ui
{
     public partial class addingparent : System.Web.UI.Page
     {
          parent pr=new parent();
          students std = new students();
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

          function_class fc = new function_class();
                  //string txtparentfname;
          //string txtparentlname;
          //string txtparentphone;
          //string txtparentemail;
          //string txtparentusername;
          //string txtparentpassword;
          //int txtstudentid;
          protected void Page_Load(object sender, EventArgs e)
          {


          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               ////// student std = new student();
               ////txtparentfname = firstname.Text.ToString();
               ////txtparentlname = lastname.Text.ToString();
               ////txtparentphone = phone.Text.ToString();
               ////txtparentemail = email.Text.ToString();
               ////txtparentusername = username.Text.ToString();
               ////txtparentpassword = password.Text.ToString();
               ////txtstudentid = int.Parse(studentname.SelectedItem.Value);

               pr.Fname = firstname.Text.ToString();
               pr.Lname = lastname.Text.ToString();
               pr.Phone = phone.Text.ToString();
               pr.Email = email.Text.ToString();
               pr.Username = username.Text.ToString();
               pr.Password = password.Text.ToString();
               //std.ids = int.Parse(studentname.SelectedItem.Value);
               fc.addparent(pr, std);
               con.Open();
               
               int count = 0;
               SqlCommand cmd2 = new SqlCommand("SELECT MAX(parent_id) FROM parent;", con);
               SqlDataReader dr1 = cmd2.ExecuteReader();


               dr1.Read();
               if (dr1.HasRows)
               {
                    count = int.Parse(dr1[0].ToString());
               }
               dr1.Close();
               SqlCommand cmd1 = new SqlCommand("INSERT INTO login VALUES (" + count + ",'" + pr.Username + "','" + pr.Password + "',4)", con);
               cmd1.ExecuteNonQuery();
               con.Close();
               Label1.Text = "You have successfully inserted a parent";
               firstname.Text = string.Empty;
               lastname.Text = string.Empty;
               phone.Text = string.Empty;
               email.Text = string.Empty;
               username.Text = string.Empty;
               password.Text = string.Empty;

}
     }
}