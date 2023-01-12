using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class message_user : System.Web.UI.Page
{
    //Conectivity1 con = new Conectivity1();
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    SqlCommand cmd;
    DataTable dt;
    SqlDataAdapter da;
    SqlDataReader dr;

    string showMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

                //code for delete message--------------------------------------------------------------
        string delmsg = Request.QueryString["delmsg"];
        if (delmsg != null)
        {
            string d = "delete from messages where msg_id = '"+delmsg+"' ";
            cmd = new SqlCommand(d,con);
            cmd.ExecuteNonQuery();
        }

        //code for show full message----------------------------------------------------------
        string showMsg = Request.QueryString["msgshow"];
        if (showMsg != null)
        {

            if (Session["user_id"] != null)
            {

                //string sMsg = "select msg_dt, title, message from messages where msg_id = '"+showMsg+"' ";
                string sMsg = "select messages.dsgr_id, messages.title, messages.message, des_list.name from messages inner join des_list on messages.dsgr_id = des_list.id where msg_id='" + showMsg + "'";
                cmd = new SqlCommand(sMsg, con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    msg_title.Text = dr["title"].ToString();
                    msg_txt.Text = dr["message"].ToString();
                    dsgr_nm.Text = dr["name"].ToString();
                }
            }
            if (Session["des_id"] != null)
            {
                string sMsg = "select messages.user_id, messages.title, messages.message, registration.username from messages inner join registration on messages.user_id = registration.id where msg_id='" + showMsg + "'";
                cmd = new SqlCommand(sMsg, con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    msg_title.Text = dr["title"].ToString();
                    msg_txt.Text = dr["message"].ToString();
                    usr_nm.Text = dr["username"].ToString();
                }
            }
        }

        myInbox();


            //code for outbox-------------------------------------------------------------------------------------------------------
        if(Session["des_id"]!=null)
        {

            //int x = 0;
            //if (Convert.ToInt16(Session["msg"]) > 0)
            //    Response.Write("<script>alert('Your message has been sent successfuly!');</script>");


                //int i = Convert.ToInt16(Session["user_id"]);

                string outmsg = "select msg_id, msg_dt, title,type from messages where dsgr_id = '" + Convert.ToInt16(Session["des_id"]) + "' and type='1' order by msg_id desc ";
                cmd = new SqlCommand(outmsg, con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                out_repeat.DataSource = dt;
                out_repeat.DataBind();

            }

        if (Session["user_id"] != null)
        {
            //int x = 0;
            //if (Convert.ToInt16(Session["msg"]) > 0)
            //    Response.Write("<script>alert('Your message has been sent successfuly!');</script>");


            //int i = Convert.ToInt16(Session["user_id"]);

            string outmsg = "select msg_id, msg_dt, title from messages where user_id = '" + Convert.ToInt16(Session["user_id"]) + "' and type='2' order by msg_id desc ";
            cmd = new SqlCommand(outmsg, con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            out_repeat.DataSource = dt;
            out_repeat.DataBind();
        }
        con.Close();
    }


    public void myInbox()
    {
        con.Close();
        con.Open();

        if (Session["user_id"] != null)
        {
            int i = Convert.ToInt16(Session["user_id"]);

            string inmsg = "select msg_id, msg_dt, title from messages where user_id = '" + Convert.ToInt16(Session["user_id"]) + "' and type=1 order by msg_id desc ";
            cmd = new SqlCommand(inmsg, con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            in_repeater.DataSource = dt;
            in_repeater.DataBind();
        }
        if (Session["des_id"] != null)
        {
            int i = Convert.ToInt16(Session["des_id"]);

            string inmsg = "select msg_id, msg_dt, title from messages where dsgr_id = '" + Convert.ToInt16(Session["des_id"]) + "' and type='2' order by msg_id desc ";
            cmd = new SqlCommand(inmsg, con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            in_repeater.DataSource = dt;
            in_repeater.DataBind();
        }
        con.Close();
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        if (Session["user_id"] != null)
        {
            if (txt_msg.Text == null || txt_title.Text == null || DropDownList1.SelectedItem.Text == "--select--")
            {
                lbl_msg.Text = "Fields are empty!";
            }
            else
            {

                string q = "insert into messages(user_id,dsgr_id,msg_dt,title,message,type) values('" + Convert.ToInt16(Session["user_id"]) + "', (select Id from des_list where name = '" + DropDownList1.SelectedItem + "'), '" + DateTime.Now.ToString("D") + "', '" + txt_title.Text + "', '" + txt_msg.Text + "', '2')";
                cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();

                int x = 1;
                Session["msg"] = x;
                Response.Write("<script>alert('Your message has been sent successfuly!');</script>");
                Response.Redirect("message_user.aspx");
            }
            
        }

        //for designer
        if (Session["des_id"] != null)
        {
            string q = "insert into messages(user_id,dsgr_id,msg_dt,title,message,type) values((select Id from registration where username = '" + DropDownList2.SelectedItem + "'),'" + Convert.ToInt16(Session["des_id"]) + "', '" + DateTime.Now.ToString("D") + "', '" + txt_title.Text + "', '" + txt_msg.Text + "' , '1')";
            cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();

            int x = 1;
            Session["msg"] = x;
            Response.Redirect("message_user.aspx");
        }

        con.Close();
        
    }

    protected void view_msg_click(object sender, EventArgs e)
    {
        LinkButton viewbt = (sender as LinkButton);
        string v = viewbt.CommandArgument;
        Response.Redirect("message_user.aspx?msgshow=" + v);
    }

    protected void del_msg_click(object sender, EventArgs e)
    {
        LinkButton delbutton = (sender as LinkButton);
        string delquery = delbutton.CommandArgument;
        Response.Redirect("message_user.aspx?delmsg=" + delquery);
    }

    
}  