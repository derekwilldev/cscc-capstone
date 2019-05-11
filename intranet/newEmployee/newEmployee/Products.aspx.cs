using System;

namespace newEmployee
{
    public partial class Products : System.Web.UI.Page
    {
        //redirects user if the user has not logged in
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

        //event that adds new product on click
        protected void AddProductEvent(object sender, EventArgs e)
        {
            newProduct();
        }

        //code that datasource uses to create product
        private void newProduct()
        {
            SqlDataSource1.Insert();

            ProductNameBox.Text = "";
            ProductDescriptionBox.Text = "";
            ProductFeaturesBox.Text = "";
            ProductPriceBox.Text = "";
            QuanityBox.Text = "";
        }

        //event that clears text boxes
        protected void ClearEvent(object sender, EventArgs e)
        {
            clearText();
        }
        private void clearText()
        {
            ProductNameBox.Text = "";
            ProductDescriptionBox.Text = "";
            ProductFeaturesBox.Text = "";
            ProductPriceBox.Text = "";
            QuanityBox.Text = "";
        }

    }
}