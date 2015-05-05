using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //instantiate the login class and send the password and username
        LoginClass log = new LoginClass(txtPassword.Text, txtUserName.Text);
        //get the key from the login class
        int key = log.ValidateLogin();
        if (key !=0)
        {
            //if the key is not 0 save it to a session
            Session["UserKey"] = key;
            //redirect to the welcome page
            Response.Redirect("Welcome.aspx");
        }else
        {
            //otherwise give an error message 
            lblError.Text = "Invalid Log In";
        }
    }
}