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
    public partial class fluxDAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // The Page is accessed for the first time. 
            if (!IsPostBack)
            {
                // Enable the GridView paging option and  
                // specify the page size. 
                //das.AllowPaging = true;
                //das.PageSize = 15;


                // Enable the GridView sorting option. 
                das.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_DAS ASC";


                // Populate the GridView. 
                BindGridViewDAS();
          
                // Enable the GridView paging option and  
                // specify the page size. 
                //segment.AllowPaging = true;
                //segment.PageSize = 15;

                // Enable the GridView sorting option. 
                segment.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Segment ASC";


                // Populate the GridView. 
                BindGridViewSegment();

                // Enable the GridView paging option and  
                // specify the page size. 
                //subSegment.AllowPaging = true;
                //subSegment.PageSize = 15;


                // Enable the GridView sorting option. 
                subSegment.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Sub_Segment ASC";


                // Populate the GridView. 
                BindGridViewSousSegment();

                //Populate the DropDownList pour DAS.
                BindDdlDas();

                //Populate the DropDownList pour Segment.
                BindDdlSegment();
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
                //ddlCodActi.DataSource = dvDAS;
                //ddlCodActi.Items.Insert(0, "Tout");
                //ddlCodActi.DataValueField = "ID_DAS";
                //ddlCodActi.DataTextField = "Cod_Activity";
                //ddlCodActi.DataBind();
            }
        }
        //private void BindDdlDas()
        //{
        //    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
        //    {
        //        // Create a DataSet object. 
        //        DataSet dsDAS = new DataSet();


        //        // Create a SELECT query. 
        //        string strSelectCmd = "SELECT ID_DAS, Cod_DAS, Cod_Activity, Lib_DAS_Fr, Lib_DAS_En, Flg_Activity_DAS FROM ST_DAS ORDER BY Lib_DAS_Fr";


        //        // Create a SqlDataAdapter object 
        //        // SqlDataAdapter represents a set of data commands and a  
        //        // database connection that are used to fill the DataSet and  
        //        // update a SQL Server database.  
        //        SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


        //        // Open the connection 
        //        conn.Open();


        //        // Fill the DataTable named "DAS" in DataSet with the rows 
        //        // returned by the query.new n 
        //        da.Fill(dsDAS, "DAS");


        //        // Get the DataView from DAS DataTable. 
        //        DataView dvDAS = dsDAS.Tables["DAS"].DefaultView;

        //        // Bind the GridView control. 
        //        //ddlDAS.DataSource = dvDAS;
        //        //ddlDAS.Items.Insert(0, "Tout");
        //        //ddlDAS.DataValueField = "ID_DAS";
        //        //ddlDAS.DataTextField = "Lib_DAS_Fr";
        //        //ddlDAS.DataBind();
        //    }
        //}

        private void BindDdlSegment()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsSegment = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Segment, ID_DAS, Cod_Segment, Lib_Segment_Fr, Lib_Segment_En, Flg_Activity_Segment FROM ST_Segment ORDER BY Lib_Segment_Fr";


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

                // Bind the GridView control. 
                //ddlSegment.DataSource = dvSegment;
                //ddlSegment.DataValueField = "ID_Segment";
                //ddlSegment.DataTextField = "Lib_Segment_Fr";
                //ddlSegment.DataBind();
            }
        }


        private void BindGridViewDAS()
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

        protected void InsertGridViewDAS(object sender, GridViewRowEventArgs e)
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
                string strSelectCmd = "INSERT INTO ST_DAS insert into [01_MCD_AG].[dbo].[ST_DAS](Cod_DAS,Cod_Activity,Lib_DAS_Fr,Lib_DAS_En) VALUES(@codDas,@codActi,@libDas,@libDasEn)";


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
            //e.Row.Cells[0].Visible = false;

            if (e.Row.RowType == DataControlRowType.DataRow)   
            {
                if (e.Row.RowIndex == 0)
                {
                    e.Row.Style.Add("height", "40px");
                }
            }
            // Make sure the current GridViewRow is a data row. 
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Make sure the current GridViewRow is either  
                // in the normal state or an alternate row. 
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    e.Row.Attributes.Add("onmouseover", "MouseEvents(this, event)");

                    e.Row.Attributes.Add("onmouseout", "MouseEvents(this, event)");
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
            BindGridViewDAS();
        }


        // GridView.RowEditing Event 
        protected void das_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Make the GridView control into edit mode  
            // for the selected row.  
            das.EditIndex = e.NewEditIndex;


            // Rebind the GridView control to show data in edit mode. 
            BindGridViewDAS();


            // Hide the Add button. 
            //lbtnAdd.Visible = false;
        }


        // GridView.RowCancelingEdit Event 
        protected void das_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Exit edit mode. 
            das.EditIndex = -1;


            // Rebind the GridView control to show data in view mode. 
            BindGridViewDAS();


            // Show the Add button. 
           // lbtnAdd.Visible = true;
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
                cmd.CommandText = "UPDATE ST_DAS SET Cod_DAS = @Cod_DAS, Cod_Activity = @Cod_Activity, Lib_DAS_Fr=@Lib_DAS_Fr, Lib_DAS_En= @Lib_DAS_En, Flg_Activity_DAS= @Flg_Activity_DAS WHERE ID_DAS = @ID_DAS";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the ID_DAS of the selected row. 
                string strIdDAS = das.Rows[e.RowIndex].Cells[2].Text;
                string strCodDAS = ((TextBox)das.Rows[e.RowIndex].FindControl("tbxCodDAS")).Text;
                string strCodActi = ((TextBox)das.Rows[e.RowIndex].FindControl("tbxCodActi")).Text;
                string strLibDasFr = ((TextBox)das.Rows[e.RowIndex].FindControl("tbxLibDasFr")).Text;
                string strLibDasEn = ((TextBox)das.Rows[e.RowIndex].FindControl("tbxLibDasEn")).Text;
                string strFlgActiDas = ((TextBox)das.Rows[e.RowIndex].FindControl("tbxFlgActiDas")).Text;

                // Append the parameters. 
                cmd.Parameters.Add("@ID_DAS", SqlDbType.Int).Value = strIdDAS;
                cmd.Parameters.Add("@Cod_DAS", SqlDbType.NVarChar, 10).Value = strCodDAS;
                cmd.Parameters.Add("@Cod_Activity", SqlDbType.NVarChar, 10).Value = strCodActi;
                cmd.Parameters.Add("@Lib_DAS_Fr", SqlDbType.NVarChar, 50).Value = strLibDasFr;
                cmd.Parameters.Add("@Lib_DAS_En", SqlDbType.NVarChar, 50).Value = strLibDasEn;
                cmd.Parameters.Add("@Flg_Activity_DAS", SqlDbType.Bit).Value = strFlgActiDas;

                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Exit edit mode. 
            das.EditIndex = -1;


            // Rebind the GridView control to show data after updating. 
            BindGridViewDAS();

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
                cmd.CommandText = "DELETE FROM ST_DAS WHERE ID_DAS = @ID_DAS";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the PersonID of the selected row. 
                string strIdDAS = das.Rows[e.RowIndex].Cells[2].Text;


                // Append the parameter. 
                cmd.Parameters.Add("@ID_DAS", SqlDbType.Int).Value = strIdDAS;


                // Open the connection. 
                conn.Open();


                // Execute the command. 
                cmd.ExecuteNonQuery();
            }


            // Rebind the GridView control to show data after deleting. 
            BindGridViewDAS();
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
            BindGridViewDAS();
        }


        private void BindGridViewSegment()
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
            BindGridViewSegment();
        }


        // GridView.RowEditing Event 
        protected void segment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Make the GridView control into edit mode  
            // for the selected row.  
            segment.EditIndex = e.NewEditIndex;


            // Rebind the GridView control to show data in edit mode. 
            BindGridViewSegment();


            // Hide the Add button. 
          //  lbtnAdd.Visible = false;
        }


        // GridView.RowCancelingEdit Event 
        protected void segment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Exit edit mode. 
            segment.EditIndex = -1;


            // Rebind the GridView control to show data in view mode. 
            BindGridViewSegment();


            // Show the Add button. 
           // lbtnAdd.Visible = true;
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
            BindGridViewSegment();


            // Show the Add button. 
           // lbtnAdd.Visible = true;
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
            BindGridViewSegment();
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
            BindGridViewSegment();
        }

        private void BindGridViewSousSegment()
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
            BindGridViewSousSegment();
        }


        // GridView.RowEditing Event 
        protected void subSegment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Make the GridView control into edit mode  
            // for the selected row.  
            subSegment.EditIndex = e.NewEditIndex;


            // Rebind the GridView control to show data in edit mode. 
            BindGridViewSousSegment();


            // Hide the Add button. 
            //lbtnAdd.Visible = false;
        }


        // GridView.RowCancelingEdit Event 
        protected void subSegment_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Exit edit mode. 
            subSegment.EditIndex = -1;


            // Rebind the GridView control to show data in view mode. 
            BindGridViewSousSegment();


            // Show the Add button. 
            //lbtnAdd.Visible = true;
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
            BindGridViewSousSegment();


            // Show the Add button. 
            //lbtnAdd.Visible = true;
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
            BindGridViewSousSegment();
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
            BindGridViewSousSegment();
        }

        protected void btnAddSouSeg_Click(object sender, EventArgs e)
        {
               
        }

        protected void das_SelectedIndexChanged(object sender, EventArgs e)
        {
            das.SelectedRow.BackColor = System.Drawing.Color.Aqua;
            int index = das.SelectedRow.RowIndex;
            string idDas = das.SelectedRow.Cells[0].Text;
            string codDas= das.SelectedRow.Cells[1].Text;
            string message = "Row Index: " + index + "\\nid: " + idDas + "\\ncodDas: " + codDas;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }
    }
}