<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Asp_Entity_Project.Customer1" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title></title>
    <style>
         @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);
                @import url(https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css);

@import url(https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.3/css/mdb.min.css);
body{
      

    background-repeat: no-repeat;
    background-attachment: fixed;
    text-align: center;
    align-content:center;
    background-image: url("https://psxextreme.com/wp-content/uploads/2018/12/Firewatch.jpg");
     background-attachment: fixed;
   height: 100%;


  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;   
    
} 

.hm-gradient {
    background-image: linear-gradient(to top, #f3e7e9 0%, #e3eeff 99%, #e3eeff 100%);
}
.darken-grey-text {
    color: #2E2E2E;
}

.navbar .dropdown-menu a:hover {
    color: #616161 !important;
}
.darken-grey-text {
    color: #2E2E2E;
}
.topnav {
  overflow: hidden;
  background-color:#BA55D3;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #800080;
  color: white;
}
.k {
	font-family: 'Yu Gothic UI';
	font-size: 30px;
	
	 
    color:ghostwhite ;
    padding: 20px;
    background: rgba(0, 0, 0, 0.425);
    top: 10%;
    left:20%;
    width: 20%;
  height:10%;
    text-align: center;
position: absolute ;
}
.l {
	font-family: 'Yu Gothic UI';
	
	
	 	 	font-size: 25px;

    
    padding: 20px;
    background:  rgba(255, 255, 255, 0.8);
  
}
.r {
	font-family: 'Yu Gothic UI';
	
    top: 20%;
    left:35%;
    font-size: 25px;

    width: 20%;
  height:20%;
    text-align: center;
position: sticky  ;
}
   </style>
</head>
<body style="height: 522px">
   
  <div class="topnav">
  <a class="active" href="Customer.aspx">Coustmer</a>
  
  <a  href="Video.aspx">Movies</a>
              <a  href="login.aspx">Log out</a>

      
  
</div>


    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
&nbsp;
            <asp:GridView class="r" ID="Cust_grid" runat="server" BackColor="MediumOrchid" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="White" GridLines="None" style="margin-top: 35px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="Medium">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" DeleteText="" />
                </Columns>
                <EditRowStyle BorderStyle="None" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="Purple" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <p>
                &nbsp;<div class="l">
        </p>
        Cust Id<br />
        <asp:TextBox ID="custid_txr" runat="server" Enabled="False"></asp:TextBox>
        <br />
        &nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="Yu Gothic UI" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="firstname_txt" runat="server"></asp:TextBox>
        <p>
            &nbsp;&nbsp;&nbsp;
        </p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Names="Yu Gothic UI" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lastname_txt" runat="server" Height="16px"></asp:TextBox>
        </p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Names="Yu Gothic UI" Text="Phone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="phone_txt" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Names="Yu Gothic UI" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="address_txt" runat="server"></asp:TextBox>
        </p>
            <p>
                &nbsp;</p>
        </div>
        <asp:Button ID="addCust_btn" runat="server" BackColor="#CC00CC" Font-Names="Yu Gothic UI" Height="31px" OnClick="Custadd_Click" Text="Add" Width="72px" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Up_btn" runat="server" BackColor="#CC00CC" Font-Names="Yu Gothic UI" Height="31px" Text="Update" Width="72px" OnClick="CustUP_Click" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Del_btn" runat="server" BackColor="#CC00CC" Font-Names="Yu Gothic UI" Height="31px" Text="Delete" Width="72px" OnClick="CustDel_Click" BorderStyle="None" ForeColor="White" />
    </form>
</body>
</html>
