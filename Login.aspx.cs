using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onur_Altuntas_HW2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text == "" || txtLastName.Text == "")
            {
                string script = "alert(\"Please fill the empty areas!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                if (Response.Cookies["ExampleCookie"] != null)
                {
                    //Cookie nesnesi oluşturuyoruz.
                    HttpCookie UserInfo = new HttpCookie("ExampleCookie");
                    //Cookie bilgilerini tanımlıyoruz.
                    UserInfo["firstName"] = txtFirstName.Text;
                    UserInfo["lastName"] = txtLastName.Text;

                    //Cookie'nin tutulacak süresini belirtiyoruz.
                    UserInfo.Expires = DateTime.Now.AddDays(30);
                    //Cookie'yi ekleyerek, fiziksel olarak oluşturuyoruz.
                    Response.Cookies.Add(UserInfo);

                    //string script = "alert(\"yazıldı!\");";
                    //ScriptManager.RegisterStartupScript(this, GetType(),
                    //                      "ServerControlScript", script, true);

                    Response.Redirect("Default.aspx");
                }
                else
                {

                    string script = "alert(\"you are not loged please log in!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }

        }
    }
}