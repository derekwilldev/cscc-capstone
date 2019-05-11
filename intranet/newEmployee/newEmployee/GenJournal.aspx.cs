using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newEmployee
{
    public partial class GenJournal : System.Web.UI.Page
    {
        //redirects the user to the log in page if they are not logged in
        String name;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = (String)(Session["uname"]);
            if (name == null)
            {
                Response.BufferOutput = true;
                Response.Redirect("Login.aspx", false);
            }
        }

        //This adds data to the database using the datasource tool
        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();

            txtDate.Text = "";
            txtBalance.Text = "";
            txtCredit.Text = "";
            txtDebit.Text = "";
            txtDescription.Text = "";
        }
    }
}