<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="rexep_insert.aspx.cs" Inherits="user_page_rexep_insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="image"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Image ID="Image1" runat="server" /></br>

    <asp:Label ID="Label2" runat="server" Text="text"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></br>

    <asp:Label ID="Label3" runat="server" Text="description"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox></br>


    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

</asp:Content>

