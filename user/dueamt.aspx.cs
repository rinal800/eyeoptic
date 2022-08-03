using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class user_dueamt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int amt = 0;
        string s = WebConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(s);
        cn.Open();
        SqlCommand cmd2 = new SqlCommand("select sum(price) as tot from cart where stat='ok' and uname='user'", cn);
        SqlDataReader dr1 = cmd2.ExecuteReader();
        if (dr1.Read())
        {
            //amt = Convert.ToInt32(dr1[0].ToString());
            Label1.Text = "Total OutStanding Amount : " + dr1[0].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int amt = 0;
        string s = WebConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(s);
        cn.Open();
        SqlCommand cmd2 = new SqlCommand("select sum(price) as tot from cart where stat='ok' and uname='user'", cn);
        SqlDataReader dr1 = cmd2.ExecuteReader();
        if (dr1.Read())
        {
            amt = Convert.ToInt32(dr1[0].ToString());
          //  Label1.Text = "Total OutStanding Amount : " + dr1[0].ToString();
        }
        Response.Redirect("paymethod.aspx?amt=" + amt);
    }
}