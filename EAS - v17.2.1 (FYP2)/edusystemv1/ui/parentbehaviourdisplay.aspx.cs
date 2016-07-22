using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class parentbehaviourdisplay : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DAconnectionstring"].ToString());
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                int id = int.Parse(Session["studentid"].ToString());

                DataSet DS = GetData("select * from student_behaviours where student_id ="+id+"", null);

                Repeater1.DataSource = DS;
                Repeater1.DataBind();
            }
        }
        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.Text;

            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }

            DataSet DS = new DataSet();
            da.Fill(DS);
            return DS;
        }
    }
}