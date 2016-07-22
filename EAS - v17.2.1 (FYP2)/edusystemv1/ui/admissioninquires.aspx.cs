using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class admissioninquires : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             parent pr = new parent();
             students std = new students();
             Button linkChildDepartment = (Button)sender;
             RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
             Label sids = (Label)item.FindControl("id");
             Label stdfname = (Label)item.FindControl("fname");
             Label stdlname = (Label)item.FindControl("lname");
             Label gender = (Label)item.FindControl("gender");
             Label sphonne = (Label)item.FindControl("sphonne");
             Label stdemail = (Label)item.FindControl("stdemail");
             Label stddob = (Label)item.FindControl("stddob");
             Label stdaddress = (Label)item.FindControl("stdaddress");
             Label stdusername = (Label)item.FindControl("stdemail");
             Label stdpassword = (Label)item.FindControl("sphonne");
             Label stdclass = (Label)item.FindControl("stdclass");
             Label pfname = (Label)item.FindControl("gname");
             Label plname = (Label)item.FindControl("glname");
             Label pphone = (Label)item.FindControl("gphone");
             Label pemail = (Label)item.FindControl("gemail");
             Label pusername = (Label)item.FindControl("gemail");
             std.ids = int.Parse(sids.Text.ToString());
             std.fname = stdfname.Text.ToString();
             std.lname = stdlname.Text.ToString();
             std.gender = gender.Text.ToString();
             std.phone = sphonne.Text.ToString();
             std.email = stdemail.Text.ToString();
             std.dateofbirth = stddob.Text.ToString();
             std.address = stdaddress.Text.ToString();
             std.username = stdemail.Text.ToString();
             std.password = sphonne.Text.ToString();
             std.classid = int.Parse(stdclass.Text.ToString());
             //std.classid to find
             std.dateofAdmission = DateTime.Now.ToShortDateString();
             pr.Fname = pfname.Text.ToString();
             pr.Lname = plname.Text.ToString();
             pr.Phone = pphone.Text.ToString();
             pr.Email = pemail.Text.ToString();
             pr.Username = pusername.Text.ToString();
             pr.Password = pr.Phone;
             // to find std.parentid
             int count = 0;
             con.Open();
            int counter=0;
             SqlCommand cmd0 = new SqlCommand("insert into parent values ('" + pr.Fname + "','" + pr.Lname + "','" + pr.Phone + "','" + pr.Email + "','" + pr.Username + "','" + pr.Password + "')", con);               
             SqlCommand cmd = new SqlCommand("update admissionapply set admisionstatus = 'accepted' where id = " + int.Parse(sids.Text.ToString()) + ";", con);
             SqlCommand cmd4 = new SqlCommand("SELECT MAX(parent_id) FROM parent", con);
             SqlCommand cmd3 = new SqlCommand("select class_name from class where class_id ='"+std.classid+"'", con);
            
             cmd0.ExecuteNonQuery();
             SqlDataReader dr1 = cmd4.ExecuteReader();
             //int value = 0;
             //finding parent id
             dr1.Read();
             if (dr1.HasRows)
             {
                  count = int.Parse(dr1[0].ToString());
             }
             dr1.Close();
             std.parentid = int.Parse(count.ToString());


             SqlDataReader dr2 = cmd3.ExecuteReader();
             string value=null;
             //finding class id from classs name
             dr2.Read();
             if (dr2.HasRows)
             {
                  value = dr2[0].ToString();
             }
             dr2.Close();


             //SqlCommand cmd_2 = new SqlCommand("SELECT MAX(parent_id) FROM parent;", con);
             SqlDataReader dr5 = cmd4.ExecuteReader();
             dr5.Read();
             if (dr5.HasRows)
             {
                 counter = int.Parse(dr5[0].ToString());
             }
             dr5.Close();
             
            SqlCommand cmd5 = new SqlCommand("INSERT INTO login VALUES (" + counter + ",'" + pr.Username + "','" + pr.Password + "',4)", con);

            SqlCommand cmd2 = new SqlCommand(" INSERT INTO student VALUES ('" + std.fname + "','" + std.lname + "','" + std.gender + "','" + std.phone + "','" + std.email + "','" + std.dateofbirth + "','" + std.address + "','" + std.username + "','" + std.password + "','" + std.Class + "','" + std.dateofAdmission + "'," + std.classid + "," + std.parentid + ",'')", con);
            cmd2.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
             SqlCommand cmd_3 = new SqlCommand("SELECT MAX(stud_id) FROM student", con);
             SqlDataReader dr6 = cmd_3.ExecuteReader();
             dr6.Read();
             if (dr6.HasRows)
             {
                 count = int.Parse(dr6[0].ToString());
             }
             dr6.Close();
             
             SqlCommand cmd6 = new SqlCommand("INSERT INTO login VALUES (" + count + ",'" + std.username + "','" + std.password + "',5)", con);
               

             std.Class = value.ToString();
             
             //cmd1.ExecuteNonQuery();
             //cmd3.ExecuteNonQuery();
          //   cmd2.ExecuteNonQuery();
             cmd5.ExecuteNonQuery();
             cmd6.ExecuteNonQuery();
             con.Close();
             
             HtmlMeta meta = new HtmlMeta();
             meta.HttpEquiv = "Refresh";
             meta.Content = "5;url=admissioninquires.aspx";
             this.Page.Controls.Add(meta);

             acceptlabel.Text = "You have successfully approved the admission and sms has been sent to the respective parent";

             //Response.Redirect("admissioninquires.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             Button linkChildDepartment = (Button)sender;
             RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
             Label pids = (Label)item.FindControl("id");
             con.Open();
             SqlCommand cmd = new SqlCommand("update admissionapply set admisionstatus = 'rejected' where id = "+int.Parse(pids.Text.ToString())+";", con);
             cmd.ExecuteNonQuery();
             con.Close();

             HtmlMeta meta = new HtmlMeta();
             meta.HttpEquiv = "Refresh";
             meta.Content = "5;url=admissioninquires.aspx";
             this.Page.Controls.Add(meta);

             rejectlabel.Text = "You have successfully rejected the admission and sms has been sent to the respective parent";
             //Response.Redirect("admissioninquires.aspx");
        }

       
    }
}