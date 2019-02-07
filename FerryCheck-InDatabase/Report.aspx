<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="FerryCheck_InDatabase.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #006600;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <h1 class="auto-style1"> Montserrat Ferry Service Report</h1>
        </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Sex:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="Sex" runat="server">
            <asp:ListItem Value="M">M</asp:ListItem>
            <asp:ListItem Value="F">F</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Entry Date:"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/Images/Calendar-1.jpg" OnClick="ImageButton1_Click" Width="18px" />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" Visible="false" OnSelectionChanged="Calendar1_SelectionChanged">
        </asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Data Entry" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Passenger Count:"></asp:Label>
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
                <asp:BoundField DataField="LastName" HeaderText="Lasst Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" />
                <asp:BoundField DataField="DOB" HeaderText="Date of Birth" DataFormatString="{0:MM/dd/yyyy}" />
                <asp:BoundField DataField="Nationality" HeaderText="Nationality" />
                <asp:BoundField DataField="PassportNumber" HeaderText="Passport #" />
                <asp:BoundField DataField="DateOfIssue" HeaderText="Issue Date" DataFormatString="{0:MM/dd/yyyy}" />
                <asp:BoundField DataField="DateOfExpire" HeaderText="Expire Date" DataFormatString="{0:MM/dd/yyyy}"/>
                <asp:BoundField DataField="Destination" HeaderText="Destination" />
                <asp:BoundField DataField="EntryDate" HeaderText="Entry Date" DataFormatString="{0:MM/dd/yyyy}"/>
            </Columns>
        </asp:GridView>
        
        <br />
        <asp:Label ID="Label5" runat="server" Text="I hereby declare that the above list is complete, and that the above particulars to the best of my knowledge, Information and belief are true and correct in every respect."></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="For Comptroller of Customs"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="For Master"></asp:Label>
        <br />
        
        <br />
    </div>
    </form>
</body>
</html>
