using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class finance : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            displayname.Text = (Session["fname"]).ToString() + " " + (Session["lname"]).ToString();
            string sessionusername = Session["username"].ToString();////Read like this

            usernames.Text = sessionusername;
        }

        protected void Button1_Click()
        {
            Session["username"] = null;
            Session["password"] = null;
            Session["staffid"] = null;
            Session["fname"] = null;
            Session["lname"] = null;

            Response.Redirect("index.aspx");
        }
    }
}