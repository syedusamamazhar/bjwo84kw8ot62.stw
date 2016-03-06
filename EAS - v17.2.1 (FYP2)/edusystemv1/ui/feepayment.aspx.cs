using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace edusystemv1.ui
{
    public partial class feepayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  TwoCheckoutConfig.SellerID = "901248156";
           // TwoCheckoutConfig.PrivateKey = "8CE03B2D-FE41-4C53-9156-52A8ED5A0FA3";
            // TwoCheckoutConfig.Sandbox = true;    #Uncomment to use Sandbox

            //try
            //{
            //    var Billing = new 'AuthBillingAddress()';
            //    Billing.addrLine1 = "123 test st";
            //    Billing.city = "Columbus";
            //    Billing.zipCode = "43123";
            //    Billing.state = "OH";
            //    Billing.country = "USA";
            //    Billing.name = "Testing Tester";
            //    Billing.email = "example@2co.com";
            //    Billing.phone = "5555555555";

            //    var Customer = new ChargeAuthorizeServiceOptions();
            //    Customer.total = (decimal)1.00;
            //    Customer.currency = "USD";
            //    Customer.merchantOrderId = "123";
            //    Customer.billingAddr = Billing;
            //    Customer.token = "MzIwNzI3ZWQtMjdiNy00NTVhLWFhZTEtZGUyZGQ3MTk1ZDMw";

            //    var Charge = new ChargeService();

            //    var result = Charge.Authorize(Customer);
            //    Console.Write(result);
            //}
            //catch (TwoCheckoutException e)
            //{
            //    Console.Write(e);
            //}

        }
    }
}