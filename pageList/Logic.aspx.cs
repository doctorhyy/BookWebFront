using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace finalHomeWork.pageList
{
    public partial class Logic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userCode"] == null)
            {
                Label1.Text = "未登录";
            }
            else
            {
                String name;
                String sql = "select name from [user] where usercode = " + Session["userCode"];
                String str = WebConfigurationManager.ConnectionStrings["BookWebConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                name = (string)cmd.ExecuteScalar();
                con.Close();
                Label1.Text = name;
            }
        }
    }
}