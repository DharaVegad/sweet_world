using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_page_rexep_insert : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + a));
        string img = "~/images/" + a.ToString();

        string q="insert into recipe(photo,name) values('"+img+"','"+TextBox2.Text+"')";
        con.action(q);
        Response.Write("<script>alert('inserted successfully')</script>");
    }
}