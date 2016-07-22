using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class displaytodolist_teacher_ : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label classids = (Label)item.FindControl("noticeid");
            Label classnames = (Label)item.FindControl("noticetext");
            Response.Redirect("edittodolist2(teacher).aspx?noticeid=" + classids.Text + "&noticetext=" + classnames.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label classids = (Label)item.FindControl("noticeid");
            int ids = int.Parse(classids.Text.ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from teacher_notice where id = " + ids + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("displaytodolist(teacher).aspx");
        }
    }
}