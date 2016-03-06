using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class addmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into admissionapply values ('" + txtfname.Text + "','" + txtlname.Text + "','" + txtdob.Text + "','" + txtadress.Text + "','" + txtphone.Text + "','"+stdemail.Text+"','" + txtclass.Text + "','" + txtgender.Text + "','" + txtprevgrade.Text + "',' " + txtprevschool.Text + "','" + txtgname.Text + "','"+txtglname.Text+"','"+txtgemail.Text+"','" + txtgprofession.Text + "'," + txtgsalary.Text + ",'" + txtgnic.Text + "','" + txtgphone.Text + "','Pending')", con);
            cmd.ExecuteNonQuery();
            con.Close();

            Lable1.Text = "You have successfully submitted your admission form. <br /> You will soon recieve a SMS upon your approval or rejection.";

            txtfname.Text = string.Empty;
            txtlname.Text = string.Empty;
            txtdob.Text = string.Empty;
            txtadress.Text = string.Empty;
            txtphone.Text = string.Empty;
            txtprevgrade.Text = string.Empty;
            stdemail.Text = string.Empty;
            txtprevschool.Text = string.Empty;
            txtgname.Text = string.Empty;
            txtgprofession.Text = string.Empty;
            txtgsalary.Text = string.Empty;
            txtgnic.Text = string.Empty;
            txtgphone.Text = string.Empty;
            txtglname.Text = string.Empty;
            txtgemail.Text = string.Empty;
            
        }
    }
}