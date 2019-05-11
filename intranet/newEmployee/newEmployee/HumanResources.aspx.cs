using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace newEmployee
{
    public partial class Home : System.Web.UI.Page
    {

        String name;

        protected void Page_Load(object sender, EventArgs e)
        {
            //redirects the user if the user has not logged in
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