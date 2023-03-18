using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace finalHomeWork
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //建立和数据库之间的连接
            if (UserName.Text == ""||Telephone.Text==""||UserCode.Text==""||PassWord.Text==""||ConfirmPassWord.Text=="")
            {
                string scriptString = "alert('请输入完整的信息');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);
                return;
            }

            if (PassWord.Text!=ConfirmPassWord.Text){
                string scriptString = "alert('两次密码输入不一致，请重新填写');";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);
                return;
            }
            String radioString;
            if (RadioButton1.Checked)
            {
                radioString = "男";
            }
            else
            {
                radioString = "女";
            }
            String sql0 = "select userCode from [user]";
            String sql = "insert into [user](userCode,Name,Sex,Telephone,PassWord) values(" +UserCode.Text + "," + "'" +UserName.Text+ "'" + "," +"'"+ radioString + "'"+ "," + Telephone.Text + "," + PassWord.Text + ")";
            String str = WebConfigurationManager.ConnectionStrings["BookWebConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            
            
            Session["userCode"] = UserCode.Text;
            con.Open();
            
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlCommand cmd1 = new SqlCommand(sql0,con);
            SqlDataReader readcode = cmd1.ExecuteReader();
            while (readcode.Read())
            {
                for (int i = 0; i < readcode.FieldCount; i++)
                {
                    if (readcode[i].ToString() == UserCode.Text)
                    {
                        string scriptString3 = "alert('用户名重复');";
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString3, true);
                        readcode.Close();
                        return;
                    }
                }
            }
            readcode.Close();
            cmd.ExecuteNonQuery();
            
            con.Close();
            string scriptString2 = "alert('注册成功');";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString2, true);
            Response.Redirect("logWeb.aspx");
        }
    }
}