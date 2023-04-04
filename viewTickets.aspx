<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewTickets.aspx.cs" Inherits="project.viewTickets" %>
<asp:Content  CssClass="footerr" ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .footerr{
            z-index:-1;
        }

        .ticket{
    width: 486px;
    height: 600px;
    margin-right: 56px;
    padding-top: 50px;
        }

    .book_id{
        position:absolute;
        top:37%;
        left:50%;
    }

    .fromcss{
     position:absolute;
     top:49%;
     left:41%;

       
    }

        .tocss{
     position:absolute;
     top:49%;
     left:55%;

       
    }

            .flightcss{
     position:absolute;
     top:59%;
     left:42%;

       
    }

                      .seatcss{
     position:absolute;
     top:59%;
     left:56%;

       
    }

 .namecss{
     position:absolute;
     top:75%;
     left:40%;  
    }

  .emailcss{
     position:absolute;
     top:83%;
     left:38%;  
    }

    .agecss{
     position:absolute;
     top:75%;
     left:57%;  
    }

        .gendercss{
     position:absolute;
     top:83%;
     left:57%;  
    }



    </style>


<form runat="server">

    <div style="margin-left: 33%;">
     <asp:Image ID="Image1" runat="server" CssClass="ticket" ImageUrl="~/airticket.png" />
   </div>
     <asp:Label ID = "booking_id" CssClass="book_id"  Font-Size ="medium"  Font-Bold="true" runat="server">Booking ID</asp:Label>
     <asp:Label ID="from"  Font-Size ="medium" CssClass="fromcss"  Font-Bold="true" runat="server">Source</asp:Label>
     <asp:Label ID="to" Font-Size ="medium"  CssClass="tocss"   Font-Bold="true" runat="server">Destination</asp:Label>
     <asp:Label ID="name" Font-Size ="medium"  CssClass="namecss"   runat="server">Name</asp:Label>
     <asp:Label ID="email" Font-Size ="medium"  CssClass="emailcss" runat="server">Email</asp:Label>
     <asp:Label ID="age" Font-Size ="medium"  CssClass="agecss"   runat="server">Age</asp:Label>
     <asp:Label ID="gender" Font-Size ="medium"  CssClass="gendercss"  runat="server">Gender</asp:Label>
     <asp:Label ID="seat" Font-Size ="medium"  CssClass="seatcss"   Font-Bold="true" runat="server">Seat</asp:Label>
     <asp:Label ID="flight" Font-Size ="medium"  CssClass="flightcss"  Font-Bold="true" runat="server">Flight</asp:Label>


</form>

</asp:Content>

