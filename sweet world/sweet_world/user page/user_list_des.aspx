<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="user_list_des.aspx.cs" Inherits="designer_page_user_list_des" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 117px;
        }
        .auto-style3 {
            height: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>

    <center>

    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList2_ItemCommand" RepeatColumns="3">

        <ItemTemplate>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' Height="200px" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" CommandName="viewdetail" Text='<% #Eval("name") %>' CommandArgument='<% #Eval("name") %>'/>
                    </td>
                </tr>
            </table>
            <br />
            <br />

        </ItemTemplate>

    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [photo], [name] FROM [recipe]"></asp:SqlDataSource>

        </center>

</div>

</asp:Content>

