<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="order1.aspx.cs" Inherits="user_page_order1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content">
    <center>

    <asp:Image ID="Image1" ImageUrl="~/images/54866662.cms.gif" runat="server" Height="300px" Width="300px" />
    <asp:LinkButton ID="LinkButton1" PostBackUrl="~/user page/cupcake_order.aspx" runat="server" Font-Size="XX-Large" Height="45px" Width="230px" BackColor="#993333" BorderColor="#FF9999" BorderStyle="Dashed" BorderWidth="5px" ForeColor="White">CUPCAKE</asp:LinkButton><br/>

    <asp:Image ID="Image2" ImageUrl="~/images/post_4484557.jpeg" runat="server" Height="300px" Width="300px" />
    <asp:LinkButton ID="LinkButton2" PostBackUrl="~/user page/custom _order_cake.aspx" runat="server" Font-Size="XX-Large" BackColor="#993333" BorderColor="#FF6699" BorderStyle="Dashed" BorderWidth="5px" Font-Bold="True" ForeColor="White" Height="41px" Width="132px">CAKE</asp:LinkButton>

    </center>
    </div>
</asp:Content>

