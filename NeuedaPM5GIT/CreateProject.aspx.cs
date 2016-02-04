using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class CreateProject : Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void btnSubmit_OnClick(object sender, EventArgs e)
    {
        SaveDetails();
        txtRef_RC.Text = txtProjectRef.Text;

    }

    protected void btnReset_OnClick(object sender, EventArgs e)
    {
        ResetForm();
    }

    protected void SaveDetails()
    {

        SqlConnection SQLcon = new SqlConnection("Data Source = DESKTOP-MUJI391\\SQLEXPRESS;  Initial Catalog = NeuedaProjects; Integrated Security=True");
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO ProjectInformation (Proj_Ref, Proj_Name, Proj_DM_Neueda, Proj_Client, Proj_DM_Client, Proj_Start, Proj_End, Proj_Details, Proj_Code, Proj_Type) VALUES (@p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10)", SQLcon);
            cmd.Parameters.AddWithValue("@p1", txtProjectRef.Text);
            cmd.Parameters.AddWithValue("@p2", txtProjectName.Text);
            cmd.Parameters.AddWithValue("@p3", ddlDMNeueda.Text);
            cmd.Parameters.AddWithValue("@p4", txtClient.Text);
            cmd.Parameters.AddWithValue("@p5", txtDMClient.Text);
            cmd.Parameters.AddWithValue("@p6", txtStartDate.Text);
            cmd.Parameters.AddWithValue("@p7", txtEndDate.Text);
            cmd.Parameters.AddWithValue("@p8", txtProjectDetails.Text);
            cmd.Parameters.AddWithValue("@p9", txtProjectCode.Text);
            cmd.Parameters.AddWithValue("@p10", ddlProjectType.Text);
            //Updated and Updated_By still needs implemetnted


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
                ResetForm();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Information Saved');", true);
            }
        }


    }
    protected void ResetForm()
    {
        txtProjectRef.Text = "";
        txtProjectName.Text = "";
        //ddlDMNeueda.Text = "";
        txtClient.Text = "";
        txtDMClient.Text = "";
        txtStartDate.Text = "";
        txtEndDate.Text = "";
        txtProjectDetails.Text = "";
        txtProjectCode.Text = "";
        //ddlProjectType.Text = "";

        txtRef_RC.Text = "";
        txtEmp_RC.Text = "";
        txtBuy.Text = "";
        txtSell.Text = "";
    }

    protected void btnAddResource_Click(object sender, EventArgs e)
    {

        SqlConnection SQLcon = new SqlConnection("Data Source = DESKTOP-MUJI391\\SQLEXPRESS;  Initial Catalog = NeuedaProjects; Integrated Security=True");
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO ForecastDeliveryEstimates (Resource, Cost, Sell) VALUES (@p1, @p2, @p3)", SQLcon);
            //cmd.Parameters.AddWithValue("@p1", txtAddResource.Text);
            cmd.Parameters.AddWithValue("@p2", 0);
            cmd.Parameters.AddWithValue("@p3", 0);

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
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Information Saved');", true);
                gvDelEst.DataBind();
            }
        }
    }


    protected void btnSubmit_RC_OnClick(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source = DESKTOP-MUJI391\\SQLEXPRESS;  Initial Catalog = NeuedaProjects; Integrated Security=True");
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO RateCard(Proj_Ref, Emp_Name, Emp_Buy, Emp_Sell) VALUES (@p1, @p2, @p3, @p4)", SQLcon);
            cmd.Parameters.AddWithValue("@p1", txtRef_RC.Text);
            cmd.Parameters.AddWithValue("@p2", txtEmp_RC.Text);
            cmd.Parameters.AddWithValue("@p3", txtBuy.Text);
            cmd.Parameters.AddWithValue("@p4", txtSell.Text);

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
                ResetForm();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Information Saved');", true);
            }
        }
    }

    protected void btnReset_RC_OnClick(object sender, EventArgs e)
    {
        txtEmp_RC.Text = "";
        txtBuy.Text = "";
        txtSell.Text = "";
    }
}


