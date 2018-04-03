using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AGI
{
    public partial class FluxIMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // The Page is accessed for the first time. 
            if (!IsPostBack)
            {

                // Populate the GridView. 
                BindGridViewImsL1();


                // Populate the GridView. 
                BindGridViewImsL2();


                // Populate the GridView. 
                BindGridViewImsL3();


                // Populate the GridView. 
                BindGridViewImsL4();
            }
        }

        private void BindGridViewImsL1()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsImsL1 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_IMS_Level_1, Lib_IMS_Level_1_FR FROM ST_IMS_Level_1";


                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsImsL1, "ImsL1");


                // Get the DataView from Primary IMS L1 DataTable. 
                DataView dvImsL1 = dsImsL1.Tables["ImsL1"].DefaultView;

                // Bind the GridView control. 
                imsL1.DataSource = dvImsL1;
                imsL1.DataBind();
            }
        }

        private void BindGridViewImsL2()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                // Create a DataSet object. 
                DataSet dsImsL2 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_IMS_Level_2, Lib_IMS_Level_2_FR FROM ST_IMS_Level_2";


                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsImsL2, "ImsL2");


                // Get the DataView from Primary IMS L2 DataTable. 
                DataView dvImsL2 = dsImsL2.Tables["ImsL2"].DefaultView;

                // Bind the GridView control. 
                imsL2.DataSource = dvImsL2;
                imsL2.DataBind();
            }
        }

        private void BindGridViewImsL3()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsImsL3 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_IMS_Level_3, Lib_IMS_Level_3_FR FROM ST_IMS_Level_3";


                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsImsL3, "ImsL3");


                // Get the DataView from Primary IMS L3 DataTable. 
                DataView dvImsL3 = dsImsL3.Tables["ImsL3"].DefaultView;

                // Bind the GridView control. 
                imsL3.DataSource = dvImsL3;
                imsL3.DataBind();
            }
        }

        private void BindGridViewImsL4()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsImsL4 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_IMS_Level_4, Lib_IMS_Level_4_FR FROM ST_IMS_Level_4";


                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsImsL4, "ImsL4");


                // Get the DataView from Primary IMS L1 DataTable. 
                DataView dvImsL4 = dsImsL4.Tables["ImsL4"].DefaultView;

                // Bind the GridView control. 
                imsL4.DataSource = dvImsL4;
                imsL4.DataBind();
            }
        }
    }
}