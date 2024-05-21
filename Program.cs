
using MySqlConnector;

var connectionString = "Server=localhost;port=4406;Database=mydb;User ID=root;Password=111;";

using (MySqlConnection connection = new MySqlConnection(connectionString))
{
    try
    {
        connection.Open();
        for (int i = 500; i < 1000; i++)
        {
            string query = "INSERT INTO test_table (name, email) VALUES (@value1, @value2)";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@value1", $"SampleValue{i}");
                command.Parameters.AddWithValue("@value2", $"SampleValue{i}");

                command.ExecuteNonQuery();
                Console.WriteLine("New record inserted at " + DateTime.Now);
                Thread.Sleep(500);
            }
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine("An error occurred: " + ex.Message);
    }
}