using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AGI
{
    public partial class Accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnMDM_click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            clickedButton.Text = "Droit sur MDM";
            clickedButton.Enabled = false;

            Server.Transfer("Action.aspx");
        }
    }
}