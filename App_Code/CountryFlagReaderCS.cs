using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class CountryFlagReader : System.Web.Services.WebService {

    [WebMethod]
    public string GetFlagReader()
    {
        Page page = new Page();
        UserControl ctl =
          (UserControl)page.LoadControl("UserControls/CountryFlag.ascx");

        page.Controls.Add(ctl);

        StringWriter writer = new StringWriter();
        HttpContext.Current.Server.Execute(page, writer, false);

        return writer.ToString();
    }
}
