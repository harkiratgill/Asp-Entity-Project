<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register Form.aspx.cs" Inherits="Asp_Entity_Project.Register_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
      
        background-image: url("https://i.imgur.com/NAQ0dTR.jpg");
    background-attachment: fixed;
   height: 100%;


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
    top: 18%;
    left:34%;
}
        #form1 {
            width: 397px;
            height: 311px;
        }
  
    </style>
</head>
<body>

    <form id="form1" runat="server" class="k">
        <asp:Label ID="Label1" runat="server" Text="Please Register Here" Font-Names="Yu Gothic UI" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White"></asp:Label>
       
            <br />
        <br />
       
            <asp:Label ID="Label2" runat="server" Text="Username" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:Label ID="Label5" runat="server" Text="First Name" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <br />
       
            <asp:TextBox ID="lg_txt" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px" Width="145px"></asp:TextBox>
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:TextBox ID="First_txt" runat="server" Font-Names="Yu Gothic UI" ForeColor="#660066" BackColor="Lavender" BorderStyle="None" Height="16px" Width="141px"></asp:TextBox>
      
        <br />
      
        <asp:Label ID="Label3" runat="server" Text="Password" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        <asp:Label ID="Label6" runat="server" Text="Last Name" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
        <br />
        <asp:TextBox class="form-control" ID="Password_txt" runat="server" Width="140px" BackColor="Lavender" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="#660066" ></asp:TextBox>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox class="form-control" ID="Last_txt" runat="server" Width="140px" BackColor="Lavender" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="#660066"  style="margin-bottom: 0px" Height="18px"></asp:TextBox>
       
            <br />
      
        <asp:Label ID="Label7" runat="server" Text="Age" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
        <br />
        <asp:TextBox class="form-control" ID="Age_txt" runat="server" Width="140px" BackColor="Lavender" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="#660066" ></asp:TextBox>
       
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
            <asp:Button ID="Rg_btn" runat="server" Text="Register" BackColor="#990099" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="White" Height="28px" Width="70px" OnClick="Rg_btn_Click" />
        
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
       
            &nbsp;<asp:Label ID="Label4" runat="server" Text="already have a account" Font-Names="Yu Gothic UI" Font-Size="Medium" ForeColor="White"></asp:Label>
            &nbsp;&nbsp;
            <asp:Button ID="Loginpage_btn" runat="server" Text="Login" BackColor="#990099" BorderStyle="None" Font-Names="Yu Gothic UI" ForeColor="White" Height="28px" Width="88px" OnClick="Loginpage_btn_Click" />
        
            <br />
        
            <br />
        
    </form>

    </body>
</html>
