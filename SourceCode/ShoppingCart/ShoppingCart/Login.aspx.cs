using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            List<Autrhentication_Result> objList = new List<Autrhentication_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.Autrhentication(txtUsername.Text.Trim(), txtPassword.Text.Trim()).
                    ToList<Autrhentication_Result>();
            }
            if (objList.Count != 0)
            {
                Session["UserId"] = objList[0].UserId;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblError.Text = "Invalid username / password";
            }

        }
    }
}