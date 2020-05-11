<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalcApp.aspx.cs" Inherits="Calculatorfinal.CalcApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified" style="width: 35%">
        <tr>
            <td style="height: 17px; width: 342px">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <strong>Calculator</strong></td>
            <td style="height: 17px"></td>
        </tr>
        <tr>
            <td style="width: 342px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Number 1</td>
            <td>
                <asp:TextBox ID="number1" runat="server" Height="22px" OnTextChanged="number1_TextChanged" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 342px; height: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Number 2</td>
            <td style="height: 20px">
                <asp:TextBox ID="number2" runat="server" Height="22px" OnTextChanged="TextBox2_TextChanged" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 342px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Operator</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" style="margin-top: 10" Width="186px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="+">Add</asp:ListItem>
                    <asp:ListItem Value="-">Subtract</asp:ListItem>
                    <asp:ListItem Value="*">Multiply</asp:ListItem>
                    <asp:ListItem Value="/">Divide</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 342px; height: 25px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="height: 25px">
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" Width="184px" />
            </td>
        </tr>
        <tr>
            <td style="width: 342px; height: 25px">&nbsp;</td>
            <td style="height: 25px">
                <asp:Button ID="ClearF" runat="server" Height="24px" OnClick="ClearF_Click" Text="Clear Fields" Width="184px" />
            </td>
        </tr>
        <tr>
            <td style="width: 342px; height: 22px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong>Result</strong></td>
            <td style="height: 22px">
                <asp:TextBox ID="result" runat="server" Width="184px"></asp:TextBox>
            </td>
        </tr>
    </table>

</asp:Content>
