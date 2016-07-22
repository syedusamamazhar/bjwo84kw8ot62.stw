using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace edusystemv1.database
{
     public class function_class
     {
          SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
         
          public void fillnoticeboard(staff_notice stn)
          {
               con.Open();

               SqlCommand cmd = new SqlCommand("insert into noticeboards values ('" + stn.Text1 + "');", con);
               cmd.ExecuteNonQuery();
               con.Close();
          }


          public void addsubjects(subject sb)
          {
               con.Open();
               SqlCommand cmd = new SqlCommand(" INSERT INTO subject VALUES ('" + sb.Subject_name + "','" + sb.Class_id + "')", con);
               cmd.ExecuteNonQuery();

               con.Close();
          }




          //public void addingstaff(staff st)
          //{
          //     con.Open();
          //     SqlCommand cmd = new SqlCommand(" INSERT INTO staff VALUES ('" + st.fname + "','" + st.lname + "','" + st.gender + "','" + st.phone + "','" + st.email + "','" + st.dateofbirth + "','" + st.address + "','" + st.username + "','" + st.password + "','" + st.type + "','" + st.salary + "','" + st.dateofjoining + "',@img)", con);
          //     cmd.Parameters.AddWithValue("@img", FileUpload1.FileBytes);
          //     cmd.ExecuteNonQuery();




          //     con.Close();
          //}




          public void addparent(parent pr, students std)
          {
               con.Open();

               SqlCommand cmd = new SqlCommand("insert into parent values ('" + pr.Fname + "','" + pr.Lname + "','" + pr.Phone + "','" + pr.Email + "','" + pr.Username + "','" + pr.Password +"')", con);
               cmd.ExecuteNonQuery();
               con.Close();
          }


          public void addclass(Class cs)
          {
               con.Open();

               SqlCommand cmd = new SqlCommand(" INSERT INTO class VALUES ('" + cs.Class_name + "','" + cs.Fee_monthly + "'," + cs.Teacherid + ")", con);
               cmd.ExecuteNonQuery();
               con.Close();

             

          }

          public void addteachertodolist(staff_notice stn)
          {
               con.Open();
             
               SqlCommand cmd = new SqlCommand("insert into teacher_notice values ('" + stn.Text1 + "'," + stn.Staffid + ")", con);
               cmd.ExecuteNonQuery();
               con.Close();
          }

          public void addstafftodolist(staff_notice stn)
          {
               con.Open();
             
               SqlCommand cmd = new SqlCommand("insert into staff_notice values ('" + stn.Text1 + "'," + stn.Staffid + ")", con);
               cmd.ExecuteNonQuery();
               con.Close();
          }

     }
}