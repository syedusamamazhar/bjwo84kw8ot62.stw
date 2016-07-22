using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
namespace edusystemv1.ui
{
     public partial class login : System.Web.UI.Page
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
          string dbusername;
          string dbpassword;
          int type;
          int personid;
          string txtPassword;
          string txtUsername;
          string pass;
          protected void Page_Load(object sender, EventArgs e)
          {

          }

          protected void Unnamed_Click(object sender, EventArgs e)
          {
               
               //admin 1
               //teacher 2
               //finance 3
               //parent 4
               //student 5
               txtUsername = username.Text.ToString();
               txtPassword= password.Text.ToString();
               con.Open();
               SqlCommand cmd = new SqlCommand("select * from login where username='" + txtUsername + "'", con);
               SqlDataReader dr = cmd.ExecuteReader();
               dr.Read();
               if (dr.HasRows)
               {


                    personid = int.Parse(dr[1].ToString());
                    dbusername = dr[2].ToString();
                    dbpassword = dr[3].ToString();
                    type = int.Parse(dr[4].ToString());
                    if (dbusername.Equals(txtUsername) && dbpassword.Equals(txtPassword))
                      {
                           dr.Close();

                           if (type == 1)
                           {
                                SqlCommand cmd1 = new SqlCommand("select * from staff where staff_id="+personid+"  ", con);
                                SqlDataReader dr1 = cmd1.ExecuteReader();
                                dr1.Read();
                                if (dr1.HasRows)
                                {
                                     Session["staffid"] = dr1[0].ToString();
                                     Session["fname"] = dr1[1].ToString();
                                     Session["lname"] = dr1[2].ToString();
                                     Session["username"] = txtUsername;
                                     Session["password"] = txtPassword;
                                     Response.Redirect("admindashboard.aspx");
                                }
                                dr1.Close();
                                
                           }



                           if (type == 2)
                           {
                                SqlCommand cmd1 = new SqlCommand("select * from staff where staff_id=" + personid + "  ", con);
                                SqlDataReader dr1 = cmd1.ExecuteReader();
                                dr1.Read();
                                if (dr1.HasRows)
                                {
                                     Session["staffid"] = dr1[0].ToString();
                                     Session["fname"] = dr1[1].ToString();
                                     Session["lname"] = dr1[2].ToString();
                                     Session["username"] = txtUsername;
                                     Session["password"] = txtPassword;
                                     Response.Redirect("teacherdashboard.aspx");
                                }
                                dr1.Close();

                           }

                           if (type == 3)
                           {
                                SqlCommand cmd1 = new SqlCommand("select * from staff where staff_id=" + personid + "  ", con);
                                SqlDataReader dr1 = cmd1.ExecuteReader();
                                dr1.Read();
                                if (dr1.HasRows)
                                {
                                     Session["staffid"] = dr1[0].ToString();
                                     Session["fname"] = dr1[1].ToString();
                                     Session["lname"] = dr1[2].ToString();
                                     Session["username"] = txtUsername;
                                     Session["password"] = txtPassword;
                                     Response.Redirect("financedashboard.aspx");
                                }
                                dr1.Close();

                           }

                           if (type == 4)
                           {
                                SqlCommand cmd1 = new SqlCommand("select * from parent where parent_id='" + personid + "'", con);
                                SqlDataReader dr1 = cmd1.ExecuteReader();
                                dr1.Read();
                                if (dr1.HasRows)
                                {
                                     Session["parent_id"] = dr1[0].ToString();
                                          Session["parent_fname"] = dr1[1].ToString();
                                          Session["parent_lname"] = dr1[2].ToString();
                                          Session["username"] = txtUsername;
                                           Session["password"] = txtPassword;
                                            dbusername = dr1[5].ToString();
                                             dbpassword = dr1[6].ToString();
                                             Response.Redirect("selectstudent.aspx");
                                }
                                dr1.Close();

                           }
                           if (type == 5)
                           {
                                SqlCommand cmd1 = new SqlCommand("select * from student where stud_id='" + personid + "'", con);
                                SqlDataReader dr1 = cmd1.ExecuteReader();
                                dr1.Read();
                                if (dr1.HasRows)
                                {
                                     Session["studentid"] = dr1[0].ToString();
                                     Session["sfname"] = dr1[1].ToString();
                                     Session["slname"] = dr1[2].ToString();
                                     Session["username"] = txtUsername;
                                     Session["password"] = txtPassword;
                                     dbusername = dr1[8].ToString();
                                     dbpassword = dr1[9].ToString();
                                     Response.Redirect("studentdashboard.aspx");
                                }
                                dr1.Close();

                           }
                      }
                    dr.Close();
                    con.Close();
               }













               //if (staff.Checked)
               //{
               //    // int staffid = 1;

               //    // Session["staffid"] = staffid.ToString();


               //     txtUsername = username.Text.ToString();
               //     txtPassword = password.Text.ToString();
               //     Session["username"] = txtUsername;
               //     Session["password"] = txtPassword;
                    

               //     con.Open();
               //     SqlCommand cmd = new SqlCommand("select * from staff where staff_username='" + txtUsername + "'", con);
               //     SqlDataReader dr = cmd.ExecuteReader();
               //     dr.Read();
               //     if (dr.HasRows)
               //     {
               //         Session["staffid"] = dr[0].ToString();
               //         Session["fname"] = dr[1].ToString();
               //         Session["lname"] = dr[2].ToString();

               //          dbusername = dr[8].ToString();
               //          dbpassword = dr[9].ToString();
               //          type = dr[10].ToString();


               //     }
               //     if (dbusername.Equals(txtUsername) && dbpassword.Equals(txtPassword))
               //     {
               //          if (type.Equals("admin"))
               //          {
               //               Response.Redirect("admindashboard.aspx");
               //          }
               //          if (type.Equals("teacher"))
               //          {
               //               Response.Redirect("teacherdashboard.aspx");
               //          }

               //     }
               //     con.Close();
               //}
               
               //if(student.Checked) 
               //{
               //     //int studentid = 1;

               //    // Session["studentid"] = studentid.ToString();


               //     txtUsername = username.Text.ToString();
               //     txtPassword = password.Text.ToString();
               //     Session["username"] = txtUsername;
               //     Session["password"] = txtPassword;

               //     con.Open();
               //     SqlCommand cmd = new SqlCommand("select * from student where stud_username='" + txtUsername + "'", con);
               //     SqlDataReader dr = cmd.ExecuteReader();
               //     dr.Read();
               //     if (dr.HasRows)
               //     {
               //         Session["studentid"] = dr[0].ToString();
               //         Session["sfname"] = dr[1].ToString();
               //         Session["slname"] = dr[2].ToString();

               //          dbusername = dr[8].ToString();
               //          dbpassword = dr[9].ToString();
               //          type = "student";


               //     }
               //     if (dbusername.Equals(txtUsername) && dbpassword.Equals(txtPassword))
               //     {
               //          Response.Redirect("displayattendance.aspx");

               //     }
               //     con.Close();
               
               //}

               //if (parent.Checked)
               //{
               //    //int studentid = 1;

               //    // Session["studentid"] = studentid.ToString();


               //    txtUsername = username.Text.ToString();
               //    txtPassword = password.Text.ToString();
               //    Session["username"] = txtUsername;
               //    Session["password"] = txtPassword;

               //    con.Open();
               //    SqlCommand cmd = new SqlCommand("select * from parent where parent_username='" + txtUsername + "'", con);
               //    SqlDataReader dr = cmd.ExecuteReader();
               //    dr.Read();
               //    if (dr.HasRows)
               //    {
               //        Session["parent_id"] = dr[0].ToString();
               //        Session["parent_fname"] = dr[1].ToString();
               //        Session["parent_lname"] = dr[2].ToString();

               //        dbusername = dr[5].ToString();
               //        dbpassword = dr[6].ToString();
               //        type = "parent";


               //    }
               //    if (dbusername.Equals(txtUsername) && dbpassword.Equals(txtPassword))
               //    {
               //        Response.Redirect("tryparent.aspx");

               //    }
               //    con.Close();

               //}
          }


          protected void home(object sender, EventArgs e)
          {
               Response.Redirect("index.aspx");
          }

          protected void submit_Click(object sender, EventArgs e)
          {
                   
               con.Open();
               SqlCommand cmd = new SqlCommand("select * from staff where staff_email='" + email.Text + "'", con);
               SqlDataReader dr = cmd.ExecuteReader();
               dr.Read();
               if (dr.HasRows)
               {

                    pass = dr[9].ToString();

               }
               con.Close();
               if (pass == null)
               {
                    MessageBox.Show("Your email adress is not registered");
               }
               if(pass!=null)
             {
                    try
               {
                    MailMessage mail = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                    mail.From = new MailAddress("cbseas2014@gmail.com");
                    mail.To.Add(email.Text);
                    mail.Subject = "This is your Password";

                    mail.IsBodyHtml = true;
                    string htmlBody;

                    htmlBody = pass.ToString();

                    mail.Body = htmlBody;

                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("cbseas2014", "sumair1234.");
                    SmtpServer.EnableSsl = true;

                    SmtpServer.Send(mail);

               }
               catch (Exception ex)
               {
                    Console.WriteLine(ex.ToString());
               }
             }
          
          }
        
     }
}