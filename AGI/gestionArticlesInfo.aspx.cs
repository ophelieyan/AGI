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
    public partial class gestionArticlesInfo : System.Web.UI.Page
    {
        public object searchInput { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlTypAppro_Load(object sender, EventArgs e)
        {

        }

        protected void findArticle(object sender, ImageClickEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsArticle = new DataSet();

                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding,"+
                    "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
                    "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
                    "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
                    "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE";

                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);

                // Open the connection 
                conn.Open();

                // Fill the DataTable named "article" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsArticle, "article");

                if (Request.Form["searchInput"] != null)
                { 
                    string idArticle = Request.Form["searchInput"].ToString();
                }

                // Get the DataView from article DataTable. 
                //  DataView dvArticle = dsArticle.Tables["article"].DefaultView;
                //tbxCodeAles.Text = dsArticle;
                //// Bind the dropdownlist control. 
                //ddlCodActi.DataSource = dvDAS;
                //ddlCodActi.Items.Insert(0, "Tout");
                //ddlCodActi.DataValueField = "ID_DAS";
                //ddlCodActi.DataTextField = "Cod_Activity";
                //ddlCodActi.DataBind();
            }
        }
    }
}