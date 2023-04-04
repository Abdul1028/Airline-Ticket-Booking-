<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script type="text/javascript">  
            function alertMessage() {
                alert('Logged in Succesfull!');
            }

            function alertMessage2() {
                alert('Invalid Credentials!');
            }

        </script>

    <style>
         .welcome{
    position: fixed;
    top: 3%;
    right: 7%;
    font-weight: bold;
    font-size: 21px;
    font-family: 'Open Sans';
    z-index:1;
    color:white;
}

.box{
    position:relative;
    left:-9%;
}

.bth_submit{
    width: 100%;
    height: 36px;
    background-color: #ffe165;
    font-size: 13px;
    color: #121212;
    font-weight: 600;
}

    </style>


    <asp:Label CssClass="welcome" runat="server" Text="Username here" ID="welcome"></asp:Label>




    <section class="banner" id="top"  >
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-4">
                    <section id="first-tab-group" class="tabgroup">
                        <div id="tab1">
                            <div class="submit-form box ">
                                <h4>Welcome to <em>Hawayeein</em>:</h4>
                                <form id="form1" runat="server">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <fieldset id="from">
                                                <label for="from">From:</label>

                                                <asp:DropDownList runat="server" AutoPostBack="True" Height="36px" Width="100%" ID="from">
                                                    <asp:ListItem selected >Select a location...</asp:ListItem>
                                                    <asp:ListItem>Mumbai</asp:ListItem>
                                                    <asp:ListItem>Chennai</asp:ListItem>
                                                    <asp:ListItem>Kolkata</asp:ListItem>
                                                    <asp:ListItem>Hyderabad</asp:ListItem>
                                                    <asp:ListItem>Bangalore</asp:ListItem>
                                                    <asp:ListItem>Ahmedabad</asp:ListItem>
                                                    <asp:ListItem>Jaipur</asp:ListItem>
                                                    <asp:ListItem>Aurangabad</asp:ListItem>
                                                </asp:DropDownList>
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                <label for="to">To:</label>
                                                 <asp:DropDownList runat="server" AutoPostBack="True" Height="36px" Width="100%" ID="to">
                                                    <asp:ListItem selected >Select a location...</asp:ListItem>
                                                    <asp:ListItem>Mumbai</asp:ListItem>
                                                    <asp:ListItem>Chennai</asp:ListItem>
                                                    <asp:ListItem>Kolkata</asp:ListItem>
                                                    <asp:ListItem>Hyderabad</asp:ListItem>
                                                    <asp:ListItem>Bangalore</asp:ListItem>
                                                    <asp:ListItem>Ahmedabad</asp:ListItem>
                                                    <asp:ListItem>Jaipur</asp:ListItem>
                                                    <asp:ListItem>Aurangabad</asp:ListItem>
                                                </asp:DropDownList>
                                            </fieldset>
                                        </div>
                                            <asp:Button CssClass=" bth_submit btn" runat="server" Text="Check Availability" OnClick="Unnamed3_Click" />

                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                
                                               
                                            </fieldset>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </section>




</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
