using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
     public partial class masterpager : System.Web.UI.MasterPage
     {
          protected void Page_Load(object sender, EventArgs e)
          {
               //label1.Text = "5678";
               Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
              displayname.Text = (Session["fname"]).ToString() + " " + (Session["lname"]).ToString();
               string sessionusername = Session["username"].ToString();////Read like this
 
               usernames.Text = sessionusername;
          }
         
          
          protected void logout(object sender, EventArgs e)
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