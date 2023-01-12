using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_page_custom_order : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string s = "select id from u_reg ";
        //dt = con.get_data(s);

        string q = "insert into order_r(name,cont_no,email,address,pin,date) values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + Calendar1.SelectedDate + "')";
        con.action(q);
        Response.Write("<script>alert('Ordered successfully')</script>");
        Response.Redirect("~/user page/successful.aspx");
    }
}