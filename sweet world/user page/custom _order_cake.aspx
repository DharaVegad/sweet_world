<%@ Page Title="" Language="C#" MasterPageFile="~/user page/Master_des_home.master" AutoEventWireup="true" CodeFile="custom _order_cake.aspx.cs" Inherits="user_page_custom__order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%--<asp:Image ID="Image1" ImageUrl="~/images/images(15).jpg" runat="server" />--%>

    <div class="content" style="background-position: center center; background-image: url('../images/Forse qualcuno .jpg')">
    
    <center>

        


        <br />

        
    <asp:Label ID="Label2" runat="server" Text="WEIGHT" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" BackColor="#B9583C" Font-Bold="True" ForeColor="Black" >
            <asp:ListItem>500 gm</asp:ListItem>
            <asp:ListItem>1 kg</asp:ListItem>
            <asp:ListItem>2 kg</asp:ListItem>
            <asp:ListItem>3 kg</asp:ListItem>
            <asp:ListItem>4 kg</asp:ListItem>

        

        </asp:DropDownList><br/><br/><br/>

       

    <asp:Label ID="Label3" runat="server" Text="COLOR" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#B9583C" Font-Bold="True" ForeColor="Black">
        <asp:ListItem>BLUE</asp:ListItem>
        <asp:ListItem>PINK</asp:ListItem>
        <asp:ListItem>ORANGE</asp:ListItem>
        <asp:ListItem>CHOCOLATE</asp:ListItem>
        <asp:ListItem>PURPLE</asp:ListItem>
        <asp:ListItem>RED</asp:ListItem>
        <asp:ListItem>GREEN</asp:ListItem>
        <asp:ListItem>BROWN</asp:ListItem>
        </asp:DropDownList><br/><br/><br/>

    <asp:Label ID="Label4" runat="server" Text="THEME" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="#B9583C" Font-Bold="True" ForeColor="Black">
        <asp:ListItem>WEDDING</asp:ListItem>
        <asp:ListItem>BIRTHDAY PARTY</asp:ListItem>
        <asp:ListItem>VALENTINE</asp:ListItem>
        <asp:ListItem>PARTY</asp:ListItem>
        </asp:DropDownList><br/><br/><br/>

    <asp:Label ID="Label5" runat="server" Text="FLAVOUR" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:DropDownList ID="DropDownList4" runat="server" BackColor="#B9583C" Font-Bold="True" ForeColor="Black">
        <asp:ListItem>BLACK FOREST</asp:ListItem>
        <asp:ListItem>RED VELVET</asp:ListItem>
        <asp:ListItem>CHOCOLATE</asp:ListItem>
        <asp:ListItem>WHITE CHOCOLATE WITH RASPBERRY</asp:ListItem>
        <asp:ListItem>LEMON</asp:ListItem>
        <asp:ListItem>VANILLA</asp:ListItem>
        <asp:ListItem>COCONUT AND LIME</asp:ListItem>
        <asp:ListItem>PINK CHAMPAGNE</asp:ListItem>
        <asp:ListItem>CARROT</asp:ListItem>
        <asp:ListItem>CHOCO TRUFFLE</asp:ListItem>
        <asp:ListItem>RUM AND RASIN</asp:ListItem>
        <asp:ListItem>WHITE FOREST</asp:ListItem>
        <asp:ListItem>COFFEE </asp:ListItem>
        <asp:ListItem>PINEAPPLE</asp:ListItem>
        <asp:ListItem>CARAMEL APPEL CINNAMON</asp:ListItem>
        <asp:ListItem>CARAMEL CHOCOLATE CHIP</asp:ListItem>
        <asp:ListItem>CHOCOLATE COOKIE CRUNCH</asp:ListItem>
        </asp:DropDownList><br/><br/><br/>

    <asp:Label ID="Label6" runat="server" Text="EGG" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:RadioButton ID="RadioButton1" Text="YES" runat="server" BackColor="#B9583C" Font-Bold="True" ForeColor="Black" />
    <asp:RadioButton ID="RadioButton2" Text="NO" runat="server" BackColor="#B9583C" Font-Bold="True" ForeColor="Black" /><br/><br/><br/>

    <asp:Label ID="Label7" runat="server" Text="SHAPE" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:DropDownList ID="DropDownList5" runat="server" BackColor="#B9583C" Font-Bold="True" ForeColor="Black">
        <asp:ListItem>ROUND</asp:ListItem>
        <asp:ListItem>HEART</asp:ListItem>
        <asp:ListItem>SQUARE</asp:ListItem>
        </asp:DropDownList><br/><br/><br/>

    <asp:Label ID="Label8" runat="server" Text="MSG" Font-Bold="True" Font-Names="Beautiful Script" Font-Size="X-Large" ForeColor="#660066"></asp:Label><br/><br/>
    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" BackColor="#B9583C" Font-Bold="True" ForeColor="Black"></asp:TextBox><br/><br/><br/>

        <asp:Label ID="Labelout" runat="server" Text="Label" Font-Size="XX-Large" Height="42px" Width="137px" Font-Bold="True" Font-Names="Adobe Fangsong Std R" ForeColor="#000099"></asp:Label><br/><br/><br/>

        <asp:Button ID="Button1" runat="server" Text="DONE..!" OnClick="Button1_Click" BackColor="#993333" BorderColor="#FF99CC" BorderStyle="Dashed" BorderWidth="4px" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="40px" Width="128px"></asp:Button>

        

    </center>
    </div>

</asp:Content>


