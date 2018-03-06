using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AGI
{
    public partial class EditExpanse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnOkay_Click(object sender, EventArgs e) {
            try
            {

            //    MiltiViewExpanse.ActiveViewIndex = 1;
                ClientScript.RegisterStartupScript(this.GetType(),
                    "onload", "onSuccess();", true);
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(),
                    "onload","onError();",true);
           //     MultiViewExpanse.ActiveViewIndex = 1;
            }
        }
    }
}