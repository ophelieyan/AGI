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
    public partial class infoLegale : System.Web.UI.Page
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

                if (Request.Form["search"] != null)
                {
                    codeSaisi = Request.Form["search"].ToString();
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

                int typeCoding = int.Parse(tblArticle.Rows[0][2].ToString());
                tbxCodeAles.Text = tblArticle.Rows[0][20].ToString();
                tbxLibArtFr.Text = tblArticle.Rows[0][21].ToString();
                //tbxCodeTaric.Text = tblArticle.Rows[0][12].ToString();
                //tbxCodeUn.Text = tblArticle.Rows[0][19].ToString();

                DataSet dsTaric = new DataSet();
                //récupération la libellée de Code Taric
                string idTaric = "";
                idTaric = tblArticle.Rows[0][12].ToString();
                string sqlTaric = "SELECT Lib_Taric_FR FROM ST_Taric WHERE ID_Taric = @idTaric";
                SqlDataAdapter daTaric = new SqlDataAdapter(sqlTaric, conn);
                daTaric.SelectCommand.Parameters.AddWithValue("@idTaric", idTaric);
                daTaric.Fill(dsTaric, "Taric");
                DataTable tblTaric = dsTaric.Tables["Taric"];
                tbxCodeTaric.Text = tblTaric.Rows[0][0].ToString();

                DataSet dsCodeUn = new DataSet();
                //récupération la libellée de Code UN
                string idCodeUn = "";
                idCodeUn = tblArticle.Rows[0][19].ToString();
                string sqlCodeUn = "SELECT Lib_UN_Class_FR FROM ST_UN_Class WHERE ID_UN_Class = @idCodeUn";
                SqlDataAdapter daCodeUn = new SqlDataAdapter(sqlCodeUn, conn);
                daCodeUn.SelectCommand.Parameters.AddWithValue("@idCodeUn", idCodeUn);
                daCodeUn.Fill(dsCodeUn, "CodeUn");
                DataTable tblCodeUn = dsCodeUn.Tables["CodeUn"];
                tbxCodeUn.Text = tblCodeUn.Rows[0][0].ToString();
            }
        }
    }
}