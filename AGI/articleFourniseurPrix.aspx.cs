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
    public partial class articleFourniseurPrix : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void findArticle(object sender, ImageClickEventArgs e)
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
                    tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                    tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
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
                        tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                        tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
                    }
                }
            }
        }
    }
}