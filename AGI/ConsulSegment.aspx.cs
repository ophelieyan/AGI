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
    public partial class ConsulSegment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The Page is accessed for the first time. 
            if (!IsPostBack)
            {
                // Enable the GridView paging option and  
                // specify the page size. 
                segment.AllowPaging = true;
                segment.PageSize = 15;

                // Enable the GridView sorting option. 
                segment.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Segment ASC";


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
                DataSet dsSegment = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Segment, ID_DAS, Cod_Segment, Lib_Segment_Fr, Lib_Segment_En, Flg_Activity_Segment FROM ST_Segment";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "Segment" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsSegment, "Segment");


                // Get the DataView from DAS DataTable. 
                DataView dvSegment = dsSegment.Tables["Segment"].DefaultView;


                // Set the sort column and sort order. 
                dvSegment.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                segment.DataSource = dvSegment;
                segment.DataBind();
            }
        }


        // GridView.RowDataBound Event 
        protected void segment_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Make sure the current GridViewRow is a data row. 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Make sure the current GridViewRow is either  
                // in the normal state or an alternate row. 
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    // Add client-side confirmation when deleting. 
                   // ((LinkButton)e.Row.Cells[1].Controls[0]).Attributes["onclick"] = "if(!confirm('Vous êtes sûre de supprimer ce DAS ?')) return false;";
                }
            }
        }


        // GridView.PageIndexChanging Event 
        protected void segment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // Set the index of the new display page.  
            segment.PageIndex = e.NewPageIndex;


            // Rebind the GridView control to  
            // show data in the new page. 
            BindGridView();
        }


        // GridView.RowEditing Event 
        protected void segment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Make the GridView control into edit mode  
            // for the selected row.  
            segment.EditIndex = e.NewEditIndex;


            // Rebind the GridView control to show data in edit mode. 
            BindGridView();


            // Hide the Add button. 
            lbtnAdd.Visible = false;
        }


        // GridView.RowCancelingEdit Event 
        protected void segment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Exit edit mode. 
            segment.EditIndex = -1;


            // Rebind the GridView control to show data in view mode. 
            BindGridView();


            // Show the Add button. 
            lbtnAdd.Visible = true;
        }


        // GridView.RowUpdating Event 
        protected void segment_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "UPDATE ST_Segment SET ID_Segment = @ID_Segment, ID_DAS = @ID_DAS, Cod_Segment=@Cod_Segment, Lib_Segment_Fr=@Lib_Segment_Fr, Lib_Segment_En= @Lib_Segment_En, Flg_Activity_Segment= @Flg_Activity_Segment WHERE ID_Segment = @ID_Segment";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the ID_Segment of the selected row. 
                string strIdSegment = segment.Rows[e.RowIndex].Cells[2].Text;
                string strIdDAS = ((TextBox)segment.Rows[e.RowIndex].FindControl("tbxIdDAS")).Text;
                string strCodSeg = ((TextBox)segment.Rows[e.RowIndex].FindControl("tbxCodSeg")).Text;
                string strLibSegFr = ((TextBox)segment.Rows[e.RowIndex].FindControl("tbxLibSegFr")).Text;
                string strLibSegEn = ((TextBox)segment.Rows[e.RowIndex].FindControl("tbxLibSegEn")).Text;
                string strFlgActiSeg = ((TextBox)segment.Rows[e.RowIndex].FindControl("tbxFlgActiSeg")).Text;

                // Append the parameters. 
                cmd.Parameters.Add("@ID_Segment", SqlDbType.Int).Value = strIdSegment;
                cmd.Parameters.Add("@Cod_DAS", SqlDbType.NVarChar, 10).Value = strIdDAS;
                cmd.Parameters.Add("@Cod_Segment", SqlDbType.NVarChar, 10).Value = strCodSeg;
                cmd.Parameters.Add("@Lib_Segment_Fr", SqlDbType.NVarChar, 50).Value = strLibSegFr;
                cmd.Parameters.Add("@Lib_Segment_En", SqlDbType.NVarChar, 50).Value = strLibSegEn;
                cmd.Parameters.Add("@Flg_Activity_Segment", SqlDbType.Bit).Value = strFlgActiSeg;

                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Exit edit mode. 
            segment.EditIndex = -1;


            // Rebind the GridView control to show data after updating. 
            BindGridView();


            // Show the Add button. 
            lbtnAdd.Visible = true;
        }


        // GridView.RowDeleting Event 
        protected void segment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "DELETE FROM ST_Segment WHERE ID_Segment = @ID_Segment";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the PersonID of the selected row. 
                string strIdSegment = segment.Rows[e.RowIndex].Cells[2].Text;


                // Append the parameter. 
                cmd.Parameters.Add("@ID_Segment", SqlDbType.Int).Value = strIdSegment;


                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Rebind the GridView control to show data after deleting. 
            BindGridView();
        }


        // GridView.Sorting Event 
        protected void segment_Sorting(object sender, GridViewSortEventArgs e)
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
            Response.Redirect("CreationSegment.aspx");
        }
    }
}