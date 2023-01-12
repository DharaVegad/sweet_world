using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class project_log : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    DataTable dt;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("home.aspx");
        }
          
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        string r = "select * from registration where username ='" + txtuser.Text + "' and password='" + txtpas.Text + "'";
        dt = con.get_data(r);
        if (dt.Rows.Count > 0)
        {
            Session["user"] = txtuser.Text;
            int a = int.Parse(dt.Rows[0]["id"].ToString());
            Session["user_id"] = a;
            Response.Redirect("home.aspx");
        }
        else
        {
            //lblmsg.Text = "username or password incorrect!l";
            Response.Redirect("project_log.aspx");
        }

        

        
    }
}