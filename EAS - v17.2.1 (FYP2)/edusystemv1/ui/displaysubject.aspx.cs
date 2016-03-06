using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using edusystemv1.database;
namespace edusystemv1.ui
{
    
    public partial class displaysubject : System.Web.UI.Page
    {
         subject sb = new subject();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label subids = (Label)item.FindControl("subid");
            Label subnames = (Label)item.FindControl("subname");
            Label classids = (Label)item.FindControl("classid");
             sb.subjectid=int.Parse(subids.Text);
             sb.Subject_name = subnames.Text;
        //     sb.Class_id = int.Parse(classids.Text);
             Session["sb"] = sb;
            Response.Redirect(
                                "editsubject.aspx"
                             //   ?subid=" + subids.Text +
                             //   "&subname=" + subnames.Text
                             //
                             );
        }
    }
}