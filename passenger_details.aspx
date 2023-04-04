<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="passenger_details.aspx.cs" Inherits="project.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        .divvv{
    padding-top: 107px;
    text-align: center;
    background-image:url(Helper/img/contact-bg.jpg);
    background-repeat: no-repeat;
     margin-bottom: -214px;
 
        }

        #f ,#m{
            position:relative;
            left:610px;
            padding-right:20px;
            padding-top:10px;
           
        }

        .label1 {
           color:azure;
        }

         .label2 {
           color:azure;
           font-weight:bold;
           font-size:20px;

        }

        .inputs{
            background-color:rgba(0,0,0,0);
            border:solid 1px white;
            border-radius:3px;
            padding-left:5px;
        }

        .btn{
               background-color: #ffe165;
            border:solid 1px white;
            border-radius:3px;
            color: #121212;
            font-weight:bold;
            width:70px;
        }

    </style>


 
    <form id="form1" runat="server">
        <div CssClass="divvv" class="divvv" >

        <asp:Label ID="Label2" class="label2" runat="server" Text="Fill in your details "></asp:Label>
        <br />
            <br />
       <label class="label1" >Name</label>
        <asp:TextBox class="inputs" ID="namebox" runat="server"></asp:TextBox>
        <br />
        <br />
        <label class="label1"> Age &nbsp &nbsp</label>
        <asp:TextBox ID="agebox" class="inputs" runat="server"></asp:TextBox>
        <br />
        <br />
       <label class="label1"> Email &nbsp &nbsp</label>
        <asp:TextBox ID="emailbox" class="inputs" runat="server"></asp:TextBox>
        <br />
        <br />
     <label class="label1"> Gender &nbsp &nbsp</label>
        <asp:RadioButtonList ID="genderbox" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem ID="m" class="label1" >Male</asp:ListItem>
            <asp:ListItem ID="f" class="label1" >Female</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;<br />
        <asp:Button ID="Button1" class="btn"  runat="server" OnClick="Button1_Click" Text="Book" />
        <br />
        <br />
        <br />
        <asp:Label ID="status" Visible="false" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="book_id" Visible="false" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="seat_no" Visible="false" runat="server" Text="Label"></asp:Label>
        <br />
&nbsp;&nbsp;
        <br />
        <asp:Label ID="deleted" Visible="false" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
      <asp:Label ID="Label3" Visible="false" runat="server" Text="Label"></asp:Label>
           <br />
        <br />
        <br />
      <asp:Label ID="Label4" Visible="false" runat="server" Text="Label"></asp:Label>
                    </div>
    </form>



    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
