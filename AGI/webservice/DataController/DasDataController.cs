//using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace AGI.WebService.DataController
{

    [Route("api/[controller]")]
    public class DasDataController : Controller
    {

        [HttpPost("{param}")]
        public IActionResult TestPost(string param)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "INSERT INTO ST_DAS insert into [01_MCD_AG].[dbo].[ST_DAS](Cod_DAS,Cod_Activity,Lib_DAS_Fr) VALUES()";
                //'MASEG', 'MA', 'Maquillage'

                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;

                string s = param;
                string[] words = s.Split(',');

                string strCodDAS = words[0].Substring(words[0].IndexOf("="), words[0].Length-1);
                string strCodActi = words[1].Substring(words[0].IndexOf("="), words[0].Length - 1); 
                string strLibDAS = words[1].Substring(words[0].IndexOf("="), words[0].Length - 1); 

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
}