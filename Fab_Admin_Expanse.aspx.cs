using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class Fab_Admin_Expanse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["userId"] == null)
            //    {
            //        Response.Redirect("Login.aspx?type=Feeds");
            //    }

           
        }

        //protected DateTime GetCurrentTime()
        //{
        //    DateTime serverTime = DateTime.Now;
        //    DateTime _localTime = TimeZoneInfo.ConvertTimeBySystemTimeZoneId(serverTime, TimeZoneInfo.Local.Id, "India Standard Time");
        //    return _localTime;
        //}

        protected void btnSubmitFeed_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("INSERT INTO Fab_Expanse (Exp_name,Exp_price,date,User_id) VALUES (@exname,@rs,@dt,@ui)", con);

            //cmd.Parameters.AddWithValue("@id", Session["userId"]);
            cmd.Parameters.AddWithValue("@exname", Ename.Text);
            cmd.Parameters.AddWithValue("@rs", Eprice.Text);
            cmd.Parameters.AddWithValue("@ui", 1);
            
            DateTime selectedDate;
            if (DateTime.TryParse(feedDate.Text, out selectedDate))
            {
                cmd.Parameters.AddWithValue("@dt", selectedDate);
            }
            else
            {
                Response.Write("<script>alert('Invalid date format!');</script>");
                return;
            }

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Eprice.Text = "";
            Ename.Text = "";
            feedDate.Text = "";
            this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Record saved successfully','','success');", true);
        }
    }
}
