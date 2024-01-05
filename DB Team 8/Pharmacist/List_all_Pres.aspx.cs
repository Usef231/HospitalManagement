﻿using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lilo
{
    public partial class List_all_Pres : System.Web.UI.Page
    {
        protected void BackButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("PharmacistHomePage.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            Name.Text = SharedObjects.Pharmacist_User.Name;
            ID.Text = SharedObjects.Pharmacist_User.ID;

            //// Clear the GridView and error message -- no longer needed 3shan mfeesh re submition yo3tabr
            //gridViewPrescriptions.DataSource = null;
            //gridViewPrescriptions.DataBind();
            //Error_Message.Text = "";

            // Get the mysql string from configuration
            SqlConnection mysql = new SqlConnection("server=USEFS-LAPTOP\\MSSQLSERVER3;database=proj11;uid=sa;pwd=123");

            // Create a SqlConnection using the retrieved mysql string
            using (mysql)
            {
                mysql.Open();

                // Create a SqlCommand to retrieve all data from the CheckPres view
                using (SqlCommand command = new SqlCommand("SELECT * FROM AdminViewPresPerDocAndPatient", mysql))
                {
                    // Execute the SELECT statement
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            // Bind the GridView with the retrieved data
                            gridViewPrescriptions.DataSource = reader;
                            gridViewPrescriptions.DataBind();
                        }
                        else
                        {
                            // Display an error message
                            Error_Message.Text = "No prescriptions found.";
                            Error_Message.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
        }
    }
}