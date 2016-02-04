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
        txtProjectName.Text = "";
        txtDMNeueda.Text = "";
        txtClient.Text = "";
        txtDMClient.Text = "";
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
            SqlCommand cmd = new SqlCommand("UPDATE ProjectInformation SET Project_Name = @p2, Neueda_Delivery_Manager = @p3, Client = @p4, Client_Delivery_Manager = @p5, Start_Date = @p6, End_Date = @p7, Project_Details = @p8, Project_Code = @p9, Project_Type = @p10 WHERE Project_Reference = @p1", SQLcon);
            cmd.Parameters.AddWithValue("@p1", ddProjectRef.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@p2", txtProjectName.Text);
            cmd.Parameters.AddWithValue("@p3", txtDMNeueda.Text);
            cmd.Parameters.AddWithValue("@p4", txtClient.Text);
            cmd.Parameters.AddWithValue("@p5", txtDMClient.Text);
            cmd.Parameters.AddWithValue("@p6", txtStartDate.Text);
            cmd.Parameters.AddWithValue("@p7", txtEndDate.Text);
            cmd.Parameters.AddWithValue("@p8", txtProjectDetails.Text);
            cmd.Parameters.AddWithValue("@p9", txtProjectCode.Text);
            cmd.Parameters.AddWithValue("@p10", txtProjectType.Text);


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
            SqlCommand cmd = new SqlCommand("SELECT *FROM ProjectInformation WHERE Project_Reference = '" + ddProjectRef.SelectedValue.ToString() + "'", SQLcon);
            SQLcon.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                try
                {

                    txtProjectName.Text = (reader["Project_Name"].ToString());
                    txtDMNeueda.Text = (reader["Neueda_Delivery_Manager"].ToString());
                    txtClient.Text = (reader["Client"].ToString());
                    txtDMClient.Text = (reader["Client_Delivery_Manager"].ToString());
                    txtStartDate.Text = (reader["Start_Date"].ToString());
                    txtEndDate.Text = (reader["End_Date"].ToString());
                    txtProjectDetails.Text = (reader["Project_Details"].ToString());
                    txtProjectCode.Text = (reader["Project_Code"].ToString());
                    txtProjectType.Text = (reader["Project_Type"].ToString());


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