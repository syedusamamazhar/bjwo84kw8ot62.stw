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
     public partial class addingstaff : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          staff st = new staff();
          string txtfirstname;
          string txtlastname;
          string txtgender;
          string txtphone;
          string txtemail;
          string txtdob;
          string txtaddress;
          string txtUsername;
          string txtPassword;
          string txttype;
          string txtsalary;
          string txtdateofjoining;

          function_class fc = new function_class();
         
          protected void Page_Load(object sender, EventArgs e)
          {


          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               st.address = address.Text.ToString();
               st.fname = fname.Text.ToString();
               st.lname = lname.Text.ToString();
               st.gender = gender.SelectedItem.Value.ToString();
               st.phone = phone.Text.ToString();
               st.email = email.Text.ToString();
               st.dateofbirth = dob.Text.ToString();
               st.username = username.Text.ToString();
               st.password = password.Text.ToString();
               st.type = type.SelectedItem.Value.ToString();
               st.salary = salary.Text.ToString();
               st.dateofjoining = doj.Text.ToString(); ;
               //byte b = FileUpload1.FileBytes;
               
               //fc.addingstaff(st);
               int count=0;
               con.Open();
               SqlCommand cmd2 = new SqlCommand("SELECT MAX(staff_id) FROM staff", con);
               SqlDataReader dr1 = cmd2.ExecuteReader();
               int value = 0;

               dr1.Read();
               if (dr1.HasRows)
               {
                    count = int.Parse(dr1[0].ToString());
               }
               dr1.Close();
                //admin 1
               //teacher 2
               //finance 3
               //parent 4
               //student 5
               count = count + 1;
               if (st.type == "admin")
               {
                    value = 1;

               }
               if (st.type == "teacher")
               {
                    value = 2;

               }
               if (st.type == "finance")
               {
                    value = 3;

               } 
               

               SqlCommand cmd1 = new SqlCommand("INSERT INTO login VALUES (" + count + ",'" + st.username + "','" + st.password + "',"+value+")", con);
               cmd1.ExecuteNonQuery();
               con.Close();





               con.Open();
               SqlCommand cmd = new SqlCommand(" INSERT INTO staff VALUES ('" + st.fname + "','" + st.lname + "','" + st.gender + "','" + st.phone + "','" + st.email + "','" + st.dateofbirth + "','" + st.address + "','" + st.username + "','" + st.password + "','" + st.type + "','" + st.salary + "','" + st.dateofjoining + "',@img)", con);
               cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
               cmd.ExecuteNonQuery();
               con.Close();



               Label1.Text = "You have successfully inserted a staff member";
               fname.Text = string.Empty;
               lname.Text = string.Empty;
               address.Text = string.Empty;
               phone.Text = string.Empty;
               email.Text = string.Empty;
               dob.Text = string.Empty;
               username.Text = string.Empty;
               password.Text = string.Empty;
               salary.Text = string.Empty;
               type.Text = string.Empty;
               doj.Text = string.Empty;
          }



          //protected void Calendar1_SelectionChanged(object sender,EventArgs e)
          //{
          //    dob.Text = Calendar1.TodaysDate.ToShortDateString();
          //}
     }
}