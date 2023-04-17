using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_42.ServiceReference1;

namespace Team_42
{
    public partial class addjobs : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string duedate = Convert.ToString(deadline.Value);
            string Pdate = Convert.ToString(date.Value);
            string idv = Convert.ToString(Session["Adminid"]) ;

            bool regis = client.PostJob(description.Value,Pdate, idv,company.Value,location.Value,qualification.Value,salary.Value,experience.Value,duedate);

            if (regis == true)
            {
                Response.Redirect("adminviewjobs.aspx");
            }
            else
            {

                string err = "";
                err = "<p> Couldn't Add job. </p>";
                success.InnerHtml = err;
            }

        }
    }
}