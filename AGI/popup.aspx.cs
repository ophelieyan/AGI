using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AGI.test
{
    public partial class popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Populate the DropDownList pour DAS.
                BindDdlDas();
            }
        }
        private void BindDdlDas()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsDAS = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_DAS, Cod_DAS, Cod_Activity, Lib_DAS_Fr, Lib_DAS_En, Flg_Activity_DAS FROM ST_DAS ORDER BY Cod_Activity";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "DAS" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsDAS, "DAS");


                // Get the DataView from DAS DataTable. 
                DataView dvDAS = dsDAS.Tables["DAS"].DefaultView;

                // Bind the dropdownlist control. 
                ddlCodActi.DataSource = dvDAS;
                ddlCodActi.Items.Insert(0, "Tout");
                ddlCodActi.DataValueField = "ID_DAS";
                ddlCodActi.DataTextField = "Cod_Activity";
                ddlCodActi.DataBind();
            }
        }
    }
}