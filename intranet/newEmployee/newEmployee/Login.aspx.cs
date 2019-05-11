using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newEmployee
{
    public partial class Login : System.Web.UI.Page
    {
        //connection to the database
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
  
        String queryStr;
        String name;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginSubmit(object sender, EventArgs e)
        {
            //protects against SQL injection
            if (CheckAgainstWhiteList(employeeNumberTextBox.Text) == true &&
                CheckAgainstWhiteList(passwordTextBox.Text) == true)
            {
                LogOn();
            }
            else
            {
                passwordTextBox.Text = "Does not pass White List test";
            }
        }

        private bool CheckAgainstWhiteList(String userInput)
        {
            //code that protects against SQL injection
            var regExpression = new System.Text.RegularExpressions.Regex(@"^[a-zA-Z0-9]*$");
            if (regExpression.IsMatch(userInput))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private void LogOn()
        {
            //code that pulls datafrom the database to confirm user login
            try
            {
                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["HRconnString"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT * FROM smart.employees WHERE employee_id='" + employeeNumberTextBox.Text + "'AND passwrd='" + passwordTextBox.Text + "'";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

                reader = cmd.ExecuteReader();
                name = "";
                while (reader.HasRows && reader.Read())
                {
                    name = reader.GetString(reader.GetOrdinal("firstname")) + " " +
                           reader.GetString(reader.GetOrdinal("lastname"));
                }

                if (reader.HasRows)
                { 
                    //creates a session variable to confirm user on each page
                    Session["uname"] = name;
                    Response.BufferOutput = true;
                    Response.Redirect("Default.aspx", false);
                }
                else
                {
                    passwordTextBox.Text = "invalid user";
                }

                reader.Close();
                conn.Close();
            }
            catch(Exception e)
            {
                passwordTextBox.Text = e.ToString();
            }
        }

        protected void passwordTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}