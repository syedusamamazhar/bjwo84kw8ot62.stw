using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class financedashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd_1 = new SqlCommand("select 'PAID' id, Count(s.std_id) 'Total' from student_fees s where s.status = 'PAID' union select 'PENDING' id, Count(s.std_id) 'Total' from student_fees s where s.status = 'PENDING'", con);

            con.Open();

            SqlDataReader myReader = cmd_1.ExecuteReader();

            Chart1.Series[0].XValueMember = "id";
            Chart1.Series[0].YValueMembers = "Total";
            Chart1.Series[0].Label = "#VAL";
            Chart1.Series[0].LegendText = "Students";

            Chart1.DataSource = myReader;
            Chart1.DataBind();

            myReader.Close();
            
            List<String> myNotice = new List<String>();
            int staffid = int.Parse(Session["staffid"].ToString());
            
            SqlCommand cmd = new SqlCommand("SELECT TOP 6 * FROM staff_notice where staffid=" + staffid + " ORDER BY id DESC", con);
            SqlDataReader dr = cmd.ExecuteReader();


            while (dr.Read())
            {
                if (dr.HasRows)
                {
                    myNotice.Add(dr[1].ToString());
                    count++;
                }
            }
            if (count >= 1)
            {
                notices1.Text = myNotice[0].ToString();
            }
            if (count >= 2)
            {
                notices1.Text = myNotice[0].ToString();
                notices2.Text = myNotice[1].ToString();

            }


            if (count >= 3)
            {
                notices1.Text = myNotice[0].ToString();
                notices2.Text = myNotice[1].ToString();
                notices3.Text = myNotice[2].ToString();
            }
            if (count >= 4)
            {
                notices1.Text = myNotice[0].ToString();
                notices2.Text = myNotice[1].ToString();
                notices3.Text = myNotice[2].ToString();
                notices4.Text = myNotice[3].ToString();

            }

            if (count >= 5)
            {
                notices1.Text = myNotice[0].ToString();
                notices2.Text = myNotice[1].ToString();
                notices3.Text = myNotice[2].ToString();
                notices4.Text = myNotice[3].ToString();
                notices5.Text = myNotice[4].ToString();

            }
            if (count >= 6)
            {
                notices1.Text = myNotice[0].ToString();
                notices2.Text = myNotice[1].ToString();
                notices3.Text = myNotice[2].ToString();
                notices4.Text = myNotice[3].ToString();
                notices5.Text = myNotice[4].ToString();
                notices6.Text = myNotice[5].ToString();

            }

            con.Close();

        }
    }
}