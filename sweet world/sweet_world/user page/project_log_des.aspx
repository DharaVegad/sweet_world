<%@ Page Title="" Language="C#" MasterPageFile="~/user page/MasterPage_des.master" AutoEventWireup="true" CodeFile="project_log_des.aspx.cs" Inherits="designer_page_project_log_des" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="content">

         <center>
         <%--<asp:Label ID="Label3" runat="server" Text="hello designers"></asp:Label><br /><br /><br/>--%>

        <asp:Label ID="Label1" runat="server" Text="FULL NAME"></asp:Label><br/>
        <asp:TextBox ID="txt_user" runat="server"></asp:TextBox><br/><br/><br/>

        <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label><br/>
        <asp:TextBox ID="txt_pass_des" runat="server" TextMode="Password"></asp:TextBox><br/><br/><br/>

        <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />

         <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/user page/project_reg_des.aspx">REGISTER</asp:LinkButton>
         </center>
    </div>

</asp:Content>

