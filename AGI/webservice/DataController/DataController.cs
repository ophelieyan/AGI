using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;
using System.Web.Routing;

namespace AGI.WebService.DataController
{

    [Route("api/DasDataController")]
    public class DasDataController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult InsertDAS([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_DAS](Cod_DAS,Cod_Activity,Lib_DAS_Fr) VALUES(@Cod_DAS,@Cod_Activity,@Lib_DAS)";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodDAS = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodActi = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibDAS = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_DAS", SqlDbType.NVarChar, 10).Value = strCodDAS;
                cmd.Parameters.Add("@Cod_Activity", SqlDbType.NVarChar, 10).Value = strCodActi;
                cmd.Parameters.Add("@Lib_DAS", SqlDbType.NVarChar, 50).Value = strLibDAS;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/DasModifyController")]
    public class DasModifyController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult UpdateDAS([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_DAS] SET Lib_DAS_Fr=@Lib_DAS WHERE Cod_Das=@Cod_DAS";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodDAS = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibDAS = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_DAS", SqlDbType.NVarChar, 10).Value = strCodDAS;
                cmd.Parameters.Add("@Lib_DAS", SqlDbType.NVarChar, 50).Value = strLibDAS;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/SegmentDataController")]
    public class SegmentDataController : Controller
    {
        public IActionResult InsertSegment([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_DAS FROM ST_DAS WHERE Lib_DAS_Fr =@Lib_DAS";

                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_Segment](ID_DAS,Cod_Segment,Lib_Segment_Fr) VALUES(@id,@Cod_Segment,@Lib_Segment_Fr)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idDas = -1;

                string strLibDAS = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodSegment = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibSegment = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_DAS", SqlDbType.NVarChar, 10).Value = strLibDAS;

                cmd2.Parameters.Add("@Cod_Segment", SqlDbType.NVarChar, 10).Value = strCodSegment;
                cmd2.Parameters.Add("@Lib_Segment_Fr", SqlDbType.NVarChar, 50).Value = strLibSegment;

                conn.Open();

                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idDas = Convert.ToInt16(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idDas != -1)
                {
                    cmd2.Parameters.Add("@id", SqlDbType.Int, 10).Value = idDas;
                }
                else
                {
                    Console.WriteLine("das id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/SegmentModifyController")]
    public class SegmentModifyController : Controller
    {
        public IActionResult UpdateSegment([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_Segment] SET Lib_Segment_Fr=@Lib_Segment WHERE Cod_Segment=@Cod_Segment";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodSegment = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibSegment = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_Segment", SqlDbType.NVarChar, 10).Value = strCodSegment;
                cmd.Parameters.Add("@Lib_Segment", SqlDbType.NVarChar, 50).Value = strLibSegment;

                conn.Open();

                cmd.ExecuteNonQuery();
            }
            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/subSegmentDataController")]
    public class subSegmentDataController : Controller
    {
        public IActionResult InsertSubSegment([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_Segment FROM ST_Segment WHERE Lib_Segment_Fr =@Lib_Segment";
                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_Sub_Segment](ID_Segment,Cod_Sub_Segment,Lib_Sub_Segment_Fr) VALUES(@ID_Segment,@Cod_SubSegment,@Lib_SubSegment_Fr)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idSegment = -1;

                string strLibSegment = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodSubSegment = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibSubSegment = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_Segment", SqlDbType.NVarChar, 10).Value = strLibSegment;
                cmd2.Parameters.Add("@Cod_SubSegment", SqlDbType.NVarChar, 10).Value = strCodSubSegment;
                cmd2.Parameters.Add("@Lib_SubSegment_Fr", SqlDbType.NVarChar, 50).Value = strLibSubSegment;

                conn.Open();
                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idSegment = Convert.ToInt32(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idSegment != -1)
                {
                    cmd2.Parameters.Add("@ID_Segment", SqlDbType.Int, 10).Value = idSegment;
                }
                else
                {
                    Console.WriteLine("das id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/SubSegmentModifyController")]
    public class SubSegmentModifyController : Controller
    {
        public IActionResult UpdateSubSegment([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_Sub_Segment] SET Lib_Sub_Segment_Fr=@Lib_SubSeg WHERE Cod_Sub_Segment=@Cod_SubSeg";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodSubSeg = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibSubSeg = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_SubSeg", SqlDbType.NVarChar, 10).Value = strCodSubSeg;
                cmd.Parameters.Add("@Lib_SubSeg", SqlDbType.NVarChar, 50).Value = strLibSubSeg;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/PBrandDataController")]
    public class PBrandDataController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult InsertPBrand([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[JT_Primary_Brand](Cod_Primary_Brand,Lib_Primary_Brand_Fr) VALUES(@Cod_PBrand,@Lib_PBrand)";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodPBrand = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibPBrand = words[2].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_PBrand", SqlDbType.NVarChar, 10).Value = strCodPBrand;
                cmd.Parameters.Add("@Lib_PBrand", SqlDbType.NVarChar, 50).Value = strLibPBrand;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/PBrandModifyController")]
    public class PBrandModifyController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult UpdatePBrand([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[JT_Primary_Brand] SET Lib_Primary_Brand_Fr=@Lib_PBrand WHERE Cod_Primary_Brand=@Cod_PBrand";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodPBrand = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibPBrand = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_PBrand", SqlDbType.NVarChar, 10).Value = strCodPBrand;
                cmd.Parameters.Add("@Lib_PBrand", SqlDbType.NVarChar, 50).Value = strLibPBrand;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/SBrandDataController")]
    public class SBrandDataController : Controller
    {
        public IActionResult InsertSBrand([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_Primary_Brand FROM JT_Primary_Brand WHERE Lib_Primary_Brand_Fr =@Lib_PBrand";

                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_Secondary_Brand](ID_Primary_Brand,Cod_Secondary_Brand,Lib_Secondary_Brand_Fr) VALUES(@id,@Cod_SBrand,@Lib_SBrand_Fr)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idPBrand = -1;

                string strLibPBrand = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodSBrand = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibSBrand = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_PBrand", SqlDbType.NVarChar, 10).Value = strLibPBrand;
                cmd2.Parameters.Add("@Cod_SBrand", SqlDbType.NVarChar, 10).Value = strCodSBrand;
                cmd2.Parameters.Add("@Lib_SBrand_Fr", SqlDbType.NVarChar, 50).Value = strLibSBrand;

                conn.Open();

                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idPBrand = Convert.ToInt16(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idPBrand != -1)
                {
                    cmd2.Parameters.Add("@id", SqlDbType.Int, 10).Value = idPBrand;
                }
                else
                {
                    Console.WriteLine("Primary brand id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/SBrandModifyController")]
    public class SBrandModifyController : Controller
    {
        public IActionResult UpdateSBrand([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_Secondary_Brand] SET Lib_Secondary_Brand_Fr=@Lib_SBrand WHERE Cod_Secondary_Brand=@Cod_SBrand";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodSBrand = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibSBrand = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_Secondary_Brand", SqlDbType.NVarChar, 10).Value = strCodSBrand;
                cmd.Parameters.Add("@Lib_Secondary_Brand_Fr", SqlDbType.NVarChar, 50).Value = strLibSBrand;

                conn.Open();

                cmd.ExecuteNonQuery();
            }
            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/RangeDataController")]
    public class RangeDataController : Controller
    {
        public IActionResult InsertRange([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_Secondary_Brand FROM ST_Secondary_Brand WHERE Lib_Secondary_Brand_Fr =@Lib_SBrand";
                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_Range](ID_Secondary_Brand,Cod_Range,Lib_Range_Fr) VALUES(@ID_SBrand,@Cod_Range,@Lib_Range_Fr)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idSBrand = -1;

                string strLibSBrand = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodRange = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibRange = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_SBrand", SqlDbType.NVarChar, 10).Value = strLibSBrand;
                cmd2.Parameters.Add("@Cod_Range", SqlDbType.NVarChar, 10).Value = strCodRange;
                cmd2.Parameters.Add("@Lib_Range_Fr", SqlDbType.NVarChar, 50).Value = strLibRange;

                conn.Open();
                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idSBrand = Convert.ToInt32(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idSBrand != -1)
                {
                    cmd2.Parameters.Add("@ID_SBrand", SqlDbType.Int, 10).Value = idSBrand;
                }
                else
                {
                    Console.WriteLine("das id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/RangeModifyController")]
    public class RangeModifyController : Controller
    {
        public IActionResult UpdateRange([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_Range] SET Lib_Range_Fr=@Lib_Range WHERE Cod_Range=@Cod_Range";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodRange = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibRange = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_Range", SqlDbType.NVarChar, 10).Value = strCodRange;
                cmd.Parameters.Add("@Lib_Range", SqlDbType.NVarChar, 50).Value = strLibRange;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL1DataController")]
    public class ImsL1DataController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult InsertImsL1([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_IMS_Level_1] (Lib_IMS_Level_1_FR) VALUES(@Lib_IMS_Level_1_FR)";

                cmd.CommandType = CommandType.Text;

                string s = param;

                string strLibImsL1 = s;

                cmd.Parameters.Add("@Lib_IMS_Level_1_FR", SqlDbType.NVarChar, 50).Value = strLibImsL1;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL1ModifyController")]
    public class ImsL1ModifyController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult UpdateImsL1([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_IMS_Level_1] SET Lib_IMS_Level_1_Fr=@Lib_ImsL1 WHERE ID_IMS_Level_1=@Id_ImsL1";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strIdImsL1 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL1 = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Id_ImsL1", SqlDbType.NVarChar, 10).Value = strIdImsL1;
                cmd.Parameters.Add("@Lib_ImsL1", SqlDbType.NVarChar, 50).Value = strLibImsL1;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL2DataController")]
    public class ImsL2DataController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult InsertImsL2([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_IMS_Level_1 FROM ST_IMS_Level_1 WHERE Lib_IMS_Level_1_FR =@Lib_ImsL1";

                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_IMS_Level_2](ID_IMS_Level_1,Lib_IMS_Level_2) VALUES(@id,@Lib_ImsL2)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idImsL1 = -1;

                string strImsL1 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL2 = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_ImsL1", SqlDbType.NVarChar, 50).Value = strImsL1;
                cmd2.Parameters.Add("@Lib_ImsL2", SqlDbType.NVarChar, 50).Value = strLibImsL2;

                conn.Open();

                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idImsL1 = Convert.ToInt16(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idImsL1 != -1)
                {
                    cmd2.Parameters.Add("@id", SqlDbType.Int, 10).Value = idImsL1;
                }
                else
                {
                    Console.WriteLine("das id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL2ModifyController")]
    public class ImsL2ModifyController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult UpdateImsL2([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_IMS_Level_2] SET Lib_IMS_Level_2_Fr=@Lib_ImsL2 WHERE ID_IMS_Level_2=@Id_ImsL2";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strIdImsL2 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL2 = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Id_ImsL2", SqlDbType.NVarChar, 10).Value = strIdImsL2;
                cmd.Parameters.Add("@Lib_ImsL2", SqlDbType.NVarChar, 50).Value = strLibImsL2;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL3DataController")]
    public class ImsL3DataController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult InsertImsL3([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_IMS_Level_2 FROM ST_IMS_Level_2 WHERE Lib_IMS_Level_2_FR =@Lib_ImsL2";

                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_IMS_Level_3](ID_IMS_Level_2,Lib_IMS_Level_3) VALUES(@id,@Lib_ImsL3)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idImsL2 = -1;

                string strImsL2 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL3 = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_ImsL2", SqlDbType.NVarChar, 50).Value = strImsL2;
                cmd2.Parameters.Add("@Lib_ImsL3", SqlDbType.NVarChar, 50).Value = strLibImsL3;

                conn.Open();

                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idImsL2 = Convert.ToInt16(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idImsL2 != -1)
                {
                    cmd2.Parameters.Add("@id", SqlDbType.Int, 10).Value = idImsL2;
                }
                else
                {
                    Console.WriteLine("das id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL3ModifyController")]
    public class ImsL3ModifyController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult UpdateImsL3([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_IMS_Level_3] SET Lib_IMS_Level_3_Fr=@Lib_ImsL3 WHERE ID_IMS_Level_3=@Id_ImsL3";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strIdImsL3 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL3 = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Id_ImsL3", SqlDbType.NVarChar, 10).Value = strIdImsL3;
                cmd.Parameters.Add("@Lib_ImsL3", SqlDbType.NVarChar, 50).Value = strLibImsL3;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }


    [Route("api/ImsL4DataController")]
    public class ImsL4DataController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult InsertImsL4([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd1 = new SqlCommand();
                SqlCommand cmd2 = new SqlCommand();

                cmd1.Connection = conn;
                cmd2.Connection = conn;

                cmd1.CommandText = "SELECT ID_IMS_Level_3 FROM ST_IMS_Level_3 WHERE Lib_IMS_Level_3_FR =@Lib_ImsL3";

                cmd2.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_IMS_Level_4](ID_IMS_Level_3,Lib_IMS_Level_4) VALUES(@id,@Lib_ImsL4)";

                cmd1.CommandType = CommandType.Text;
                cmd2.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
                int idImsL3 = -1;

                string strImsL3 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL4 = words[2].Substring(words[2].IndexOf(":") + 1);

                cmd1.Parameters.Add("@Lib_ImsL3", SqlDbType.NVarChar, 50).Value = strImsL3;
                cmd2.Parameters.Add("@Lib_ImsL4", SqlDbType.NVarChar, 50).Value = strLibImsL4;

                conn.Open();

                SqlDataReader reader = cmd1.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        idImsL3 = Convert.ToInt16(reader.GetValue(0));
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                if (idImsL3 != -1)
                {
                    cmd2.Parameters.Add("@id", SqlDbType.Int, 10).Value = idImsL3;
                }
                else
                {
                    Console.WriteLine("das id not found in database");
                }
                conn.Close();

                conn.Open();
                cmd2.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

    [Route("api/ImsL4ModifyController")]
    public class ImsL4ModifyController : Controller
    {
        //[HttpPost("{param}")]
        public IActionResult UpdateImsL3([FromBody] string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = conn;

                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_IMS_Level_4] SET Lib_IMS_Level_4_Fr=@Lib_ImsL4 WHERE ID_IMS_Level_4=@Id_ImsL4";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strIdImsL4 = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibImsL4 = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Id_ImsL4", SqlDbType.NVarChar, 10).Value = strIdImsL4;
                cmd.Parameters.Add("@Lib_ImsL4", SqlDbType.NVarChar, 50).Value = strLibImsL4;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }

}