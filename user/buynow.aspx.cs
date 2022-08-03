using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class user_buynow : System.Web.UI.Page
{
    int amt = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        string s = WebConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(s);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from cart where id='" + id + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string stat = "ok";
            string unm = dr[1].ToString();
            dr.Close();
            SqlCommand cmd1 = new SqlCommand("update cart set stat='" + stat + "' where id='" + id + "'", cn);
            cmd1.ExecuteNonQuery();
            Label1.Text = unm;
            //  Response.Redirect("cart.aspx");
        }
        SqlCommand cmd2 = new SqlCommand("select sum(price) as tot from cart where stat='ok' and uname='user'", cn);
        SqlDataReader dr1 = cmd2.ExecuteReader();
        if (dr1.Read())
        {
            amt = Convert.ToInt32(dr1[0].ToString());
            Label2.Text = "Total OutStanding Amount : " + dr1[0].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage message = new MailMessage();
            string unm = Page.User.Identity.Name.ToString();
            string em="";
            string s = WebConfigurationManager.ConnectionStrings["cs"].ToString();
            SqlConnection cn = new SqlConnection(s);
            SqlCommand cmd2 = new SqlCommand("select email from reg where uname='"+unm+"'", cn);
            SqlDataReader dr1 = cmd2.ExecuteReader();
            if (dr1.Read())
            {
                em = dr1[0].ToString();
            }
            message.To.Add(em);
            message.Subject = "trial";
            message.Body = Label2.Text;
            message.From = new MailAddress("eyeoptics20@gmail.com");
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("eyeoptics20@gmail.com","EYEOPTICS");
            for (int i = 1; i <= 100; i++)
            {
                client.Send(message);
                Label1.Text = "Mail Successfully send";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        Response.Redirect("paymethod.aspx?amt=" + amt);
    }
}