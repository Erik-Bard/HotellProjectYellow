using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace CRUD_Application
{
    class Program
    {
        static IDbConnection DBcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConn"].ConnectionString);
        public static string queryboi;

        static void Main()
        {
            Console.WriteLine("Hello World!");
            InsertData();
            SelectData();
        }
        
        static void InsertData()
        {
            using(var con=new SqlConnection("SqlConn"))
            {
                queryboi = @"INSERT INTO test(Fname, Lname)
                                            Values(@Fname, @Lname)";
                //con.Execute(DBcon.Query, new { Fname, Lname });
                SqlCommand querytest = new SqlCommand(queryboi);
                querytest.Connection = con;
                querytest.Parameters.Add("@EmpBoi", SqlDbType.VarChar, 30).Value = "Yeet";
                var cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "INSERT INTO test(Fname, Fname) VALUES('Erik','Bard')";
                cmd.ExecuteNonQuery();
                querytest.ExecuteNonQuery();
            }
        }
        static void SelectData()
        {
            using (var con = new SqlConnection("SqlConn"))
            {
                var Select = con.Query(@"SELECT * FROM test");
            }
        }
    }
}
