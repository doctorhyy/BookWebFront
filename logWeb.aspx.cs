using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace finalHomeWork.css
{
    public partial class logWEb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userCode"] != null)
            {
                userCode.Text = Session["userCode"]+"";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (userCode.Text == "" || passWord.Text == "")
            {
                string scriptString = "alert('请输入完整的信息');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);
                return;
            }
            String sql = "select [PassWord] from [user] where usercode = " + userCode.Text;
            String sql1 = "select isManager from [user] where usercode = " + userCode.Text;
            String str = WebConfigurationManager.ConnectionStrings["BookWebConnectionString"].ConnectionString;
            String password;
            Boolean isManager;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            SqlCommand cmd = new SqlCommand(sql, con);
            password = (string)cmd.ExecuteScalar();
            isManager = (Boolean)cmd1.ExecuteScalar();
            con.Close();
            if(password!= passWord.Text){
                   string scriptString = "alert('密码输入不正确');";
                   Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);
                   return;
            }
            Session["userCode"] = userCode.Text;
            if(isManager!=true)
            Response.Redirect("index1.aspx");
            Response.Redirect("manage.aspx");
        }
    }
}