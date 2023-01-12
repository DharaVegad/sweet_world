using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class designer_page_Master_home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["designer"] != null)
            lbl_user_name.Text = "Welcome " + Session["designer"].ToString();
    }

    protected void bt_logout_Click(object sender, EventArgs e)
    {
        if (Session["user_id"] != null)
        {
            Session.Abandon();
            Response.Redirect("project_log.aspx");
        }
        if (Session["des_id"] != null)
        {
            Session.Abandon();
            Response.Redirect("~/designer page/project_log_des.aspx");
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user page/recipe_list1.aspx");
    }
}
