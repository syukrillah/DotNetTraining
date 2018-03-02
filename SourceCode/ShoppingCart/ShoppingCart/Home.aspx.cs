using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Session["UserId"])==0)
            {
                btnLogin.Visible = true;
                btnLogOut.Visible = false;
            }
            else
            {
                btnLogin.Visible = false;
                btnLogOut.Visible = true;
            }
            LoadProducts();

        }

        public void LoadProducts()
        {
            List<ProductSelectAll_Result> objList = new List<ProductSelectAll_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.ProductSelectAll().
                    ToList<ProductSelectAll_Result>();
            }

            Repeater1.DataSource = objList;
            Repeater1.DataBind();

        }

        protected void btnAddToCart_Command(object sender, CommandEventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) != 0)
            {
                using (var entities = new ShoppingCartEntities())
                {
                    entities.CartInsert(Convert.ToInt32(Session["UserId"]),
                        Convert.ToInt32(e.CommandArgument), 1);
                }
                ClientScript.RegisterStartupScript( this.GetType(),
                "Message", "alert('Successfully Added to cart !')",
                true);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["UserId"] = "0";
            Response.Redirect("Home.aspx");
          
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }


    }
    public class Product
    {
        public string ProductImage { get; set; }
        public string Name { get; set; }
    }
}