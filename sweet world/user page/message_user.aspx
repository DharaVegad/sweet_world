<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="message_user.aspx.cs" Inherits="message_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    
    
.main-box {
        height:auto;
        width:1325px;
        float:left;
        margin:50px 0 0 10px;
    }

    .left-box {
        height:350px;
        width:32%;
        float:left;
        margin-left:15px;
        margin-top:8px;
        border-radius:10px 10px 10px 10px;
        -webkit-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        -moz-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        box-shadow: 0px 0px 3px 0.5px rgba(40,40,40,0.3);
    }
       
    .middle-box {
        height:350px;
        width:32%;
        float:left;
        margin-left:15px;
        margin-top:8px;
        border-radius:10px 10px 10px 10px;
        -webkit-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        -moz-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        box-shadow: 0px 0px 3px 0.5px rgba(40,40,40,0.3);
        background-color:rgba(183, 177, 177, 0.30);
        overflow:auto;
    }

    .right-box {
        height:350px;
        width:32%;
        float:left;
        margin-left:15px;
        margin-top:8px;
        border-radius:10px 10px 10px 10px;
        -webkit-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        -moz-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        box-shadow: 0px 0px 3px 0.5px rgba(40,40,40,0.3);
        overflow:auto;
        background-color:rgba(183, 177, 177, 0.30);
    }

    .txt-box {
        border-radius:5px 5px 5px 5px;
        float:left;
        margin:20px auto auto 20px;
        height:160px;
        width:380px;
        outline:none;
    }

    .txt-title {
        height:30px;
        width:81%;
        padding:0 20px 0 20px;
        border-radius:5px 5px 5px 5px;
        float:left;
        border:0.5px solid silver;
        outline:none;
        margin:20px 0 0 0;
        margin-left:20px;
    }

    .dd-list {
        height:30px;
        width:275px;
        margin:20px auto auto 20px;
        border-radius:5px 5px 5px 5px;
        outline:none;
    }

    .send-btn {
        border-radius:5px 5px 5px 5px;
        border:none;
        outline:none;
        cursor:pointer;
        background-color:#1b66dd;
        color:white;
    }
        .send-btn:hover {
            background-color:#1898b5;
        }


    .out-msg-tbl {
        width:90%;
        height:auto;
        margin:10px 0 0 20px;
        border-radius:5px 5px 5px 5px;
        background-color:white;
    }

    .btn-view {
        float:left;
        height:20px;
        width:75px;
        background-color:#1b66dd;
        text-decoration:none;
        color:white;
        text-align:center;
        padding-top:4px;
        border-radius:5px 5px 5px 5px;
        margin-left:10px;
    }
        .btn-view:hover {
            background-color:#4d8cef;
        }

    .btn-del {
        float:left;
        height:20px;
        width:75px;
        background-color:#e6711a;
        text-decoration:none;
        color:white;
        text-align:center;
        padding-top:4px;
        border-radius:5px 5px 5px 5px;
        margin-left:10px;
    }
        .btn-del:hover {
            background-color:#d81616;
        }

    .msg-box {
        height:200px;
        width:75%;
        float:left;
        top:0;
        margin:-40px 0 0 160px;
        border-radius:10px 10px 10px 10px;
        -webkit-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        -moz-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        box-shadow: 0px 0px 3px 0.5px rgba(40,40,40,0.3);
    }

    .msg-text {
        height:175px;
        width:95%;
        float:left;
        top:0;
        margin:13px 0 0 25px;
        border-radius:10px 10px 10px 10px;
        -webkit-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        -moz-box-shadow: 0 0px 3px 0.5px rgba(40,40,40,0.3);
        box-shadow: 0px 0px 3px 0.5px rgba(40,40,40,0.3);
        overflow:auto;
    }

    .btn-box {
        height:175px;
        width:10%;
        float:left;
        top:0;
        margin:13px 0 0 10px;
        
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="content">
            
            
        
    <div class="main-box">

        <div class="msg-box">
            <div class="msg-text">
                
                <asp:Label ID="msg_title" runat="server" Text="" style="float:left; margin:10px 0 0 10px; font-size:16px; font-weight:bold;"></asp:Label>
                <br /><br />
                
                <lable style="float:left;margin-left:10px;margin-top:10px;">Message : </lable><br />
                <asp:Label ID="msg_txt" runat="server" Text="select buttons to perform action" style="float:left; margin:10px 0 0 10px;"></asp:Label>
                <br /><br />
                <%if(Session["user_id"]!=null){ %>
                <lable style="float:left;margin-left:10px;margin-top:10px;">Designer : </lable><br />
                <asp:Label ID="dsgr_nm" runat="server" Text="" style="float:left; margin:10px 0 0 10px;"></asp:Label>
                <%}if(Session["des_id"]!=null){ %>
                <lable style="float:left;margin-left:10px;margin-top:10px;">Customer : </lable><br />
                <asp:Label ID="usr_nm" runat="server" Text="" style="float:left; margin:10px 0 0 10px;"></asp:Label>
                <%} %>

            </div>
            
        </div>
        
        <div style="width:100%; height:35px; margin-top:20px; float:left;">
            <label style="font-family:Calibri; color:#1b66dd; font-weight:bold; font-size:20pt; float:left; margin-left:165px;">Compose</label>
            <label style="font-family:Calibri; color:#1b66dd; font-weight:bold; font-size:20pt; float:left;margin-left:360px;">Inbox</label>
            <label style="font-family:Calibri; color:#1b66dd; font-weight:bold; font-size:20pt; float:left; margin-left:380px;">Outbox</label>
        </div>

        <div class="left-box">

            <asp:TextBox runat="server" ID="txt_title" CssClass="txt-title" placeholder="Subject" ValidationGroup="req"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_title" ValidationGroup="req"></asp:RequiredFieldValidator>--%>

            <asp:TextBox ID="txt_msg" runat="server" CssClass="txt-box" TextMode="MultiLine" style="overflow:scroll" placeholder="Enter your message" ValidationGroup="req"></asp:TextBox><br /><br /><br />
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_msg" ValidationGroup="req"></asp:RequiredFieldValidator>--%>
            
            <%if(Session["user_id"]!=null){ %>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" CssClass="dd-list"></asp:DropDownList>


            <%}if(Session["des_id"]!=null){ %> 
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="username" DataValueField="username" CssClass="dd-list"></asp:DropDownList>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [username] FROM [registration]"></asp:SqlDataSource>
            <%} %>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [Id] FROM [des_list] order by Id desc"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="SEND" OnClick="Button1_Click" Height="31px" Width="105px" CssClass="send-btn"></asp:Button>

            <asp:Label ID="lbl_msg" runat="server" style="height:20px; width:auto; font-size:12pt; font-family:Calibri; font-weight:bold; background-color:red; color:white; float:left;margin:10px 0 0 25px; padding:3px 3px 3px 3px;"></asp:Label>

            <asp:DataList ID="DataList1" runat="server"></asp:DataList>

        </div>

        <div class="middle-box">
            <asp:Repeater ID="in_repeater" runat="server">
                <ItemTemplate>
                    <div class="out-msg-tbl">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_date" runat="server" style="font-family:Calibri; float:left; margin-left:175px;"><%#Eval("msg_dt") %></asp:Label>
                                </td>
                            </tr>
                            <tr>                                
                                <td>
                                    <asp:Label ID="lbl_out_msg" runat="server" style="font-family:Calibri; font-weight:bold; font-size:13pt; float:left; margin-left:10px;"><%#Eval("title") %></asp:Label>
                                </td>                                                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="btn_view" OnClick="view_msg_click" runat="server" CommandArgument='<%#Eval("msg_id") %>' CssClass="btn-view">view</asp:LinkButton>
                                    <asp:LinkButton ID="btn_del" OnClick="del_msg_click" runat="server" CssClass="btn-del" CommandArgument='<%#Eval("msg_id") %>' OnClientClick="return confirm('Do you want to delete?');">delete</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>




        <div class="right-box">
            <asp:Repeater ID="out_repeat" runat="server">
                <ItemTemplate>
                    <div class="out-msg-tbl">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_date" runat="server" style="font-family:Calibri; float:left; margin-left:175px;"><%#Eval("msg_dt") %></asp:Label>
                                </td>
                            </tr>
                            <tr>                                
                                <td>
                                    <asp:Label ID="lbl_out_msg" runat="server" style="font-family:Calibri; font-weight:bold; font-size:13pt; float:left; margin-left:10px;"><%#Eval("title") %></asp:Label>
                                </td>                                                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="btn_view" OnClick="view_msg_click" runat="server" CommandArgument='<%#Eval("msg_id") %>' CssClass="btn-view">view</asp:LinkButton>
                                    <asp:LinkButton ID="btn_del" OnClick="del_msg_click" runat="server" CssClass="btn-del" CommandArgument='<%#Eval("msg_id") %>' OnClientClick="return confirm('Do you want to delete?');">delete</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
  
    </div>

</div>

</asp:Content>

