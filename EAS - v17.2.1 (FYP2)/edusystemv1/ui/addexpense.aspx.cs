using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class addexpense : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(" INSERT INTO expenses VALUES (" + int.Parse(EXPENSEtype.SelectedValue.ToString()) + ",'" + int.Parse(AMOUNT.Text.ToString()) + "'," + dateofexpense.Text.ToString() + ",'" + DESCRIPTION.Text.ToString() + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            DESCRIPTION.Text = String.Empty;
            AMOUNT.Text = String.Empty;
            dateofexpense.Text = String.Empty;
        }
    }
}