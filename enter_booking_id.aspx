<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="enter_booking_id.aspx.cs" Inherits="project.enter_booking_id" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .inputt{
            position: absolute;
    top: 32%;
    left: 40%;
    width: 25%;
    background-color: rgba(0,0,0,0);
    border: solid 1px white;
    border-radius: 8px;
    height: 30px;
    color:white;
    text-align:center;
        }

           .searchbtn { 
               height: 25px;
    width: 50px;
    position: absolute;
    top: 32.5%;
    left: 62%;

}

    </style>


       <form id="form1" runat="server">
        <div class="auto-style1"  >
             <asp:Image ID="Image1" runat="server" CssClass="ticket" ImageUrl="Helper/img/contact-bg.jpg" />

            <asp:Label style="    position:absolute;
    top: 26%;
    color: white;
    font-weight: bold;
    font-size: 21px;
    text-decoration: underline;
    left: 43%;" >Enter Your Booking ID </asp:Label>

            <asp:TextBox CssClass="inputt" ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
            <asp:ImageButton CssClass="searchbtn" ID="ImageButton1" runat="server" ImageUrl="~/search2.png" Height="25px" Width="25px" onClick="ImageButton1_Click" />

        </div>
    </form>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
