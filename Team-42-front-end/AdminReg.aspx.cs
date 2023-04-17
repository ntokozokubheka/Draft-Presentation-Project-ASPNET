using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_42.ServiceReference1;

namespace Team_42
{
    public partial class AdminReg : System.Web.UI.Page
    {
        Service1Client client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnReg_Click(object sender, EventArgs e)
        {
            string EMAIL = Convert.ToString(Email.Value);
            string password = Convert.ToString(Password.Value);


            bool regis = client.RegisterRec(Name.Value, EMAIL,DOB.Value, password);

            if (regis == true)
            {
                Response.Redirect("adminLogin.aspx");
            }
            else
            {

                string err = "";
                err = "<p> Couldn't register user. </p>";
                success.InnerHtml = err;
            }

        }
    }
}