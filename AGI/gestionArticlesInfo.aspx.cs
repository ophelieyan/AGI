﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AGI
{
    public partial class gestionArticlesInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public virtual CookieContainer CookieContainer { get; set; }

        protected void findArticle(object sender, ImageClickEventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsArticle = new DataSet();
                DataSet dsStatut = new DataSet();
                DataSet dsNatuProd = new DataSet();
                DataSet dsIms = new DataSet();
                DataSet dsGamme = new DataSet();
                DataSet dsSSegm = new DataSet();

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
                    if (tblArticle.Rows[0][2] != null)
                    {
                        int typeCoding = int.Parse(tblArticle.Rows[0][2].ToString());
                    }
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

                    string idStatut = "";
                    idStatut = tblArticle.Rows[0][11].ToString();
                    string sqlStatut = "SELECT Lib_SKU_Status_Fr FROM ST_SKU_Status WHERE Id_SKU_Status = @idStatut";
                    SqlDataAdapter daStatut = new SqlDataAdapter(sqlStatut, conn);
                    daStatut.SelectCommand.Parameters.AddWithValue("@idStatut", idStatut);
                    daStatut.Fill(dsStatut, "statut");
                    DataTable tblStatut = dsStatut.Tables["statut"];
                    tbxStatut.Text = tblStatut.Rows[0][0].ToString();

                    //récupération la libellée de la nature produit
                    string idNatureProduit = "";
                    idNatureProduit = tblArticle.Rows[0][24].ToString();
                    string sqlNatuProd = "SELECT Lib_Galenic_FR FROM ST_Galenic WHERE ID_Galenic = @idGalenic";
                    SqlDataAdapter daNatuProd = new SqlDataAdapter(sqlNatuProd, conn);
                    daNatuProd.SelectCommand.Parameters.AddWithValue("@idGalenic", idNatureProduit);
                    daNatuProd.Fill(dsNatuProd, "natureProduit");
                    DataTable tblNatuProd = dsNatuProd.Tables["natureProduit"];
                    tbxNaturProd.Text = tblNatuProd.Rows[0][0].ToString();

                    //récupération la libellée de IMS
                    string idIms = "";
                    idIms = tblArticle.Rows[0][10].ToString();
                    string sqlIms = "SELECT Lib_IMS_Level_4_FR FROM ST_IMS_Level_4 WHERE ID_IMS_Level_4 = @idIms";
                    SqlDataAdapter daIms = new SqlDataAdapter(sqlIms, conn);
                    daIms.SelectCommand.Parameters.AddWithValue("@idIms", idIms);
                    daIms.Fill(dsIms, "Ims");
                    DataTable tblIms = dsIms.Tables["Ims"];
                    tbxIms.Text = tblIms.Rows[0][0].ToString();

                    //récupération la libellée de la gamme
                    string idGamme = "";
                    idGamme = tblArticle.Rows[0][9].ToString();
                    string sqlGamme = "SELECT Lib_Range_Fr FROM ST_Range WHERE ID_Range = @idGamme";
                    SqlDataAdapter daGamme = new SqlDataAdapter(sqlGamme, conn);
                    daGamme.SelectCommand.Parameters.AddWithValue("@idGamme", idGamme);
                    daGamme.Fill(dsGamme, "Gamme");
                    DataTable tblGamme = dsGamme.Tables["Gamme"];
                    tbxGamme.Text = tblGamme.Rows[0][0].ToString();

                    //récupération la libellée de sous segment
                    string idSSeg = "";
                    idSSeg = tblArticle.Rows[0][8].ToString();
                    string sqlSSegm = "SELECT Lib_Sub_Segment_Fr FROM ST_Sub_Segment WHERE ID_Sub_Segment = @idSSeg";
                    SqlDataAdapter daSSegm = new SqlDataAdapter(sqlSSegm, conn);
                    daSSegm.SelectCommand.Parameters.AddWithValue("@idSSeg", idSSeg);
                    daSSegm.Fill(dsSSegm, "SSegment");
                    DataTable tblSSegm = dsSSegm.Tables["SSegment"];
                    tbxSousSeg.Text = tblSSegm.Rows[0][0].ToString();
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
                        if (tblArticle.Rows[0][2] != null)
                        {
                            int typeCoding = int.Parse(tblArticle.Rows[0][2].ToString());
                        }
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

                        string idStatut = "";
                        idStatut = tblArticle.Rows[0][11].ToString();
                        string sqlStatut = "SELECT Lib_SKU_Status_Fr FROM ST_SKU_Status WHERE Id_SKU_Status = @idStatut";
                        SqlDataAdapter daStatut = new SqlDataAdapter(sqlStatut, conn);
                        daStatut.SelectCommand.Parameters.AddWithValue("@idStatut", idStatut);
                        daStatut.Fill(dsStatut, "statut");
                        DataTable tblStatut = dsStatut.Tables["statut"];
                        tbxStatut.Text = tblStatut.Rows[0][0].ToString();

                        //récupération la libellée de la nature produit
                        string idNatureProduit = "";
                        idNatureProduit = tblArticle.Rows[0][24].ToString();
                        string sqlNatuProd = "SELECT Lib_Galenic_FR FROM ST_Galenic WHERE ID_Galenic = @idGalenic";
                        SqlDataAdapter daNatuProd = new SqlDataAdapter(sqlNatuProd, conn);
                        daNatuProd.SelectCommand.Parameters.AddWithValue("@idGalenic", idNatureProduit);
                        daNatuProd.Fill(dsNatuProd, "natureProduit");
                        DataTable tblNatuProd = dsNatuProd.Tables["natureProduit"];
                        tbxNaturProd.Text = tblNatuProd.Rows[0][0].ToString();

                        //récupération la libellée de IMS
                        string idIms = "";
                        idIms = tblArticle.Rows[0][10].ToString();
                        string sqlIms = "SELECT Lib_IMS_Level_4_FR FROM ST_IMS_Level_4 WHERE ID_IMS_Level_4 = @idIms";
                        SqlDataAdapter daIms = new SqlDataAdapter(sqlIms, conn);
                        daIms.SelectCommand.Parameters.AddWithValue("@idIms", idIms);
                        daIms.Fill(dsIms, "Ims");
                        DataTable tblIms = dsIms.Tables["Ims"];
                        tbxIms.Text = tblIms.Rows[0][0].ToString();

                        //récupération la libellée de la gamme
                        string idGamme = "";
                        idGamme = tblArticle.Rows[0][9].ToString();
                        string sqlGamme = "SELECT Lib_Range_Fr FROM ST_Range WHERE ID_Range = @idGamme";
                        SqlDataAdapter daGamme = new SqlDataAdapter(sqlGamme, conn);
                        daGamme.SelectCommand.Parameters.AddWithValue("@idGamme", idGamme);
                        daGamme.Fill(dsGamme, "Gamme");
                        DataTable tblGamme = dsGamme.Tables["Gamme"];
                        tbxGamme.Text = tblGamme.Rows[0][0].ToString();

                        //récupération la libellée de sous segment
                        string idSSeg = "";
                        idSSeg = tblArticle.Rows[0][8].ToString();
                        string sqlSSegm = "SELECT Lib_Sub_Segment_Fr FROM ST_Sub_Segment WHERE ID_Sub_Segment = @idSSeg";
                        SqlDataAdapter daSSegm = new SqlDataAdapter(sqlSSegm, conn);
                        daSSegm.SelectCommand.Parameters.AddWithValue("@idSSeg", idSSeg);
                        daSSegm.Fill(dsSSegm, "SSegment");
                        DataTable tblSSegm = dsSSegm.Tables["SSegment"];
                        tbxSousSeg.Text = tblSSegm.Rows[0][0].ToString();
                    }
                }
            }
        }
    }
}