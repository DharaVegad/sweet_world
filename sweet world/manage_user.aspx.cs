using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class manage_user : System.Web.UI.Page
{
    Connectivity1 con = new Connectivity1();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.BackImageUrl = "~/images/images(11).jpg";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}