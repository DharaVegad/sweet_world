<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="custom_order.aspx.cs" Inherits="user_page_custom_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <center>

    

    <asp:Label ID="Label1" runat="server" Text="NAME" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:TextBox ID="TextBox1" runat="server" BackColor="#993333" ForeColor="White"></asp:TextBox><br/><br/><br/>

    <asp:Label ID="Label2" runat="server" Text="CONTACT NO." Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:TextBox ID="TextBox2" runat="server" BackColor="#993333" ForeColor="White"></asp:TextBox><br/><br/><br/>

    <asp:Label ID="Label3" runat="server" Text="EMAIL" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:TextBox ID="TextBox3" runat="server" BackColor="#993333" ForeColor="White"></asp:TextBox><br/><br/><br/>

    <asp:Label ID="Label4" runat="server" Text="ADDRESS" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:TextBox ID="TextBox4" runat="server" BackColor="#993333" ForeColor="White"></asp:TextBox><br/><br/><br/>

    <asp:Label ID="Label5" runat="server" Text="PIN" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:TextBox ID="TextBox5" runat="server" BackColor="#993333" ForeColor="White"></asp:TextBox><br/><br/><br/>

    <asp:Label ID="Label6" runat="server" Text="DATE" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#993333" ForeColor="White"></asp:Calendar><br/><br/><br/>

    
    <asp:Button ID="Button1" runat="server" Text="MAKE MY ORDER" OnClick="Button1_Click" BackColor="#CC3300" BorderColor="#FF6699" BorderStyle="Dashed" BorderWidth="5px" Font-Size="XX-Large" ForeColor="White" Width="324px"/>

    </center>
    </div>
</asp:Content>

