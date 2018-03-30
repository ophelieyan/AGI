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
    public partial class fluxActivity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The Page is accessed for the first time. 
            if (!IsPostBack)
            {
               // Enable the GridView sorting option. 
                pBrand.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Primary_Brand ASC";


                // Populate the GridView. 
                BindGridViewPBrand();

                // Enable the GridView sorting option. 
                sBrand.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Secondary_Brand ASC";


                // Populate the GridView. 
                BindGridViewSBrand();


                // Enable the GridView sorting option. 
                range.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Range ASC";


                // Populate the GridView. 
                BindGridViewRange();
            }
        }

        private void BindGridViewPBrand()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsPBrand = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Primary_Brand, Cod_Primary_Brand, Lib_Primary_Brand_Fr FROM JT_Primary_Brand";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsPBrand, "PBrand");


                // Get the DataView from Primary Brand DataTable. 
                DataView dvPBrand = dsPBrand.Tables["PBrand"].DefaultView;


                // Set the sort column and sort order. 
                dvPBrand.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                pBrand.DataSource = dvPBrand;
                pBrand.DataBind();
            }
        }

        private void BindGridViewSBrand()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsSBrand = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Secondary_Brand, Cod_Secondary_Brand, Lib_Secondary_Brand_Fr FROM ST_Secondary_Brand";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsSBrand, "SBrand");


                // Get the DataView from Secondary Brand DataTable. 
                DataView dvSBrand = dsSBrand.Tables["SBrand"].DefaultView;


                // Set the sort column and sort order. 
                dvSBrand.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                sBrand.DataSource = dvSBrand;
                sBrand.DataBind();
            }
        }

        private void BindGridViewRange()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsRange= new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Range, Cod_Range, Lib_Range_Fr FROM ST_Range";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();

                da.Fill(dsRange, "Range");


                // Get the DataView from Primary Brand DataTable. 
                DataView dvRange= dsRange.Tables["Range"].DefaultView;


                // Set the sort column and sort order. 
                dvRange.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                range.DataSource = dvRange;
                range.DataBind();
            }
        }

    
    }
}