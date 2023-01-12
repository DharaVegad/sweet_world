using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class project_reg : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String g;

        if (RadioButton1.Checked == true)
        {
            g = "Male";
        }
        else
        {
            g = "female";
        }

        //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/") + "/image/" + FileUpload1.FileName);
        //string r = @"/image/" + FileUpload1.FileName;


        string q = "insert into registration(username,contact_no,email,password,gender,city) values('" + txtnm.Text + "'," + txtcono.Text + ",'" + txtemail.Text + "','" + txtpass.Text + "','" + g + "','"+txtcity.Text+"')";
        con.action(q);
        Response.Write("<script>alert('Registered successfully')</script>");
        Response.Redirect("project_log.aspx");

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}