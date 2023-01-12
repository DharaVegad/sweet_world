<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="recep_content.aspx.cs" Inherits="designer_page_des_content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 397px;
        }
        .auto-style3 {
            height: 145px;
        }
        .auto-style4 {
            height: 66px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="content">

    <center>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="#CCFFFF">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' Height="500px" Width="500px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" style="text-align: left" Text="HOW TO MAKE IT  :"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </td>
                </tr>
            </table>
<br />
            <br />
        </ItemTemplate>



    </asp:DataList>


    
        


    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [photo], [name], [description] FROM [recipe]"></asp:SqlDataSource>


    
        


    
        </center>

</div>

</asp:Content>

