<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Passenger.aspx.cs" Inherits="FerryCheck_InDatabase.Passenger1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #339966;
        }
        .auto-style2 {
            color: #339966;
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            width: 131px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <div>
            <h1 class="auto-style2"> Montserrat Ferry Service Passenger Check-In System</h1>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3"> 
        <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label2" runat="server" Text="Middle Name :"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Mname" runat="server"></asp:TextBox>
                </td>
               </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label7" runat="server" Text="Last Name :"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                </td>
               </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label6" runat="server" Text="Sex :"></asp:Label>
                </td>
                <td>
        <asp:DropDownList ID="Sex" runat="server">
        </asp:DropDownList>
                </td>
               </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label3" runat="server" Text="DOB :"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="DOB" runat="server" TextMode ="Date"></asp:TextBox>
                    &nbsp;<br />
                </td>
               </tr>
            <tr>
                <td class="auto-style3">
        <asp:Label ID="Label8" runat="server" Text="Nationality:"></asp:Label>
                </td>
                <td>
        <asp:DropDownList ID="Nationality" runat="server" Height="29px" Width="130px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                </td>
               </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="Passport Number:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Passport" runat="server"></asp:TextBox>
                </td>
               </tr>
            
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Date of Issue:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="DateofIssue" runat="server" TextMode ="Date"></asp:TextBox>
                    </td>
               </tr>
             <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Date of Expire:"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="DateofExpire" runat="server" TextMode ="Date"></asp:TextBox>
                    </td>
               </tr>
             <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label15" runat="server" Text="Destination:"></asp:Label>
                 </td>
                <td>
                    <asp:DropDownList ID="Destination" runat="server">
                    </asp:DropDownList>
                 </td>
               </tr>
             <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label12" runat="server" Text="Entry Date:"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="DateofEntry" runat="server" TextMode ="Date"></asp:TextBox>
                 </td>
               </tr>
             <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label13" runat="server" Text="Period:"></asp:Label>
                 </td>
                <td>
                    <asp:DropDownList ID="Period" runat="server">
                        <asp:ListItem>Morning</asp:ListItem>
                        <asp:ListItem>Afternoon</asp:ListItem>
                        <asp:ListItem>Night</asp:ListItem>
                    </asp:DropDownList>
                 </td>
               </tr>
              <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label14" runat="server" Text="Voyage Number:"></asp:Label>
                  </td>
                <td>
                    <asp:TextBox ID="Voyage" runat="server"></asp:TextBox>
                  </td>
               </tr>
             <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Clear" />
                 </td>
                <td class="auto-style1">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" />
                 </td>
               </tr>
        </table>
            <div style="margin-left: 360px"> 
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="margin-left: 0px" Text="Reports" />
        </div>
    </form>

</body>
</html>
