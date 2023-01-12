using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class designer_page_project_log_des : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select id,name from u_reg where name = '" + txt_user.Text + "' and password = '" + txt_pass_des.Text + "' ";
        dt = con.get_data(s);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Login successfull')</script>");
            int a = int.Parse(dt.Rows[0][0].ToString());
            Session["des_id"] = a;
            Session["nm"] = txt_user.Text;
            Response.Redirect("~/user page/order1.aspx");
        }
        //else
        //{
        //    string r = "select id,name,password from u_reg where  name='" + txt_user.Text + "' and password='" + txt_pass_des.Text + "'";
        //    dt = con.get_data(r);
        //    if (dt.Rows.Count > 0)
        //    {
        //        Response.Write("<script>alert('Login successfull')</script>");
        //        int a = int.Parse(dt.Rows[0][0].ToString());
        //        Session["des_id"] = a;
        //        Session["nm"] = txt_user.Text;
        //        Response.Redirect("des_home.aspx");
        //    }
        else
        {
            Response.Write("<script>alert('Login fail')</script>");
            Response.Redirect("project_log_des.aspx");
        }
    }

}
