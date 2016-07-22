using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class addassets : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(" INSERT INTO assets VALUES ('"+assetname.Text.ToString()+"','"+DESCRIPTION.Text.ToString()+"')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            assetname.Text = String.Empty;
            DESCRIPTION.Text = String.Empty;
        }
    }
}