using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_page_cupcake_order : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String a;

        if (RadioButton1.Checked == true)
        {
            a = "Yes";
        }
        else
        {
            a = "No";
        }

        string s = "select id from u_reg ";
        dt = con.get_data(s);
        //if (dt.Rows.Count > 0)
        //{
        //    Response.Write("<script>alert('Login successfull')</script>");

        //    Response.Redirect("des_home.aspx");
        //}

        string q = "insert into cupcake(weight,color,theme,flavour,egg,msg) values('" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "','" + DropDownList4.SelectedItem + "','" + a + "','" + TextBox8.Text + "')";
        con.action(q);
        Response.Write("<script>alert('following the next steps....!!')</script>");
        Response.Redirect("custom_order.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Labelout.Text = "150 rps";
        }
        if (DropDownList1.SelectedIndex == 1)
        {
            Labelout.Text = "200 rps";
        }
        if (DropDownList1.SelectedIndex == 2)
        {
            Labelout.Text = "250 rps";
        }
        if (DropDownList1.SelectedIndex == 3)
        {
            Labelout.Text = "300 rps";
        }
        if (DropDownList1.SelectedIndex == 4)
        {
            Labelout.Text = "350 rps";
        }
        
    }
}