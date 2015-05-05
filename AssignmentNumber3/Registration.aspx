<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Name</td>
            <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="userNameValidator" ControlToValidate="txtName" runat="server" ErrorMessage="User Name is required"></asp:RequiredFieldValidator></td>
        </tr>

          <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="EmailValidator" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email Name is required"></asp:RequiredFieldValidator></td>
        </tr>

         <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPassword" runat="server"  TextMode="Password"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="PasswordValidator" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password is required"></asp:RequiredFieldValidator></td>
          </tr>
         <tr>
            <td>Confirm Password</td>
            <td><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="ConfirmValidator" ControlToValidate="txtConfirm" runat="server" ErrorMessage="Password confirmation is required"></asp:RequiredFieldValidator></td>
            <td><asp:CompareValidator ID="passwordCompare" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" runat="server" ErrorMessage="Passwords do not match" Display="None"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            <td><asp:Label ID="lblErrorSuccess" runat="server" Text=""></asp:Label></td>
            <td><asp:ValidationSummary ID="ValidationSummary1" runat="server" /></td>
        </tr>

       
    </table>
        <asp:LinkButton ID="LbLogin" runat="server" 
PostBackUrl="~/Default.aspx" CausesValidation="false" OnClick="LbLogin_Click">Log in</asp:LinkButton>
    </div>
    </form>
</body>
</html>