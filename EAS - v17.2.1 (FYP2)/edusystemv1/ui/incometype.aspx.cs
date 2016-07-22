using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class incometype : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
       
        protected void Page_Load(object sender, EventArgs e)
        {
            int staffid = int.Parse(Session["staffid"].ToString());

        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(" INSERT INTO incometypes VALUES ('" + INCOMETYPE.Text.ToString() + "','" + incomedescription.Text.ToString() + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            incomedescription.Text = String.Empty;
            INCOMETYPE.Text = String.Empty;
        }
    }
}