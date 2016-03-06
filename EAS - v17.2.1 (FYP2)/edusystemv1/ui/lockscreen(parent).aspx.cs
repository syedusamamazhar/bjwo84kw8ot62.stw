using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class lockscreen_parent_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string sam;
            string sessionpassword = Session["password"].ToString();////Read like this 
            sam = password.Text;
            if (sam == sessionpassword)
            {

                Response.Redirect("tryparent.aspx");
            }
        }
    }
}