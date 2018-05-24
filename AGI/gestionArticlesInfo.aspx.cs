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

                string idArticleSaisi="";

                if (Request.Form["search"] != null)
                {
                    idArticleSaisi = Request.Form["search"].ToString();
                }
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding," +
                    "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
                    "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
                    "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
                    "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE " +
                    "WHERE ID_Article = @idArticleSaisi";

                cmd.CommandText = strSelectCmd;
                cmd.Parameters.Add("@idArticleSaisi", SqlDbType.NVarChar, 11).Value = idArticleSaisi;
             
                // Open the connection 
                conn.Open();
                cmd.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter( ,conn);
                da.Fill(dsArticle, "article");

                DataTable tblArticle = dsArticle.Tables["article"];

                tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
                tbxGamme.Text = tblArticle.Rows[0][9].ToString();
                tbxStatut.Text = tblArticle.Rows[0][11].ToString();
                tbxSousSeg.Text = tblArticle.Rows[0][8].ToString();
                tbxIms.Text = tblArticle.Rows[0][10].ToString();
            }
        }
    }
}