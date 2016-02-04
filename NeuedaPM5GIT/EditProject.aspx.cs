using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_OnClick(object sender, EventArgs e)
    {
        UpdateDetails();
        ResetForm();
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Information Updated');", true);

    }

    protected void btnReset_OnClick(object sender, EventArgs e)
    {
        ResetForm();
    }

    protected void ResetForm()
    {
        
        txtDMNeueda.Text = "";
        txtClient.Text = "";
        txtStartDate.Text = "";
        txtEndDate.Text = "";
        txtProjectDetails.Text = "";
        txtProjectCode.Text = "";
        txtProjectType.Text = "";
    }

    protected void UpdateDetails()
    {
        SqlConnection SQLcon = new SqlConnection("Data Source = DESKTOP-MUJI391\\SQLEXPRESS;  Initial Catalog = NeuedaProjects; Integrated Security=True");
        {
            SqlCommand cmd = new SqlCommand("UPDATE ProjectInformation SET Proj_Name = @p2, Proj_DM_Neueda = @p3, Proj_Client = @p4, Proj_DM_Client = @p5, Proj_Start = @p6, Proj_End = @p7, Proj_Details = @p8, Proj_Code = @p9, Proj_Type = @p10 WHERE Proj_Ref = @p1", SQLcon);
            cmd.Parameters.AddWithValue("@p1", ddProjectRef.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p2", txtProjectName.Text);
            cmd.Parameters.AddWithValue("@p3", ddDMNeueda.Text);
            cmd.Parameters.AddWithValue("@p4", txtClient.Text);
            cmd.Parameters.AddWithValue("@p5", txtDMClient.Text);
            cmd.Parameters.AddWithValue("@p6", txtStartDate.Text);
            cmd.Parameters.AddWithValue("@p7", txtEndDate.Text);
            cmd.Parameters.AddWithValue("@p8", txtProjectDetails.Text);
            cmd.Parameters.AddWithValue("@p9", txtProjectCode.Text);
            cmd.Parameters.AddWithValue("@p10", txtProjectType.Text);
            //To be added once login and timestamp implemented
            //Proj_Updated = @p11, Proj_Updated_By = @p12
            

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
            }
        }


    }

    protected void DisplayDetails()
    {

        SqlConnection SQLcon = new SqlConnection("Data Source = DESKTOP-MUJI391\\SQLEXPRESS;  Initial Catalog = NeuedaProjects; Integrated Security=True");
        {
            SqlCommand cmd = new SqlCommand("SELECT *FROM ProjectInformation WHERE Proj_Ref = '" + ddProjectRef.SelectedValue.ToString() + "'", SQLcon);
            SQLcon.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                try
                {

                    txtProjectName.Text = (reader["Proj_Name"].ToString());
                    txtDMNeueda.Text = (reader["Proj_DM_Neueda"].ToString());
                    txtClient.Text = (reader["Proj_Client"].ToString());
                    txtDMClient.Text = (reader["Proj_DM_Client"].ToString());
                    txtStartDate.Text = (reader["Proj_Start"].ToString());
                    txtEndDate.Text = (reader["Proj_End"].ToString());
                    txtProjectDetails.Text = (reader["Proj_Details"].ToString());
                    txtProjectCode.Text = (reader["Proj_Code"].ToString());
                    txtProjectType.Text = (reader["Proj_Type"].ToString());


                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }



            }
            SQLcon.Close();

        }
    }


    protected void ddProjectRef_SelectedIndexChanged(object sender, EventArgs e)
    {

        DisplayDetails();
    }
}
