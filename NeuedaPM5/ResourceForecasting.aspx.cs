using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ResourceForecasting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //txtAddResource.Attributes.Add("onfocus", "this.select()");
        txtAddResource.Attributes["onmouseover"] = "javascript:this.focus();";
        txtAddResource.Attributes["onfocus"] = "javascript:this.select();";
    }

    protected void btnAddResource_Click(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source = DESKTOP-MUJI391\\SQLEXPRESS;  Initial Catalog = NeuedaProjects; Integrated Security=True");
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO ForecastDeliveryEstimates (Resource, Cost, Sell) VALUES (@p1, @p2, @p3)", SQLcon);
            cmd.Parameters.AddWithValue("@p1", txtAddResource.Text);
            cmd.Parameters.AddWithValue("@p2", 0);
            cmd.Parameters.AddWithValue("@p3", 0);
            //cmd.Parameters.AddWithValue("@p4", txtClient.Text);
            //cmd.Parameters.AddWithValue("@p5", txtDMClient.Text);
            //cmd.Parameters.AddWithValue("@p6", txtStartDate.Text);
            //cmd.Parameters.AddWithValue("@p7", txtEndDate.Text);
            //cmd.Parameters.AddWithValue("@p8", txtProjectDetails.Text);
            //cmd.Parameters.AddWithValue("@p9", txtProjectCode.Text);
            //cmd.Parameters.AddWithValue("@p10", txtProjectType.Text);


            try
            {
                SQLcon.Open();
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                SQLcon.Close();
                txtAddResource.Text = "New Resource Name...";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Information Saved');", true);
                gvDelEst.DataBind();
            }
        }
    }

}