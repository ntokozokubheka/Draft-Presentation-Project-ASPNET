using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_42.ServiceReference1;

namespace Team_42
{
    public partial class adminLogin : System.Web.UI.Page
    {

        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = Convert.ToString(Email.Value);
            string PASS = Convert.ToString(Pass.Value);

            var user = client.getRec(email, PASS);
            





            if (!(user==null))
            {
                string useremail = user.R_Email;
                string userpass = user.R_Password;

                Session["Adminid"] = useremail;
                Session["AdminName"] = user.R_Name;

                Response.Redirect("AdminIndex.aspx");

            }else{

                string err = "";
                err = "<p style='color: white'> Couldn't verify user. </p>";
                message.InnerHtml = err;
            }

        }

    }
}