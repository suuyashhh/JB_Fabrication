using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication1
{
    public partial class AnimalsName : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["userId"] == null)
            //{
            //    Response.Redirect("Login.aspx?type=AnimalName");
            //}
            //if (!IsPostBack)
            //{
            //    gridAnimal.DataSource = gvuser();
            //    gridAnimal.DataBind();
            //}
            //if (!IsPostBack)
            //{
            //    gridFeed.DataSource = gvfeed();
            //    gridFeed.DataBind();
            //}
        }

        //protected DataSet gvuser()
        //{
        //    con.Close();
        //    SqlCommand sql = new SqlCommand("select * from Fab_Users ", con);
        //    con.Open();
        //    DataSet ds = new DataSet();
        //    SqlDataAdapter adapter = new SqlDataAdapter(sql);
        //    adapter.Fill(ds);
        //    return ds;
        //}

        //protected DataSet gvfeed()
        //{
        //    con.Close();
        //    SqlCommand sql = new SqlCommand("select * from Fab_Users", con);
        //    con.Open();
        //    DataSet ds = new DataSet();
        //    SqlDataAdapter adapter = new SqlDataAdapter(sql);
        //    adapter.Fill(ds);
        //    return ds;
        //}

       

        protected void gridAnimal_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //gridAnimal.EditIndex = e.NewEditIndex;
            //gridAnimal.DataSource = gvuser();
            //gridAnimal.DataBind();
        }

        protected void gridAnimal_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //gridAnimal.EditIndex = -1;
            //gridAnimal.DataSource = gvuser();
            //gridAnimal.DataBind();
        }

        protected void gridAnimal_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //GridViewRow row = gridAnimal.Rows[e.RowIndex];
            //string name = (row.FindControl("txtname") as TextBox).Text;

            //con.Close();
            //SqlCommand cmd = new SqlCommand("update Fab_Users set User_name=@name, User_contact=@contact, User_pass=@pass,User_salary=@sal where User_id=@srno", con);
            //cmd.Parameters.AddWithValue("@name", name);
            //cmd.Parameters.AddWithValue("@contact", name);
            //cmd.Parameters.AddWithValue("@pass", name);
            //cmd.Parameters.AddWithValue("@sal", name);
            //cmd.Parameters.AddWithValue("@srno", gridAnimal.DataKeys[e.RowIndex].Value);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //gridAnimal.EditIndex = -1;
            //gridAnimal.DataSource = gvuser();
            //gridAnimal.DataBind();
        }

        protected void gridAnimal_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //con.Close();
            //SqlCommand sql = new SqlCommand("delete from Fab_Users where User_id='" + gridAnimal.DataKeys[e.RowIndex].Value + "' ", con);
            //con.Open();
            //sql.ExecuteNonQuery();
            //gridAnimal.EditIndex = -1;
            //gridAnimal.DataSource = gvuser();
            //gridAnimal.DataBind();
        }

        protected void btnSubmitFeed_Click(object sender, EventArgs e)
        {
            //con.Close();
            //SqlCommand cmd = new SqlCommand("insert into Fab_Users (User_name, User_advance, date) values (@name,@advc,@dt)", con);
            //cmd.Parameters.AddWithValue("@name", feedName.Text); 
            //cmd.Parameters.AddWithValue("@advc", feedName.Text); 
            //cmd.Parameters.AddWithValue("@dt", feedName.Text);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //gridFeed.DataSource = gvfeed();
            //gridFeed.DataBind();

            //feedName.Text = "";
            //this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Feed saved successfully','','success');", true);

        }

        protected void gridFeed_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //gridFeed.EditIndex = e.NewEditIndex;
            //gridFeed.DataSource = gvfeed();
            //gridFeed.DataBind();
        }

        protected void gridFeed_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //gridFeed.EditIndex = -1;
            //gridFeed.DataSource = gvfeed();
            //gridFeed.DataBind();
        }

        protected void gridFeed_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //GridViewRow row = gridFeed.Rows[e.RowIndex];
            //string name = (row.FindControl("txtname") as TextBox).Text;

            //con.Close();
            //SqlCommand cmd = new SqlCommand("update Fab_Users set User_advance=@adv,date=@dt where User_id=@srno", con);
            //cmd.Parameters.AddWithValue("@adv", txtadv.Text);
            //cmd.Parameters.AddWithValue("@dt", DateTime().Now);
            //cmd.Parameters.AddWithValue("@srno", gridFeed.DataKeys[e.RowIndex].Value);
            //con.Open();
            //cmd.ExecuteNonQuery();
            //gridFeed.EditIndex = -1;
            //gridFeed.DataSource = gvfeed();
            //gridFeed.DataBind();
        }

        protected void gridFeed_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //con.Close();
            //SqlCommand sql = new SqlCommand("delete from Fab_Users where User_id='" + gridFeed.DataKeys[e.RowIndex].Value + "' ", con);
            //con.Open();
            //sql.ExecuteNonQuery();
            //gridFeed.EditIndex = -1;
            //gridFeed.DataSource = gvfeed();
            //gridFeed.DataBind();
        }
    }
}
