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
    public partial class displaystudent : System.Web.UI.Page
    {
         SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
       
         students std = new students();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label sids = (Label)item.FindControl("sid");
            Label sfames = (Label)item.FindControl("sfame");
            Label slnames = (Label)item.FindControl("slname");
            Label ssexs = (Label)item.FindControl("ssex");
            Label sphones = (Label)item.FindControl("sphone");
            Label semails = (Label)item.FindControl("semail");
            Label sdobs = (Label)item.FindControl("sdob");
            Label saddresss = (Label)item.FindControl("saddress");
            Label susernames = (Label)item.FindControl("susername");
            Label spasswords = (Label)item.FindControl("spassword");
            Label sclasss = (Label)item.FindControl("sclass");
            Label sdoas = (Label)item.FindControl("sdoa");


                    con.Open();
               SqlCommand cmd = new SqlCommand("select * from class where class_name='" + sclasss.Text + "'", con);
               SqlDataReader dr = cmd.ExecuteReader();
               dr.Read();
               if (dr.HasRows)
               {


                    std.classid = int.Parse(dr[0].ToString());
                  

               }
               con.Close();


            std.ids = int.Parse(sids.Text);
            std.fname = sfames.Text;
            std.lname = slnames.Text;
            std.gender = ssexs.Text;
            std.phone = sphones.Text;
            std.email = semails.Text;
            std.dateofbirth = sdobs.Text;
            std.address = saddresss.Text;
            std.username = susernames.Text;
            std.password = spasswords.Text;
            std.dateofAdmission = sdoas.Text;
            Session["std"] = std;

            Response.Redirect(
                                "editstudent.aspx"
                                //?sid=" + sids.Text +
                                //"&sfame=" + sfames.Text +
                                //"&slname=" + slnames.Text +
                                //"&ssex=" + ssexs.Text +
                                //"&sphone=" + sphones.Text +
                                //"&semail=" + semails.Text +
                                //"&sdob=" + sdobs.Text +
                                //"&saddress=" + saddresss.Text +
                                //"&susername=" + susernames.Text +
                                //"&spassword=" + spasswords.Text +
                                //"&sclass=" + sclasss.Text +
                                //"&sdoa=" + sdoas.Text
                            );
        }
    }
}