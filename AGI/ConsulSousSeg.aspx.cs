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
    public partial class ConsulSousSeg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The Page is accessed for the first time. 
            if (!IsPostBack)
            {
                // Enable the GridView paging option and  
                // specify the page size. 
                subSegment.AllowPaging = true;
                subSegment.PageSize = 15;


                // Enable the GridView sorting option. 
                subSegment.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Sub_Segment ASC";


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
                DataSet dsSubSegment = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Sub_Segment, ID_Segment, Cod_Sub_Segment, Lib_Sub_Segment_Fr, Lib_Sub_Segment_En, Flg_Activity_Sub_Segment FROM ST_Sub_Segment";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "SubSegment" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsSubSegment, "Sub_Segment");


                // Get the DataView from subSegment DataTable. 
                DataView dvSubSegment = dsSubSegment.Tables["Sub_Segment"].DefaultView;


                // Set the sort column and sort order. 
                dvSubSegment.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                subSegment.DataSource = dvSubSegment;
                subSegment.DataBind();
            }
        }


        // GridView.RowDataBound Event 
        protected void subSegment_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Make sure the current GridViewRow is a data row. 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Make sure the current GridViewRow is either  
                // in the normal state or an alternate row. 
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    // Add client-side confirmation when deleting. 
                    //((LinkButton)e.Row.Cells[1].Controls[0]).Attributes["onclick"] = "if(!confirm('Vous êtes sûre de supprimer ce Sous Segment ?')) return false;";
                }
            }
        }


        // GridView.PageIndexChanging Event 
        protected void subSegment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // Set the index of the new display page.  
            subSegment.PageIndex = e.NewPageIndex;


            // Rebind the GridView control to  
            // show data in the new page. 
            BindGridView();
        }


        // GridView.RowEditing Event 
        protected void subSegment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Make the GridView control into edit mode  
            // for the selected row.  
            subSegment.EditIndex = e.NewEditIndex;


            // Rebind the GridView control to show data in edit mode. 
            BindGridView();


            // Hide the Add button. 
            lbtnAdd.Visible = false;
        }


        // GridView.RowCancelingEdit Event 
        protected void subSegment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Exit edit mode. 
            subSegment.EditIndex = -1;


            // Rebind the GridView control to show data in view mode. 
            BindGridView();


            // Show the Add button. 
            lbtnAdd.Visible = true;
        }


        // GridView.RowUpdating Event 
        protected void subSegment_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "UPDATE ST_Sub_Segment SET ID_Segment = @ID_Segment, Cod_Sub_Segment= @Cod_Sub_Segment, Lib_Sub_Segment_Fr=@Lib_Sub_Segment_Fr, Lib_Sub_Segment_En= @Lib_Sub_Segment_En, Flg_Activity_Sub_Segment= @Flg_Activity_Sub_Segment WHERE ID_Sub_Segment= @ID_Sub_Segment";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the ID_Sub_Segment of the selected row. 
                string strIdSubSeg = subSegment.Rows[e.RowIndex].Cells[2].Text;
                string strIdSeg = ((TextBox)subSegment.Rows[e.RowIndex].FindControl("tbxIdSeg")).Text;
                string strCodSubSeg = ((TextBox)subSegment.Rows[e.RowIndex].FindControl("tbxCodSubSeg")).Text;
                string strLibSouSegFr = ((TextBox)subSegment.Rows[e.RowIndex].FindControl("tbxLibSouSegFr")).Text;
                string strLibLibSouSegEn = ((TextBox)subSegment.Rows[e.RowIndex].FindControl("tbxLibLibSouSegEn")).Text;
                string strFlgActiSouSeg = ((TextBox)subSegment.Rows[e.RowIndex].FindControl("tbxFlgActiSouSeg")).Text;

                // Append the parameters. 
                cmd.Parameters.Add("@ID_Sub_Segment", SqlDbType.Int).Value = strIdSubSeg;
                cmd.Parameters.Add("@ID_Segment", SqlDbType.Int).Value = strIdSeg;
                cmd.Parameters.Add("@Cod_Sub_Segment", SqlDbType.NVarChar, 10).Value = strCodSubSeg;
                cmd.Parameters.Add("@Lib_Sub_Segment_Fr", SqlDbType.NVarChar, 50).Value = strLibSouSegFr;
                cmd.Parameters.Add("@Lib_Sub_Segment_En", SqlDbType.NVarChar, 50).Value = strLibLibSouSegEn;
                cmd.Parameters.Add("@Flg_Activity_Sub_Segment", SqlDbType.Bit).Value = strFlgActiSouSeg;

                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Exit edit mode. 
            subSegment.EditIndex = -1;


            // Rebind the GridView control to show data after updating. 
            BindGridView();


            // Show the Add button. 
            lbtnAdd.Visible = true;
        }


        // GridView.RowDeleting Event 
        protected void subSegment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "DELETE FROM ST_Sub_Segment WHERE ID_Sub_Segment = @ID_Sub_Segment";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the PersonID of the selected row. 
                string strIdSubSeg = subSegment.Rows[e.RowIndex].Cells[2].Text;


                // Append the parameter. 
                cmd.Parameters.Add("@ID_Sub_Segment", SqlDbType.Int).Value = strIdSubSeg;


                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Rebind the GridView control to show data after deleting. 
            BindGridView();
        }


        // GridView.Sorting Event 
        protected void subSegment_Sorting(object sender, GridViewSortEventArgs e)
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