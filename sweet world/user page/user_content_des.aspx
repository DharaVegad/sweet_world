<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="user_content_des.aspx.cs" Inherits="designer_page_user_content_des" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 146px;
        }
        .auto-style4 {
            height: 95px;
        }
        .auto-style5 {
            height: 101px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="content">

    <center>

        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" DataSourceID="SqlDataSource1" BackColor="#CCFFFF">

            <ItemTemplate>

                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#660066" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <br />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />

            </ItemTemplate>

        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [photo], [name], [description] FROM [recipe] WHERE ([name] = @name)">
            <SelectParameters>
                <asp:QueryStringParameter Name="name" QueryStringField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </center>

</div>

</asp:Content>

