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
    public partial class hierarchieClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Enable the GridView paging option and  
                // specify the page size. 
                //das.AllowPaging = true;
                //das.PageSize = 15;


                // Enable the GridView sorting option. 
                ScmL1.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Customer_SCM_Classification_Level_1 ASC";


                // Populate the GridView. 
                BindGridViewScmL1();

                // Populate the GridView. 
                BindGridViewScmL2();

                // Populate the GridView. 
                BindGridViewBusinessL1();

                // Populate the GridView. 
                BindGridViewBusinessL2();

                // Enable the GridView paging option and  
                // specify the page size. 
                //segment.AllowPaging = true;
                //segment.PageSize = 15;

                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ID_Customer_SCM_Classification_Level_2 ASC";

                BindDdlHierarClient();
            }
        }


        private void BindGridViewScmL1()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsScmL1 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Customer_SCM_Classification_Level_1, Cod_Customer_SCM_Classification_Level_1, Lib_Customer_SCM_Classification_Level_1_Fr FROM ST_Customer_SCM_Classification_Level_1";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "DAS" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsScmL1, "ScmL1");


                // Get the DataView from ScmL1 DataTable. 
                DataView dvScmL1 = dsScmL1.Tables["ScmL1"].DefaultView;

                // Set the sort column and sort order. 
                dvScmL1.Sort = ViewState["SortExpression"].ToString();

                // Bind the GridView control. 
                ScmL1.DataSource = dvScmL1;
                ScmL1.DataBind();
            }
        }

        private void BindGridViewScmL2()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsScmL2 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Customer_SCM_Classification_Level_2, Cod_Customer_SCM_Classification_Level_2, Lib_Customer_SCM_Classification_Level_2_Fr FROM ST_Customer_SCM_Classification_Level_2";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "ScmL2" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsScmL2, "ScmL2");


                // Get the DataView from ScmL2 DataTable. 
                DataView dvScmL2 = dsScmL2.Tables["ScmL2"].DefaultView;

                // Set the sort column and sort order. 
                //dvScmL2.Sort = ViewState["SortExpression"].ToString();

                // Bind the GridView control. 
                ScmL2.DataSource = dvScmL2;
                ScmL2.DataBind();
            }
        }


        private void BindGridViewBusinessL1()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsBusinessL1 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Customer_Business_Classification_Level_1, Cod_Customer_Business_Classification_Level_1, Lib_Customer_Business_Classification_Level_1_Fr FROM ST_Customer_Business_Classification_Level_1";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "DAS" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsBusinessL1, "BusinessL1");


                // Get the DataView from BusinessL1 DataTable. 
                DataView dvBusinessL1 = dsBusinessL1.Tables["BusinessL1"].DefaultView;

                // Set the sort column and sort order. 
                // dvBusinessL1.Sort = ViewState["SortExpression"].ToString();

                // Bind the GridView control. 
                BusinessL1.DataSource = dvBusinessL1;
                BusinessL1.DataBind();
            }
        }

        private void BindGridViewBusinessL2()
        {
            // Get the connection string from Web.config.  
            // When we use Using statement,  
            // we don't need to explicitly dispose the object in the code,  
            // the using statement takes care of it. 
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsBusinessL2 = new DataSet();


                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Customer_Business_Classification_Level_2, Cod_Customer_Business_Classification_Level_2, Lib_Customer_Business_Classification_Level_2_Fr FROM ST_Customer_Business_Classification_Level_2";


                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);


                // Open the connection 
                conn.Open();


                // Fill the DataTable named "DAS" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsBusinessL2, "BusinessL2");


                // Get the DataView from ScmL1 DataTable. 
                DataView dvBusinessL2 = dsBusinessL2.Tables["BusinessL2"].DefaultView;


                // Bind the GridView control. 
                BusinessL2.DataSource = dvBusinessL2;
                BusinessL2.DataBind();
            }
        }

        private void BindDdlHierarClient()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                DataSet dsHierarClient1 = new DataSet();

                DataSet dsHierarClient2 = new DataSet();

                //Ajout des choix de Type Client
                string strSelectCmd1 = "SELECT ID_Customer_Type, Lib_Customer_Type_Fr FROM ST_Customer_Type ORDER BY ID_Customer_Type";
                
                //Ajout des choix de Statue Client
                string strSelectCmd2 = "SELECT ID_Customer_Status,Lib_Customer_Status_Fr FROM ST_Customer_Status ORDER BY ID_Customer_Status";

                //Ajout des choix de Code Client
                string strSelectCmd3 = "SELECT ID_Customer_SCM_Classification_Level_2,Lib_Customer_SCM_Classification_Level_2_Fr FROM ST_Customer_SCM_Classification_Level_2 ORDER BY ID_Customer_SCM_Classification_Level_2";

                SqlDataAdapter da1 = new SqlDataAdapter(strSelectCmd1, conn);

                SqlDataAdapter da2 = new SqlDataAdapter(strSelectCmd2, conn);

                SqlDataAdapter da3 = new SqlDataAdapter(strSelectCmd3, conn);

                conn.Open();

                // Fill the DataTable named "hierarClient" in DataSet with the rows 
                // returned by the query.new n 
                da1.Fill(dsHierarClient1, "hierarClient");

                // Get the DataView from HierarClient DataTable. 
                DataView dvHierarClient = dsHierarClient1.Tables["hierarClient"].DefaultView;

                // Bind the dropdownlist control. 
                ddlHierarClient.DataSource = dvHierarClient;

                ddlHierarClient.Items.Insert(0, new ListItem("", ""));

                ddlHierarClient.Items.Add("Tout");

                ddlHierarClient.DataValueField = "ID_Customer_Type";

                ddlHierarClient.DataTextField = "Lib_Customer_Type_Fr";

                ddlHierarClient.DataBind();

                SqlCommand cmd2 = new SqlCommand();

                cmd2.CommandText = strSelectCmd2;

                cmd2.Connection = conn;

                SqlDataReader dr2 = cmd2.ExecuteReader();

                while (dr2.Read())
                {                

                   ddlHierarClient.Items.Add(dr2["Lib_Customer_Status_Fr"].ToString());

                }

                conn.Close();

                conn.Open();

                SqlCommand cmd3 = new SqlCommand();

                cmd3.CommandText = strSelectCmd3;

                cmd3.Connection = conn;

                SqlDataReader dr3 = cmd3.ExecuteReader();

                while (dr3.Read())
                {

                    ddlHierarClient.Items.Add(dr3["Lib_Customer_SCM_Classification_Level_2_Fr"].ToString());

                }

                conn.Close();
            }
        }

        //A faire 
        protected void findClient(object sender, ImageClickEventArgs e)
        {
            //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            //{
            //    // Create a DataSet object. 
            //    DataSet dsArticle = new DataSet();

            //    string codeSaisi = "";
            //    string libelleSaisi = "";
            //    DataTable tblArticle = new DataTable();
            //    if (Request.Form["search"] != null)
            //    {
            //        codeSaisi = Request.Form["search"].ToString();
            //    }

            //    // Create a SELECT query. 
            //    string strSelectCmd1 = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding," +
            //        "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
            //        "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
            //        "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
            //        "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE " +
            //        "WHERE Code_Ales = @codeSaisi";

            //    // Open the connection 
            //    conn.Open();

            //    SqlDataAdapter da1 = new SqlDataAdapter(strSelectCmd1, conn);
            //    da1.SelectCommand.Parameters.AddWithValue("@codeSaisi", codeSaisi);
            //    da1.Fill(dsArticle, "article");

            //    tblArticle = dsArticle.Tables["article"];
            //    if (tblArticle.Rows.Count > 0)
            //    {
            //        tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
            //        tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
            //    }

            //    else
            //    {
            //        if (Request.Form["search"] != null)
            //        {
            //            libelleSaisi = Request.Form["search"].ToString();
            //        }

            //        string strSelectCmd2 = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding," +
            //       "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
            //       "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
            //       "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
            //       "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE " +
            //       "WHERE Id_Libelle_Fr = @Id_Libelle_Fr";

            //        SqlDataAdapter da2 = new SqlDataAdapter(strSelectCmd2, conn);
            //        da2.SelectCommand.Parameters.AddWithValue("@Id_Libelle_Fr", libelleSaisi);
            //        da2.Fill(dsArticle, "article");

            //        tblArticle = dsArticle.Tables["article"];
            //        if (tblArticle.Rows.Count > 0)
            //        {
            //            tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
            //            tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
            //        }
            //    }
            //}
        }
        protected void findHierarClient(object sender, ImageClickEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsArticle = new DataSet();

                string codeSaisi = "";
                string libelleSaisi = "";
                DataTable tblArticle = new DataTable();
                if (Request.Form["search"] != null)
                {
                    codeSaisi = Request.Form["search"].ToString();
                }

                // Create a SELECT query. 
                string strSelectCmd1 = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding," +
                    "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
                    "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
                    "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
                    "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE " +
                    "WHERE Code_Ales = @codeSaisi";

                // Open the connection 
                conn.Open();

                SqlDataAdapter da1 = new SqlDataAdapter(strSelectCmd1, conn);
                da1.SelectCommand.Parameters.AddWithValue("@codeSaisi", codeSaisi);
                da1.Fill(dsArticle, "article");

                tblArticle = dsArticle.Tables["article"];
                if (tblArticle.Rows.Count > 0)
                {
                    //tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                    //tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
                }

                else
                {
                    if (Request.Form["search"] != null)
                    {
                        libelleSaisi = Request.Form["search"].ToString();
                    }

                    string strSelectCmd2 = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding," +
                   "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
                   "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
                   "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
                   "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE " +
                   "WHERE Id_Libelle_Fr = @Id_Libelle_Fr";

                    SqlDataAdapter da2 = new SqlDataAdapter(strSelectCmd2, conn);
                    da2.SelectCommand.Parameters.AddWithValue("@Id_Libelle_Fr", libelleSaisi);
                    da2.Fill(dsArticle, "article");

                    tblArticle = dsArticle.Tables["article"];
                    if (tblArticle.Rows.Count > 0)
                    {
                        //tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                        //tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
                    }
                }
            }
        }


    }
}