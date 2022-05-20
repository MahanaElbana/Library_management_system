
/*class Helper
{
    //
  static string LogIn =
    "          ###################################################################\n" +
    "          ############################    Login page    #####################\n" +
    "          ###################################################################\n";


    private static string LoginInstruction =
        "                ***********************************************************" +
        " \n                * Enter the email, leave a space, then Enter the password *" +
        " \n                ***********************************************************";
    // function [borrow  - return  -log]
    public static string NowDate()
    {
        DateTime date = DateTime.Now;
        string dt1 = date.ToLongTimeString();        // display format:  11:45:44 AM
        string dt2 = date.ToShortDateString();      // display format:  5/22/2010
        string datetimenow = dt1 + dt2;
        return datetimenow;
    }
    /// [due data]
    public static string DueDate()
    {
        DateTime nowDate = DateTime.Now;
        var date = nowDate.AddDays(5.0);
        string dt1 = date.ToLongTimeString();        // display format:  11:45:44 AM
        string dt2 = date.ToShortDateString();      // display format:  5/22/2010
        string dueDate = dt1 + dt2;
        return dueDate;
    }

    // how to trim the end of string input 
    public static void TrimfromStartAndEnd()
    {

    }
    // registraion function 

    public static bool RegestraionHelper()
    {
        Repository.con.Open();
        if (Repository.con.State == System.Data.ConnectionState.Open)
        {
            try
            {
                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine(LogIn);
                Console.WriteLine(LoginInstruction);

                //---    
                string registraionData = Console.ReadLine().Trim();

                if (registraionData == "")
                {
                    Console.WriteLine(" ** enter your email and password **");
                    Repository.con.Close();
                    Log.LogInfo(Helper.NowDate(), "registration is refused ! password is wrong ", "error !");

                    return false;
                }

                string[] dataList = new string[2];
                dataList = registraionData.Split(" ");
                string email = dataList[0].Trim();
                string password = dataList[1].Trim();
            
                // -- if user enter more than space 
                if (password == "")
                {
                    Console.WriteLine(" ** left only one space bettween email and password ! **");
                    Repository.con.Close();
                    Log.LogInfo(Helper.NowDate(), "registration is refused ! password is wrong ", "error !");

                    return false;
                }
                string sql = "SELECT employeeId,fullName,email,employeePassword,isadmin" +
                $" FROM employee WHERE email = '{email}' and employeePassword = '{password}' ";

                using var cmd = new MySqlCommand(sql, Repository.con);
                var rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    Registration.employeeId = rdr.GetInt32(0);
                    Registration.fullName = rdr.GetString(1);
                    Registration.email = rdr.GetString(2);
                    Registration.employeePassword = rdr.GetString(3);
                    Registration.isadmin = rdr.GetInt32(4);
                }


                // rdr.Read() return false if email and password is not existing
                if (Registration.employeeId == 0 &&
                            Registration.fullName == ""
                        && Registration.email == "")
                {
                    Console.WriteLine(" ** check your email and password ! **");
                    Repository.con.Close();
                    Log.LogInfo(Helper.NowDate(), "registration is refused ! password is wrong ", "error !");
                    return false;
                }


                Repository.con.Close();
                Log.LogInfo(Helper.NowDate(), $"{Registration.employeeId} {Registration.fullName} {Registration.email} signed successfully!", "error !");

                return true;
            }
            catch
            {Console.WriteLine(" ** you entered data less than or gerater than reqired**");

                Repository.con.Close();
                Log.LogInfo(Helper.NowDate(), "registration is refused ! password is wrong ", "error !");
                return false;
            }
        }
        else
        {
            Console.WriteLine("no connection");
            Repository.con.Close();
            Log.LogInfo(Helper.NowDate(), "connection is refused ! ", "error !");
            Repository.con.Close();
            return false;
        }

    }

}*/