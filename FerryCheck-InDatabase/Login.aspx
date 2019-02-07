<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FerryCheck_InDatabase.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #006600;
        }
        .auto-style2 {
            color: #009933;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1 style="text-align: center"><span class="auto-style1">Welcome To The Montserrat Ferry Passenger Check-In System</span> </h1>
        <h2 class="auto-style2">Please Enter Your Username and Password!!!</h2>
    </div>
        <div class="auto-style3">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Ferry2.jpg" />
            <br />
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Username:" ForeColor="#006600"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Password:" ForeColor="#006600"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Password" runat="server" TextMode="password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
