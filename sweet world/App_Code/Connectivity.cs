using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Xml.Linq;

/// <summary>
/// Summary description for Connectivity
/// </summary>
public class Connectivity1
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    SqlDataReader dr;
	public Connectivity1()
	{
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\dhara project\sweet_world\App_Data\dhara_db.mdf;Integrated Security=True");
        con.Open();
	}
    public void action(string q)
    {
        cmd = new SqlCommand(q, con);
        cmd.ExecuteNonQuery();
    }
    public DataTable get_data(string q)
    {
        da = new SqlDataAdapter(q, con);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}