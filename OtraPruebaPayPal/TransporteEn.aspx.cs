using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using PayPal.Api;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class TransporteEn1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntransferencia_Click(object sender, EventArgs e)
        {
            Response.Redirect("TarjetaEn.aspx");
        }

        protected void btnPayPal_Click(object sender, EventArgs e)
        {
            int plan = Convert.ToInt16(Session["compra"]);
            decimal postagePackingCost = plan;
            decimal examPaperPrice = 1.00m;
            int quantityOfExamPapers = 120;
            decimal subtotal = (quantityOfExamPapers * examPaperPrice);
            decimal total = subtotal + postagePackingCost;

            var confing = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(confing).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var examPaperItem = new Item();
            examPaperItem.name = "Past Exam Paper";
            examPaperItem.currency = "USD";
            examPaperItem.price = examPaperPrice.ToString();
            examPaperItem.sku = "PEPCO5027m15";
            examPaperItem.quantity = quantityOfExamPapers.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackingCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "USD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Tu viaje se esta págando";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList()
            {
                items = new List<Item> { examPaperItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://localhost:44321/TransportesEn.aspx";
            redirectUrls.return_url = "https://localhost:44321/HomePage.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }
        }
    }
}