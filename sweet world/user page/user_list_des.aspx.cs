using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class designer_page_user_list_des : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("user_content_des.aspx?name=" + e.CommandArgument.ToString());
        }
    }
}