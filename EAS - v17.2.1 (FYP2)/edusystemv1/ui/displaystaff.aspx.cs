using edusystemv1.database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class displaystaff : System.Web.UI.Page
    {
         staff st = new staff();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Button linkChildDepartment = (Button)sender;
            RepeaterItem item = (RepeaterItem)linkChildDepartment.NamingContainer;
            Label staffids = (Label)item.FindControl("staffid");
            Label stafffames = (Label)item.FindControl("stafffame");
            Label stafflnames = (Label)item.FindControl("stafflname");
            Label staffsexs = (Label)item.FindControl("staffsex");
            Label staffphones = (Label)item.FindControl("staffphone");
            Label staffemails = (Label)item.FindControl("staffemail");
            Label staffdobs = (Label)item.FindControl("staffdob");
            Label staffaddresss = (Label)item.FindControl("staffaddress");
            Label staffusernames = (Label)item.FindControl("staffusername");
            Label staffpasswords = (Label)item.FindControl("staffpassword");
            Label stafftypes = (Label)item.FindControl("stafftype");
            Label staffsalarys = (Label)item.FindControl("staffsalary");
            Label staffdojs = (Label)item.FindControl("staffdoj");
            st.Staffid = int.Parse(staffids.Text);
            st.fname = stafffames.Text;
            st.lname = stafflnames.Text;
            st.gender = staffsexs.Text;
            st.phone = staffphones.Text;
            st.email = staffemails.Text;
            st.dateofbirth = staffdobs.Text;
            st.address=staffaddresss.Text;
            st.username = staffusernames.Text;
            st.password = staffpasswords.Text;
            st.type = stafftypes.Text;
            st.salary = staffsalarys.Text;
            st.dateofjoining = staffdojs.Text;
            Session["st"] = st;
            Response.Redirect(
                                "editstaff.aspx"
                            //    ?staffid=" + staffids.Text +
                            //    "&stafffame=" + stafffames.Text +
                            //    "&stafflname=" + stafflnames.Text +
                            //    "&staffsex=" + staffsexs.Text +
                            //    "&staffphone=" + staffphones.Text +
                            //    "&staffemail=" + staffemails.Text +
                            //    "&staffdob=" + staffdobs.Text +
                            //    "&staffaddress=" + staffaddresss.Text +
                            //    "&staffusername=" + staffusernames.Text +
                            //    "&staffpassword=" + staffpasswords.Text +
                            //    "&stafftype=" + stafftypes.Text +
                            //    "&staffsalary=" + staffsalarys.Text +
                            //    "&staffdoj=" + staffdojs.Text
                            //
                            );
        }
    }
}