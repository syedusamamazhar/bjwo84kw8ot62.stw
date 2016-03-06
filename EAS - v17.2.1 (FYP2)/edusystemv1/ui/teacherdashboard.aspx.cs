using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class teacherdashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        int count;

        protected void Page_Load(object sender, EventArgs e)
        {
            int sid = int.Parse(Session["staffid"].ToString());
            SqlCommand cmd_1 = new SqlCommand("select COUNT(a.id) as Total, c.class_name from assignments a, staff s, class c where a.staff_id = s.staff_id and s.staff_type = 'teacher' and c.class_id = a.class_id and a.staff_id = " + sid + " group by c.class_name", con);
            
            con.Open();

            SqlDataReader myReader = cmd_1.ExecuteReader();

            cht_Cat.Series[0].XValueMember = "class_name";
            cht_Cat.Series[0].YValueMembers = "Total";
            cht_Cat.Series[0].Label = "#VAL";
            cht_Cat.Series[0].LegendText = "#VALX";

            cht_Cat.DataSource = myReader;
            cht_Cat.DataBind();

            myReader.Close();

            //myReader = null;
            //myReader = cmd_2.ExecuteReader();

            //Chart1.Series[0].XValueMember = "subject_name";
            //Chart1.Series[0].YValueMembers = "Total";
            //Chart1.Series[0].Label = "#VAL";
            //Chart1.Series[0].LegendText = "#VALX";

            //Chart1.DataSource = myReader;
            //Chart1.DataBind();

            //myReader.Close();



            List<String> myNotice = new List<String>();
            int staff = int.Parse(Session["staffid"].ToString());
            //con.Open();
            SqlCommand cmd = new SqlCommand("SELECT TOP 6 * FROM teacher_notice where staffid=" + staff + " ORDER BY id DESC", con);
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