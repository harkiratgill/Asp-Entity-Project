<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Video.aspx.cs" Inherits="Asp_Entity_Project.Video" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
    background-image: url("https://images8.alphacoders.com/679/thumb-1920-679478.jpg");
     background-attachment: fixed;
   


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
    left:40%;
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
    left:30%;
    width: 20%;
  height:10%;
    text-align: center;
position: sticky  ;
}
    </style>
</head>
<body style="height: 522px">
    <div class="topnav">
  <a  href="Customer.aspx">Coustmer</a>
  
  <a class="active" href="Video.aspx">Movies</a>
        <a  href="login.aspx">Log out</a>
       

  
</div>


    <form id="form1" runat="server">
        <h1 class="k">Video Store </h1>
        <p>
&nbsp;
            </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView class="r" ID="vid_grid" runat="server" BackColor="MediumOrchid" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="White" GridLines="None" style="margin-top: 25px" OnSelectedIndexChanged="vid_grid_SelectedIndexChanged"  Font-Size="Large">
                <AlternatingRowStyle HorizontalAlign="Center" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
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
            Movie ID&nbsp;&nbsp;&nbsp;&nbsp;</p>
      
        <asp:TextBox ID="movid_txt" runat="server" Color="White" ReadOnly="True" ></asp:TextBox>
              <div class="line-box">
      <div class="line"></div>
    </div>
       
        Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="title_txt" runat="server" Color="White"  ></asp:TextBox>
          <div class="line-box">
      <div class="line"></div>
    </div>
        <span class="pl-smi">Plot</span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Plot_txt" runat="server"></asp:TextBox>
              <div class="line-box">
      <div class="line"></div>
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;
        
&nbsp;<span class="pl-smi">Genre</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="genra_txt" runat="server"></asp:TextBox>
        <div class="line-box">
      <div class="line"></div>
    </div>
            <span class="pl-smi">Year</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="year_txt" runat="server"></asp:TextBox>
         <div class="line-box">
      <div class="line"></div>
    </div>
        <span class="pl-smi">Rating&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <asp:TextBox ID="rate_txt" runat="server"></asp:TextBox>
              <div class="line-box">
      <div class="line"></div>
    </div>
        Copies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
        <br />
            <asp:TextBox ID="Copies_txt" runat="server"></asp:TextBox>
              <div class="line-box">
      <div class="line"></div>
    </div>
            </div>
        <br />
        <br />
        </span>
        <asp:Button ID="addMovie_btn" runat="server" BackColor="#CC00CC" Font-Names="Yu Gothic UI" Height="31px" OnClick="Add_vid_Click" Text="Add" Width="72px" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Updatevid_btn" runat="server" BackColor="#CC00CC" Font-Names="Yu Gothic UI" Height="31px" Text="Update" Width="72px" OnClick="Updatevid_btn_Click" BorderStyle="None" ForeColor="White" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Deletevid_btn" runat="server" BackColor="#CC00CC" Font-Names="Yu Gothic UI" Height="31px" Text="Delete" Width="72px" OnClick="Deletevid_btn_Click" BorderStyle="None" ForeColor="White" />
    </form>
</body>
</html>
