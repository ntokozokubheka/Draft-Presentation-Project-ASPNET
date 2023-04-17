using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_42.ServiceReference1;

namespace Team_42
{
    public partial class _Default : Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            var jobs = client.GetJobs();
            string display = "";
            string dis = "";
            string idv = Convert.ToString(Session["Adminid"]);
        




                foreach (JobPost b in jobs)
            {

                display += "<li><a href=''><div class=''>";
                display += "<div class='card'>";
                display += "<div class='card-header m-0'>";
                display += "<h5 class='blog-title card-title m-0'>";
                display += "<a href='single.html'>Company:" + b.Company + "</a></h5></div>";
                display += "<div class='card-body'>";
                display += "<p class='text-left'>Job Description:" + b.P_Description + "</p>";
                display += "<p class='text-left'>Open till:" + b.Deadline + "</p>";
                display += "<p class='text-left'>Salary:" + b.Salary + "</p>";
                display += "<p class='text-left'>Experience:" + b.Experience + "</p>";
                display += "<a class='service-btn btn mt-xl-5 mt-4' href='#'>Read More<span class='fa fa-long-arrow-right ml-2'></span></a></div>";
                display += "<div class='card-footer blog_w3icon border-top pt-2 d-flex justify-content-between'>";
                display += "<small class='text-li'>";
                display += "<b>By: " + Session["AdminName"] + "</b></small>";
                display += "<span>" + b.P_Date + "</span></div></div></div>";
                display += "<div style='height:20px'></div></a></li>";


            }
            myUL.InnerHtml = display;
        }
    }
}