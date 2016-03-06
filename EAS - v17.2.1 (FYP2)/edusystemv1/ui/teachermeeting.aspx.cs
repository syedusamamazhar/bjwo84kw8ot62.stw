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
    public partial class teachermeeting : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label mids = (Label)item.FindControl("mid");
            //std.ids = int.Parse(mids.Text.ToString());

            con.Open();

            SqlCommand cmd = new SqlCommand("update meeting set status = 'Accepted', date = '"+DateTime.Now.ToShortDateString()+"', time = '"+DateTime.Now.ToShortTimeString()+"' where mid = " + int.Parse(mids.Text.ToString()) + ";", con);

            cmd.ExecuteNonQuery();
            con.Close();

            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;url=teachermeeting.aspx";
            this.Page.Controls.Add(meta);

            acceptlabel.Text = "You have successfully approved for the meeting";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label mids = (Label)item.FindControl("mid");
            //std.ids = int.Parse(mids.Text.ToString());

            con.Open();

            SqlCommand cmd = new SqlCommand("update meeting set status = 'Rejected', date = '" + DateTime.Now.ToShortDateString() + "', time = '" + DateTime.Now.ToShortTimeString() + "' where mid = " + int.Parse(mids.Text.ToString()) + ";", con);

            cmd.ExecuteNonQuery();
            con.Close();

            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;url=teachermeeting.aspx";
            this.Page.Controls.Add(meta);

            acceptlabel.Text = "You have successfully rejected for the meeting";
        }
    }
}