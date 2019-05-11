using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newEmployee
{
    public partial class newEmployeeForm : System.Web.UI.Page
    {

        String name;

        //redirects user to the login page if they are not logged in
        protected void Page_Load(object sender, EventArgs e)
        {
            name = (String)(Session["uname"]);
            if (name == null)
            {
                Response.BufferOutput = true;
                Response.Redirect("Login.aspx", false);
            }
        }
        //creates a new employee event when clicked
        protected void submitEvent(object sender, EventArgs e)
        {
            newEmployee();            
        }
        //clears the text boxes when clicked
        protected void clearEvent(object sender, EventArgs e)
        {
            clearText();
        }

        //code for the newEmployee event
        private void newEmployee()
        {
            SqlDataSource1.Insert();

            txtFirstNameBx.Text = "";
            txtLastNameBx.Text = "";
            txtPhoneBx.Text = "";
            txtEmailBx.Text = "";
            txtPasswordBx.Text = "";
            txtStreetbx.Text = "";
            txtCitybx.Text = "";
            txtStatebx.Text = "";

            //redirects the user to the Employeetable after new employee created
            Response.Redirect("EmployeeTable.aspx");
        }
        //code that clears the text boxes
        private void clearText()
        {
            txtFirstNameBx.Text = "";
            txtLastNameBx.Text = "";
            txtPhoneBx.Text = "";
            txtEmailBx.Text = "";
            txtPasswordBx.Text = "";
            txtStreetbx.Text = "";
            txtCitybx.Text = "";
            txtStatebx.Text = "";
        }
    }
}