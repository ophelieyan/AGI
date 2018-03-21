//using System;
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
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;

                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_DAS](Cod_DAS,Cod_Activity,Lib_DAS_Fr) VALUES(@Cod_DAS,@Cod_Activity,@Lib_DAS)";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');
              
                string strCodDAS = words[0].Substring(words[0].IndexOf(":")+1);
                string strCodActi = words[1].Substring(words[1].IndexOf(":")+1);
                string strLibDAS = words[2].Substring(words[2].IndexOf(":")+1);

                // Append the parameters. 
                cmd.Parameters.Add("@Cod_DAS", SqlDbType.NVarChar, 10).Value = strCodDAS;
                cmd.Parameters.Add("@Cod_Activity", SqlDbType.NVarChar, 10).Value = strCodActi;
                cmd.Parameters.Add("@Lib_DAS", SqlDbType.NVarChar, 50).Value = strLibDAS;
                // Open the connection. 
                conn.Open();

                // Execute the command. 
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
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;

                // Set the command text 
                // SQL statement or the name of the stored procedure  
                //UPDATE table_name
                //SET column1 = value1, column2 = value2, ...
                //WHERE condition;
                cmd.CommandText = "UPDATE [01_MCD_AG].[dbo].[ST_DAS] SET (Lib_DAS_Fr=@Lib_DAS) WHERE Code_Das=@Code_Das";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodDAS = words[0].Substring(words[0].IndexOf(":") + 1);
                string strLibDAS = words[1].Substring(words[2].IndexOf(":") + 1);

                // Append the parameters. 
                //cmd.Parameters.Add("@Cod_Activity", SqlDbType.NVarChar, 10).Value = strCodActi;
                cmd.Parameters.Add("@Cod_DAS", SqlDbType.NVarChar, 10).Value = strCodDAS;
                cmd.Parameters.Add("@Lib_DAS", SqlDbType.NVarChar, 50).Value = strLibDAS;
                // Open the connection. 
                conn.Open();

                // Execute the command. 
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
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;

                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_Segment](ID_DAS,Cod_Segment,Lib_Segment_Fr) VALUES(@ID_DAS,@Cod_Segment,@Lib_Segment_Fr)";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strLibDAS = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodSegment = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibSegment = words[2].Substring(words[2].IndexOf(":") + 1);

                // Append the parameters. 
                cmd.Parameters.Add("@ID_DAS", SqlDbType.NVarChar, 10).Value = strLibDAS;
                cmd.Parameters.Add("@Cod_Segment", SqlDbType.NVarChar, 10).Value = strCodSegment;
                cmd.Parameters.Add("@Lib_Segment_Fr", SqlDbType.NVarChar, 50).Value = strLibSegment;
                // Open the connection. 
                conn.Open();

                // Execute the command. 
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
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;

                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "INSERT INTO [01_MCD_AG].[dbo].[ST_Sub_Segment](ID_Segment,Cod_Sub_Segment,Lib_Sub_Segment_Fr) VALUES(@ID_DAS,@Cod_Segment,@Lib_Segment_Fr)";

                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strLibSegment = words[0].Substring(words[0].IndexOf(":") + 1);
                string strCodSubSegment = words[1].Substring(words[1].IndexOf(":") + 1);
                string strLibSubSegment = words[2].Substring(words[2].IndexOf(":") + 1);

                // Append the parameters. 
                cmd.Parameters.Add("@ID_Segment", SqlDbType.NVarChar, 10).Value = strLibSegment;
                cmd.Parameters.Add("@Cod_Segment", SqlDbType.NVarChar, 10).Value = strCodSubSegment;
                cmd.Parameters.Add("@Lib_Segment_Fr", SqlDbType.NVarChar, 50).Value = strLibSubSegment;
                // Open the connection. 
                conn.Open();

                // Execute the command. 
                cmd.ExecuteNonQuery();
            }

            return new CreatedResult("toto", "OK");
        }
    }
}