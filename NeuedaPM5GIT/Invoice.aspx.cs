using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_OnClick(object sender, EventArgs e)
    {

    }

    protected void btnReset_OnClick(object sender, EventArgs e)
    {
        txtInvoiceInstructions.Text = "";
    }
}