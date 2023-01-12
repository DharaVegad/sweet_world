<%@ Page Title="" Language="C#" MasterPageFile="~/Master_admin.master" AutoEventWireup="true" CodeFile="project_reg.aspx.cs" Inherits="project_reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content">

        <center>
        <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label><br/>
        <asp:TextBox ID="txtnm" runat="server" BorderStyle="Outset"></asp:TextBox><br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtnm" ValidationGroup="r"></asp:RequiredFieldValidator><br/><br/>

        <asp:Label ID="Label2" runat="server" Text="Contact no."></asp:Label><br/>
        <asp:TextBox ID="txtcono" runat="server" BorderStyle="Outset"></asp:TextBox><br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtcono" ValidationGroup="r"></asp:RequiredFieldValidator><br/><br/><br/>
        

        <asp:Label ID="Label3" runat="server" Text="E-mail"></asp:Label><br/>
        <asp:TextBox ID="txtemail" runat="server" BorderStyle="Outset"></asp:TextBox><br/>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorMail" runat="server" ValidationGroup="r" ErrorMessage="Improper email address!" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br/><br/><br/>

        <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label><br/>
        <asp:TextBox ID="txtpass" runat="server" BorderStyle="Outset"></asp:TextBox><br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ValidationGroup="r" ErrorMessage="Invalid password!" ControlToValidate="txtpass"></asp:RequiredFieldValidator><br/><br/><br/>

        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="d" Text="Male"/>
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="d"/><br/><br/><br/>

        <asp:Label ID="Label7" runat="server" Text="city"></asp:Label><br/>
        <asp:TextBox ID="txtcity" runat="server" BorderStyle="Outset"></asp:TextBox><br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="r" ControlToValidate="txtcity" ErrorMessage="*"></asp:RequiredFieldValidator><br /><br/>

      

        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" ValidationGroup="r" />

        
        </center>
        </div>
     
</asp:Content>

