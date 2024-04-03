using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Onur_Altuntas_HW2
{
    public partial class Default : System.Web.UI.Page
    {
        Movie id1 = new Movie(1, "The God Father", "Francis Ford Coppola", "Mario Puzo", 1972, "MovieInfo.aspx?id=1");
        Movie id2 = new Movie(2, "The shawshank redemption", "Frank Darabont ", "Stephen King", 1994, "MovieInfo.aspx?id=2");
        Movie id3 = new Movie(3, "The Dark Night", "Christopher  Nolan", "Jonathan Nolan", 2008, "MovieInfo.aspx?id=3");
        Movie id4 = new Movie(4, "12 Angry Menr", "Sidney Lumet", "Reginald Rose", 1957, "MovieInfo.aspx?id=4");
        Movie id5 = new Movie(5, "The Lord of the Rings: The Return of the King", "J.R.R. Tolkien ", "Peter Jackson", 2003, "MovieInfo.aspx?id=5");
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie Cookie = Request.Cookies["ExampleCookie"];

            if (Cookie?["firstName"] == null)
            {
                lbFirstandLastName.Text = "<a href='Default.aspx'>Click Here</a>";

                ScriptManager.RegisterStartupScript(Page, typeof(Page), "myscript", "alert('" + "You are not loged! Please click OK and go Login page" + "');location.href ='../Login.aspx';", true);
            }


            lbFirstandLastName.Text = Cookie?["firstName"] +" " + Cookie?["lastName"];

            

            Session.Add("movie1", id1);
            Session.Add("movie2", id2);
            Session.Add("movie3", id3);
            Session.Add("movie4", id4);
            Session.Add("movie5", id5);


        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["ExampleCookie"] != null)
            {
                HttpCookie musteriCookie = Request.Cookies["ExampleCookie"];
                musteriCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(musteriCookie);
                
                string script = "alert(\"you are not loged please log in!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                
                Response.Redirect("Login.aspx");

                //loggin yazmalı

               
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect(id1.MovieUrl);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect(id2.MovieUrl);
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect(id3.MovieUrl);
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect(id4.MovieUrl);
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect(id5.MovieUrl);
        }
    }
}