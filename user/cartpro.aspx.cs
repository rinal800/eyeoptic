using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class user_cartpro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        string s = WebConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection cn = new SqlConnection(s);
        cn.Open();
        SqlCommand cmd = new SqlCommand("select * from prod where id='" + id + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string unm = "user";
            string em = "user@ioptic.com";
            string pnm = dr[1].ToString();
            string pri = dr[4].ToString();
            string stat = "pending";
            dr.Close();
            SqlCommand cmd1 = new SqlCommand("insert into cart values('" + unm + "','" + em + "','" + pnm + "','" + pri + "','" + stat + "','')", cn);
            cmd1.ExecuteNonQuery();
            Response.Redirect("cart.aspx");
        }
    }
}