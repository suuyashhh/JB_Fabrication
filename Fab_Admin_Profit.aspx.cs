using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace WebApplication1
{
    public partial class fill : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["userId"] == null)
            //{
            //    Response.Redirect("Login.aspx?type=Bill");
            //}
        }



        protected void BtnSubmitBill_Click(object sender, EventArgs e)
        {
            //con.Close();
            //SqlCommand cmd = new SqlCommand("insert into Fab_Profit (Pro_namev,Pro_price,date) values (@pname,@rs,@dt)", con);


            ////cmd.Parameters.AddWithValue("@id", Session["userId"]);
            //cmd.Parameters.AddWithValue("@pname", Cname.Text);
            //cmd.Parameters.AddWithValue("@rs", billPriceee.Text);


            //DateTime selectedDate;
            //if (DateTime.TryParse(billDateee.Text, out selectedDate))
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


            //billPriceee.Text = "";
            //billDateee.Text = "";
            //Cname.Text = "";
            //this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Record saved successfully','','success');", true);
        }
    }
}


