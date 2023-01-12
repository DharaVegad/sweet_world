using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class designer_page_des_location : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        string a = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/image/"+a));
        string img = "~/image/" + a.ToString();
       // p = "~/image/" + img;

        //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/") + "designer page/desImage/" + FileUpload1.FileName);
        //string r = @"designer page/desImage/" + FileUpload1.FileName;

        string q = "insert into des_location(photo,name,address,pincode,city,country) values('" + img + "','" + TxtName.Text + "','" + TxtAdd.Text + "'," + Txtpin.Text + ",'" + Txtcity.Text + "','" + TxtCountry.Text + "')";
        con.action(q);
        Response.Write("<script>alert('inserted successfully')</script>");
        Response.Redirect("~/admin project/location_list.aspx");
     
    }
}