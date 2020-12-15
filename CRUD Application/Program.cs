using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using Dapper;

namespace CRUD_Application
{
    class Program
    {
        IDbConnection DBcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConn"].ConnectionString);
        static void Main()
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("1. Insert 2. Select 3. Update 4. Delete");
            int choise = int.Parse(Console.ReadLine());
            switch (choise)
            {
                case 1:
                    InsertData();
                    break;

                case 2:
                    SelectData();
                    break;

                case 3:
                    UpdateData();
                    break;

                case 4:
                    DeleteData();
                    break;
            }
        }
        static void InsertData()
        {
            SqlConnection con1 = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=HotellDatabase;Integrated Security=True;");
            string query = "INSERT INTO test (Fname,Lname) VALUES('pepe','froggo')";
            SqlCommand cmd1 = new SqlCommand(query, con1);
            try
            {
                con1.Open();
                cmd1.ExecuteNonQuery();
                Console.WriteLine("Records Inserted Successfully");
            }
            catch (SqlException Errormsg)
            {
                Console.WriteLine("Error Generated. Details: " + Errormsg.ToString());
            }
            finally
            {
                con1.Close();
                Console.ReadKey();
            }
        }
        static void SelectData()
        {

            using (var con2 = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=HotellDatabase;Integrated Security=True;"))
            {
                con2.Open();
                var feedback = con2.Query(@"select * from test").ToList();
                foreach(var item in feedback)
                {
                    Console.WriteLine(item);
                }
            }
        }
        static void UpdateData()
        {
            using (var con3 = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=HotellDatabase;Integrated Security=True;"))
            {
                con3.Open();
                Console.WriteLine("Which row do you wish to Update?");
                int UpdateId = int.Parse(Console.ReadLine());
                con3.Execute("Update test set Fname=@Fname, Lname=@Lname where Id=@UpdateId",
                    new { UpdateId = UpdateId, Fname = "Grodan", Lname = "Boll" });
            }
        }
        static void DeleteData()
        {
            using(var con3 = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=HotellDatabase;Integrated Security=True;"))
            {
                con3.Open();
                Console.WriteLine("Which row do you wish to delete?");
                int DeleteRowById = int.Parse(Console.ReadLine());
                con3.Execute("delete test where id=" + DeleteRowById);
            }
        }

    }
}
