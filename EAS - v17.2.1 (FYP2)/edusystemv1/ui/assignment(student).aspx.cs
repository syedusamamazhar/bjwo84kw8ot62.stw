using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class assignment_student_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label subids = (Label)item.FindControl("subid");
            int subjectid = int.Parse(subids.Text);

            Response.Redirect("viewassignments.aspx?subid=" + subids.Text );
        }
    }
}