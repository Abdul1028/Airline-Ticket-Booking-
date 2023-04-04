<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="show_flights.aspx.cs" Inherits="project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>


                .selectt {
                    margin-top:50px;
    word-wrap: normal;
    width: 180px;
    border: solid 1px black;
    padding: 10px 10px 10px 10px;
    font-size: 12px;
    font-family: TimesNewRoman;
    font-family: bold;
    font-family: 'Open Sans', arial, sans-serif;
    background-color: #1f3646;
    color: #fff;
}
        
        .headlabel{
            font-size: 25px; margin-right: 138px; margin-top: 30px; margin-bottom: 10px; margin-left: 44%; font-weight: bold;
        }

    </style>

    <form runat="server" >

         <br />
           <asp:DropDownList CssClass="selectt disabled " ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
               <asp:ListItem selected >  Filter Your Search </asp:ListItem>
               <asp:ListItem>Indigo</asp:ListItem>
               <asp:ListItem>Vistara</asp:ListItem>
               <asp:ListItem >Lufthansa</asp:ListItem>
               <asp:ListItem>Cheapest and Costliest</asp:ListItem>

           </asp:DropDownList>

        
     
       
           <br />

               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AutoGenerateSelectButton="true" CssClass="table table-bordered" HorizontalAlign="Center" >
                <AlternatingRowStyle BackColor="White" />
                <HeaderStyle BackColor="#1f3646" Font-Bold="true" Font-Size="15px" ForeColor="#ffe165" />
                <RowStyle Font-Size="13px" BackColor="#f5f5f5" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                <Columns>

                    <asp:BoundField DataField="Source" HeaderText="Source" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" />
                    <asp:BoundField DataField="Flight" HeaderText="Airline"/>
                    <asp:BoundField DataField="Duration" HeaderText="Duration" />
                    <asp:BoundField DataField="Arrival" HeaderText="Arrival" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" />
                    <asp:BoundField DataField="flight_no" HeaderText="Flight" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="book" OnClick="Unnamed1_Click">Book</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>


            </asp:GridView>
        </form>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
</asp:Content>
