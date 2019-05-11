using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newEmployee
{
    public partial class GeneralLedger : System.Web.UI.Page
    {
        //redirects the user to the login page if user has not logged in
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

        //sends the data to the gridview table for new row entry
        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();

            txtDate.Text = "";
            txtBalance.Text = "";
            txtCredit.Text = "";
            txtDebit.Text = "";
            txtDescription.Text = "";
        }
        //clears the text box fields
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtDate.Text = "";
            txtBalance.Text = "";
            txtCredit.Text = "";
            txtDebit.Text = "";
            txtDescription.Text = "";
        }
    }
}