﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

                //    if (!IsPostBack)
                //    {
                //        BindFeedDropdown();
                //        //feedDate.Text = GetCurrentTime().ToString("yyyy-MM-dd");
                //        //DateTime dt = GetCurrentTime().Date;
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
            //con.Close();
            //SqlCommand cmd = new SqlCommand("INSERT INTO FabExpanse (Ename,price,Edate) VALUES (@exname,@rs,@dt)", con);

            ////cmd.Parameters.AddWithValue("@id", Session["userId"]);
            //cmd.Parameters.AddWithValue("@exname", Ename.Text);
            //cmd.Parameters.AddWithValue("@rs", Eprice.Text);

            //DateTime selectedDate;
            //if (DateTime.TryParse(feedDate.Text, out selectedDate))
            //{
            //    cmd.Parameters.AddWithValue("@dt", selectedDate);
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid date format!');</script>");
            //    return;
            //}

            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            //Eprice.Text = "";
            //Ename.Text = "";
            //feedDate.Text = "";
            //this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Record saved successfully','','success');", true);
        }
    }
}