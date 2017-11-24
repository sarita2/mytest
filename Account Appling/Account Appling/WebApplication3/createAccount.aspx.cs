using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class createAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 

        protected void printButton_Click(object sender, EventArgs e)
        {
        ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "printing()", true);
           }

  }
}
