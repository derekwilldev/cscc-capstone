using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newEmployee
{
    public partial class _Default : Page
    {

        String name;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if the user has not logged in this redirects the user to the login page
            name = (String)(Session["uname"]);
            if (name == null)
            {
                Response.BufferOutput = true;
                Response.Redirect("Login.aspx", false);
            }
            else
            {
                userLabel.Text = name;
            }



        }
    }
}