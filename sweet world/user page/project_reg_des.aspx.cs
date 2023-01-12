using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class designer_page_project_reg_des : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        //String g;

        //if (RadioButton1.Checked == true)
        //{
        //    g = "Male";
        //}
        //else
        //{
        //    g = "female";
        //}

        string q = "insert into u_reg(name,password,contact_no,Email) values('" + txt_nm.Text + "','" + txt_pass.Text + "'," + txt_no.Text + ",'" + txt_mail.Text + "')";
        con.action(q);
        Session["des_log"] = txt_nm.Text;
        Response.Write("<script>alert('Registered successfully')</script>");
        Response.Redirect("project_log_des.aspx");

        
    }
}