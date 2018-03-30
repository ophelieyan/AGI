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
              
                string strCodDAS = words[0].Substring(words[0].IndexOf(":")+1);
                string strCodActi = words[1].Substring(words[1].IndexOf(":")+1);
                string strLibDAS = words[2].Substring(words[2].IndexOf(":")+1);

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
    public class SegmentDataController: Controller
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
                int idDas=-1;

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
                else {
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
                int idSegment=-1;

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
                        idSegment= Convert.ToInt32(reader.GetValue(0));
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

                string strCodRange= words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibRange = words[1].Substring(words[1].IndexOf(":") + 1);

                cmd.Parameters.Add("@Cod_Range", SqlDbType.NVarChar, 10).Value = strCodRange;
                cmd.Parameters.Add("@Lib_Range", SqlDbType.NVarChar, 50).Value = strLibRange;

                conn.Open();

                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }
}