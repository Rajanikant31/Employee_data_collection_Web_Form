<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Employee_data_collection.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {
            margin-left: 30px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style6 {
            text-align: center;
            width: 508px;
        }
        .auto-style7 {
            width: 100%;
            height: 277px;
        }
        .auto-style8 {
            text-align: center;
            width: 508px;
            height: 39px;
        }
        .auto-style9 {
            text-align: center;
            height: 39px;
        }
        .auto-style10 {
            margin-left: 28px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style13 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style14 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style15 {
            font-weight: bold;
            margin-left: 25px;
        }
    </style>
</head>
<body style="background-color: #CCD5F0">
    <form id="form1" runat="server">
        <div><h1 class="auto-style14">Employee Information</h1></div>
        <div>
            <table class="auto-style7" >
                <tr>
                    <td class="auto-style6"><strong>Employee Id</strong></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style6"><strong>First Name</strong></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
                
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Last Name</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
                  
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Address</strong></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtadd" runat="server"></asp:TextBox></td>
                  
                </tr>
                 <tr>
                    <td class="auto-style6"><strong>Contact no</strong></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox></td>
                  
                </tr>
                 <tr>
                    <td class="auto-style6"><strong>Department</strong></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtdept" runat="server"></asp:TextBox></td>
                  
                </tr>
                 <tr>
                    <td class="auto-style6"><strong>Salary</strong></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox></td>
                  
                </tr>
            </table>
        </div>
        <br />
        <div class="auto-style1">
            <strong>
            <asp:Button ID="Button1" runat="server" Text="Insert Data" Width="150px" Height="50px" OnClick="Button1_Click" BackColor="#FF6699" BorderColor="Yellow" BorderWidth="2px" CssClass="auto-style13" ForeColor="#000066" /> 
            <asp:Button ID="Button2" runat="server" Text="View Data" CssClass="auto-style5" Width="150px" Height="50px" BackColor="#FF6699" BorderColor="Yellow" BorderWidth="2px" ForeColor="#000066" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Update Data" CssClass="auto-style10" Width="150px" Height="50px" BackColor="#FF6699" BorderColor="Yellow" BorderWidth="2px" ForeColor="#000066" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Delete Data" CssClass="auto-style10" Width="150px" Height="50px" BackColor="#FF6699" BorderColor="Yellow" BorderWidth="2px" ForeColor="#000066" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Text="Reset" CssClass="auto-style10" Width="150px" Height="50px" BackColor="#FF6699" BorderColor="Yellow" BorderWidth="2px" ForeColor="#000066" OnClick="Button5_Click" />
                <asp:Button ID="Button6" runat="server" Text="View Data2" BackColor="#FF6699" BorderColor="Yellow" BorderWidth="2px" CssClass="auto-style15" Height="50px" OnClick="Button6_Click" Width="150px" />
            </strong>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
