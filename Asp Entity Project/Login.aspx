<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Asp_Entity_Project.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
      
        background-image: url("http://hdqwalls.com/wallpapers/firewatch-minimalism-0u.jpg");
    background-attachment: fixed;
   height: 100%;

   text-align: center;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;    
} 
         .k {
	font-family: Lobster;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	 font-weight: 500;
    line-height: 26.4px; 
    color:plum;
    position: absolute;

    padding: 10px;
    background: #BA55D3;
    top: 20%;
    left:40%;
}
        #form1 {
            width: 271px;
        }
        .login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

    </style>
</head>
<body>

    <form id="form1" runat="server" class="k">
        <asp:Label ID="Label1" runat="server" Text="Please Login Here" Font-Names="Yu Gothic UI" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White"></asp:Label>
       
            <br />
        <br />
       
            <asp:Label ID="Label2" runat="server" Text="Username" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            <br />
       
            <asp:TextBox ID="Login_txt" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px"></asp:TextBox>
      
        <br />
      
        <asp:Label ID="Label3" runat="server" Text="Password" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
        <br />
        <asp:TextBox class="form-control" ID="Password_txt" runat="server" Width="140px" BackColor="Lavender" Font-Names="Yu Gothic UI" ForeColor="#660066" OnTextChanged="Password_txt_TextChanged" BorderStyle="None"></asp:TextBox>
       
            <br />
        <br />
       
            <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#990099" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="White" Height="27px" Width="64px" OnClick="Login_Click" />
        
            <br />
        
            <asp:Label ID="Label4" runat="server" Text="Dont have a account" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Join Here" BackColor="#990099" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="White" Height="28px" Width="88px" OnClick="Register_Click" />
        
    </form>

    </body>
</html>
