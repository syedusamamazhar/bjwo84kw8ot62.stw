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
     public partial class addingstudent : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          SqlConnection con1 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
   
          students std = new students();
          Class cls = new Class();
          //string txtfirstname;
          //string txtlastname;
          //string txtgender;
          //string txtphone;
          //string txtemail;
          //string txtdob;
          //string txtaddress;
          //string txtUsername;
          //string txtPassword;

          int txtclassid;
          string txtadmission;
          string parentnames;
          string txtclassname;
          public void addstudent(students std)
          {
               int count = 0;
               con1.Open();
               SqlCommand cmd2 = new SqlCommand("SELECT MAX(stud_id) FROM student", con1);
               SqlDataReader dr1 = cmd2.ExecuteReader();


               dr1.Read();
               if (dr1.HasRows)
               {
                    count = int.Parse(dr1[0].ToString());
               }
               con1.Close();
               con.Open();
               count = count + 1;
               SqlCommand cmd1 = new SqlCommand("INSERT INTO login VALUES (" + count + ",'" + std.username + "','" + std.password + "',5)", con);
             
               cmd1.ExecuteNonQuery();
               con.Close();
          }
          protected void Page_Load(object sender, EventArgs e)
          {
               ////drop down code
               //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
               //classes.Items.Clear();

               //string selectSQL = "SELECT * FROM class";

               ////con.Open();
               //SqlCommand cmd = new SqlCommand(selectSQL, con);
               //SqlDataReader reader;

               //try
               //{

               //     ListItem newItem = new ListItem();
               //     newItem.Text = "class";
               //     newItem.Value = "0";
               //     classes.Items.Add(newItem);

               //     con.Open();
               //     reader = cmd.ExecuteReader();
               //    while (reader.Read())
               //     {
               //          newItem = new ListItem();
               //          classes.Text = reader["class_name"].ToString();
               //          classes. = reader["class_id"].ToString();
               //          //classes.Items.Add(newItem);
               //     }
               //     reader.Close();
               //}
               //catch (Exception err)
               //{
               //     //TODO
               //}
               //finally
               //{
               //     con.Close();
               //}




          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               std.address = address.Text.ToString();
               std.fname = fname.Text.ToString();
               std.lname = lname.Text.ToString();
               std.gender = gender.SelectedItem.Value.ToString();
               std.phone = phoneB.Text.ToString();
               std.email = emailaddress.Text.ToString();
               std.dateofbirth = dob.Text.ToString();
               std.username = username.Text.ToString();
               std.password = password.Text.ToString();
               std.classid = int.Parse(classes.SelectedItem.Value.ToString());
               std.parentid = int.Parse(DropDownList1.SelectedValue.ToString());
               std.dateofAdmission = doa.Text.ToString();
               std.Class = classes.SelectedItem.Text;
           //    std.pic = FileUpload1.FileBytes;
               //SqlCommand cmdparent = new SqlCommand("insert into parent values ('"+parentfirstname+"','"+parentlastname+"')");
               //  cmdparent.ExecuteNonQuery();
               addstudent(std);
               con.Open();
              // SqlCommand cmd = new SqlCommand(" INSERT INTO student VALUES ('" + std.fname + "','" + std.lname + "','" + std.gender + "','" + std.phone + "','" + std.email + "','" + std.dateofbirth + "','" + std.address + "','" + std.username + "','" + std.password + "','" + std.Class + "','" + std.dateofAdmission + "'," + std.classid + "," + int.Parse(DropDownList1.SelectedValue.ToString()) + ",@img)", con);
               SqlCommand cmd = new SqlCommand("INSERT INTO student VALUES ('" + std.fname + "','" + std.lname + "','" + std.gender + "','" + std.phone + "','" + std.email + "','" + std.dateofbirth + "','" + std.address + "','" + std.username + "','" + std.password + "','" + std.Class + "','" + std.dateofAdmission + "'," + std.classid + "," + std.parentid + ",@img)", con);
               cmd.Parameters.AddWithValue("@img", studentpic.FileBytes);
               cmd.ExecuteNonQuery();
               con.Close();
               Label1.Text = "You have successfully inserted a student";
               fname.Text = string.Empty;
               lname.Text = string.Empty;
               address.Text = string.Empty;
               phoneB.Text = string.Empty;
               emailaddress.Text = string.Empty;
               dob.Text = string.Empty;
               username.Text = string.Empty;
               password.Text = string.Empty;
               doa.Text = string.Empty;
          }

          
     }
}