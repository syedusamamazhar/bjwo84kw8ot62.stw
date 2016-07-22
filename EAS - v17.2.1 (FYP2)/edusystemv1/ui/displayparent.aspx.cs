using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class displayparent : System.Web.UI.Page
    {
         parent pr = new parent();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label pids = (Label)item.FindControl("pid");
            Label pfames = (Label)item.FindControl("pfame");
            Label plnames = (Label)item.FindControl("plname");
            Label pphones = (Label)item.FindControl("pphone");
            Label pemails = (Label)item.FindControl("pemail");
            Label pusernames = (Label)item.FindControl("pusername");
            Label ppasswords = (Label)item.FindControl("ppassword");
            pr.parentid = int.Parse(pids.Text);
            pr.Fname = pfames.Text;
            pr.Lname = plnames.Text;
            pr.Phone = pphones.Text;
            pr.Email = pemails.Text;
            pr.Username = pusernames.Text;
            pr.Password = ppasswords.Text;
            Session["pr"] = pr;
            Response.Redirect(
                                "editparent.aspx"
                                //?pid=" + pids.Text +
                                //"&pfame=" + pfames.Text +
                                //"&plname=" + plnames.Text +
                                //"&pphone=" + pphones.Text +
                                //"&pemail=" + pemails.Text +
                                //"&pusername=" + pusernames.Text +
                                //"&ppassword=" + ppasswords.Text
                            );
            
        }
    }
}