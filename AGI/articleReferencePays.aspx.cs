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
    public partial class articleReferencePays : System.Web.UI.Page
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

                if (Request.Form["searchArticle"] != null)
                {
                    codeSaisi = Request.Form["searchArticle"].ToString();
                }

                // Create a SELECT query. 
                string strSelectCmd = "SELECT ID_Article, ID_ISO3166_Country_Issuer, ID_Article_Type_Coding," +
                    "Datcre_Article,Usrcre_Article,Datmod_Article, Usrmod_Article,ID_Article_Series," +
                    "ID_Sub_Segment, ID_Range, ID_IMS_Level_4,ID_SKU_Status,ID_Taric,ID_Catalog_Type," +
                    "ID_Material_Type, ID_Language_Index, ID_Purchase_Family_Level_3, ID_Purchase_Materials_Level_2," +
                    "ID_Serie,ID_UN_Class,Code_Ales, Id_Libelle_Fr,Type_Appo,Id_Contenant,ID_Galenic FROM FT_ARTICLE " +
                    "WHERE Code_Ales = @codeSaisi";

                // Open the connection 
                conn.Open();

                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);
                da.SelectCommand.Parameters.AddWithValue("@codeSaisi", codeSaisi);
                da.Fill(dsArticle, "article");

                DataTable tblArticle = dsArticle.Tables["article"];

                //int typeCoding = int.Parse(tblArticle.Rows[0][2].ToString());
                //if (typeCoding == 105 || typeCoding == 106 || typeCoding == 107 || typeCoding == 108 || typeCoding == 109)
                //{
                //    Response.Redirect("gestionArticlesInfo.aspx?");
                //}
                //else if (typeCoding == 101 || typeCoding == 102 || typeCoding == 103 || typeCoding == 104 )
                //{
                //    Response.Redirect("articleInfoTypeCompo.aspx?");
                //}
                tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();

                DataSet dsLanguePays = new DataSet();
                string idLanguePays = "";
                idLanguePays = tblArticle.Rows[0][1].ToString();
                string sqlLanguePays = "SELECT ST_ISO639_Language.Lib_ISO639_Language_Fr FROM ST_ISO639_Language" +
                                       " LEFT JOIN JT_ISO639_Language_ISO3166_Country "+
                                       " ON ST_ISO639_Language.ID_ISO639_Language=JT_ISO639_Language_ISO3166_Country.ID_ISO639_Language" +
                                       " WHERE JT_ISO639_Language_ISO3166_Country.ID_ISO3166_Country = @idLanguePays ";
                SqlDataAdapter daLanguePays = new SqlDataAdapter(sqlLanguePays, conn);
                daLanguePays.SelectCommand.Parameters.AddWithValue("@idLanguePays ", idLanguePays);
                daLanguePays.Fill(dsLanguePays, "languePays");
                DataTable tblPays = dsLanguePays.Tables["languePays"];
                tbxLanguePays.Text = tblPays.Rows[0][0].ToString();


                DataSet dsDevisePays = new DataSet();
                string idDevisePays = "";
                idDevisePays = tblArticle.Rows[0][1].ToString();
                string sqlDevisePays = "SELECT Lib_ISO4217_Currency_FR FROM ST_ISO4217_Currency" +
                                       " LEFT JOIN JT_ISO4217_Currency_ISO3166_Country" +
                                       " ON ST_ISO4217_Currency.ID_ISO4217_Currency = JT_ISO4217_Currency_ISO3166_Country.ID_ISO4217_Currency" +
                                       " WHERE JT_ISO4217_Currency_ISO3166_Country.ID_ISO3166_Country = @idDevisePays";
                SqlDataAdapter daDevisePays = new SqlDataAdapter(sqlDevisePays, conn);
                daDevisePays.SelectCommand.Parameters.AddWithValue("@idDevisePays", idDevisePays);
                daDevisePays.Fill(dsDevisePays, "devisePays");
                DataTable tblDevisePays = dsDevisePays.Tables["devisePays"];
                tbxDevisePays.Text = tblDevisePays.Rows[0][0].ToString();
            }
        }
    }
}