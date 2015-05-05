using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        //instntiate classes
        ShowTrackerEntities ste = new ShowTrackerEntities();
        KeyCode k = new KeyCode();
        int seed = k.GetKeyCode(); //get the seed
        PasswordHash phash = new PasswordHash();

        try //try the code for errors
        {
            //get the hashed password
            byte[] pass = phash.HashIt(txtConfirm.Text, seed.ToString());
            Fan fan = new Fan();
            fan.FanName = txtName.Text;
            fan.FanEmail = txtEmail.Text;
            fan.FanDateEntered = DateTime.Now;
            ste.Fans.Add(fan);

            //assign the values to the fields of the Registration Class
            FanLogin fanlog = new FanLogin();
            fanlog.Fan = fan;
            fanlog.FanLoginUserName = txtName.Text;
            fanlog.FanLoginRandom= seed;
            fanlog.FanLoginPasswordPlain = txtConfirm.Text;
            fanlog.FanLoginHashed = pass;
            fanlog.FanLoginDateAdded = DateTime.Now;
            
            //save changes
            ste.FanLogins.Add(fanlog);
            ste.SaveChanges();
            lblErrorSuccess.Text = "You are successfully registered";
        }
        
        catch (Exception ex)
        {
            lblErrorSuccess.Text = ex.Message;

        }
        
    }
    protected void LbLogin_Click(object sender, EventArgs e)
    {

    }
}