using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnLogin.Visible = true;
                btnLogOut.Visible = false;
            }
            else
            {
                btnLogin.Visible = false;
                btnLogOut.Visible = true;
            }

            LoadCartItem();
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

        public void LoadCartItem()
        {
            if (Convert.ToInt32(Session["UserId"]) != 0)
            {
                List<CartItems_Result> objList = new List<CartItems_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.CartItems(Convert.ToInt32(Session["UserId"])).
                        ToList<CartItems_Result>();

                }

                if (objList.Count == 0)
                {
                    CartList.Visible = false;
                    EmptyCart.Visible = true;
                }
                else
                {
                    Repeater1.DataSource = objList;
                    Repeater1.DataBind();
                    CartList.Visible = true;
                    EmptyCart.Visible = false;
                }
            }
            else
            {
                CartList.Visible = false;
                EmptyCart.Visible = true;
            }
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            using (var entities = new ShoppingCartEntities())
            {
                entities.Checkout(Convert.ToInt32(Session["UserId"]));
                CartList.Visible = false;
                EmptyCart.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(),
               "Message", "alert('Successfully Checkout !')",
               true);

            }
        }
    }
}