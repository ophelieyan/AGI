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
    public partial class ConsulDAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The Page is accessed for the first time. 
            if (!IsPostBack)
            {
                // Enable the GridView paging option and  
                // specify the page size. 
                das.AllowPaging = true;
                das.PageSize = 15;


                // Enable the GridView sorting option. 
                das.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_DAS ASC";


                // Populate the GridView. 
                BindGridView();
            }
        }


        private void BindGridView()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsDAS = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_DAS, Cod_DAS, Cod_Activity, Lib_DAS_Fr, Lib_DAS_En, Flg_Activity_DAS FROM ST_DAS";


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


                // Set the sort column and sort order. 
                dvDAS.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                das.DataSource = dvDAS;
                das.DataBind();
            }
        }


        // GridView.RowDataBound Event 
        protected void das_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Make sure the current GridViewRow is a data row. 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Make sure the current GridViewRow is either  
                // in the normal state or an alternate row. 
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    // Add client-side confirmation when deleting. 
                    ((LinkButton)e.Row.Cells[1].Controls[0]).Attributes["onclick"] = "if(!confirm('Vous êtes sûre de supprimer ce DAS ?')) return false;";
                }
            }
        }


        // GridView.PageIndexChanging Event 
        protected void das_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // Set the index of the new display page.  
            das.PageIndex = e.NewPageIndex;


            // Rebind the GridView control to  
            // show data in the new page. 
            BindGridView();
        }


        // GridView.RowEditing Event 
        protected void das_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Make the GridView control into edit mode  
            // for the selected row.  
            das.EditIndex = e.NewEditIndex;


            // Rebind the GridView control to show data in edit mode. 
            BindGridView();


            // Hide the Add button. 
            lbtnAdd.Visible = false;
        }


        // GridView.RowCancelingEdit Event 
        protected void das_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Exit edit mode. 
            das.EditIndex = -1;


            // Rebind the GridView control to show data in view mode. 
            BindGridView();


            // Show the Add button. 
            lbtnAdd.Visible = true;
        }


        // GridView.RowUpdating Event 
        protected void das_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "UPDATE Person SET LastName = @LastName, FirstName = @FirstName WHERE PersonID = @PersonID";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the PersonID of the selected row. 
                string strPersonID = das.Rows[e.RowIndex].Cells[2].Text;
                string strLastName = ((TextBox)das.Rows[e.RowIndex].FindControl("TextBox1")).Text;
                string strFirstName = ((TextBox)das.Rows[e.RowIndex].FindControl("TextBox2")).Text;


                // Append the parameters. 
                cmd.Parameters.Add("@PersonID", SqlDbType.Int).Value = strPersonID;
                cmd.Parameters.Add("@LastName", SqlDbType.NVarChar, 50).Value = strLastName;
                cmd.Parameters.Add("@FirstName", SqlDbType.NVarChar, 50).Value = strFirstName;


                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Exit edit mode. 
            das.EditIndex = -1;


            // Rebind the GridView control to show data after updating. 
            BindGridView();


            // Show the Add button. 
            lbtnAdd.Visible = true;
        }


        // GridView.RowDeleting Event 
        protected void das_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "DELETE FROM Person WHERE PersonID = @PersonID";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the PersonID of the selected row. 
                string strPersonID = das.Rows[e.RowIndex].Cells[2].Text;


                // Append the parameter. 
                cmd.Parameters.Add("@PersonID", SqlDbType.Int).Value = strPersonID;


                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Rebind the GridView control to show data after deleting. 
            BindGridView();
        }


        // GridView.Sorting Event 
        protected void das_Sorting(object sender, GridViewSortEventArgs e)
        {
            string[] strSortExpression = ViewState["SortExpression"].ToString().Split(' ');


            // If the sorting column is the same as the previous one,  
            // then change the sort order. 
            if (strSortExpression[0] == e.SortExpression)
            {
                if (strSortExpression[1] == "ASC")
                {
                    ViewState["SortExpression"] = e.SortExpression + " " + "DESC";
                }
                else
                {
                    ViewState["SortExpression"] = e.SortExpression + " " + "ASC";
                }
            }
            // If sorting column is another column,   
            // then specify the sort order to "Ascending". 
            else
            {
                ViewState["SortExpression"] = e.SortExpression + " " + "ASC";
            }


            // Rebind the GridView control to show sorted data. 
            BindGridView();
        }

        protected void lbtnAdd_Click(object sender, EventArgs e)
        {

        }
    }
}