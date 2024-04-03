using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onur_Altuntas_HW2
{
    public partial class Card : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic shoppingCard = Session["selectedArray"];
            ArrayList imageBoxes = new ArrayList();


            dynamic movie1 = Session["movie1"];
            dynamic movie2 = Session["movie2"];
            dynamic movie3 = Session["movie3"];
            dynamic movie4 = Session["movie4"];
            dynamic movie5 = Session["movie5"];


            if (shoppingCard == null)
            {
                ScriptManager.RegisterStartupScript(Page, typeof(Page), "myscript", "alert('" + "Your shopping list is empty pls add something!" + "');location.href ='../Default.aspx';", true);
            }
            else
            {
                foreach (var item in shoppingCard)
                {
                    if (Int32.Parse(item) == 1)
                    {
                        imgShow.ImageUrl = "~/images/The God Father.jpg";
                        lbName.Text = movie1.Title;
                        lbWriter.Text = movie1.Writer;
                        lbDirector.Text = movie1.Director;
                        lbYear.Text = Convert.ToString(movie1.Year);
                    }
                    else if (Int32.Parse(item) == 2)
                    {
                        imgShow0.ImageUrl = "~/images/The shawshank redemption.jpg";
                        lbName0.Text = movie2.Title;
                        lbWriter0.Text = movie2.Writer;
                        lbDirector0.Text = movie2.Director;
                        lbYear0.Text = Convert.ToString(movie2.Year);
                    }
                    else if (Int32.Parse(item) == 3)
                    {
                        imgShow1.ImageUrl = "~/images/The Dark Night.jpg";
                        lbName1.Text = movie3.Title;
                        lbWriter1.Text = movie3.Writer;
                        lbDirector1.Text = movie3.Director;
                        lbYear1.Text = Convert.ToString(movie3.Year);
                    }
                    else if (Int32.Parse(item) == 4)
                    {
                        imgShow2.ImageUrl = "~/images/12 Angry Men.jpg";
                        lbName2.Text = movie4.Title;
                        lbWriter2.Text = movie4.Writer;
                        lbDirector2.Text = movie4.Director;
                        lbYear2.Text = Convert.ToString(movie4.Year);
                    }
                    else if (Int32.Parse(item) == 5)
                    {
                        imgShow3.ImageUrl = "~/images/The Lord of the Rings The Return of the King.jpg";
                        lbName3.Text = movie5.Title;
                        lbWriter3.Text = movie5.Writer;
                        lbDirector3.Text = movie5.Director;
                        lbYear3.Text = Convert.ToString(movie5.Year);
                    }
                }
            }

           
        }

        protected void btnReturntheMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}