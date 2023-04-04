<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="project.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <script type="text/javascript">  
        function alertMessage() {
            alert('Logged in Succesfull!');
        }

        function alertMessage2() {
            alert('Invalid Credentials!');
        }

        </script>

    <form id="form1" runat="server">
        <div class=" page-holder d-flex align-items-center" style="background-image: url();background-image: url(Helper/img/contact-bg.jpg);" https:="" amymhaddad.s3.amazonaws.com="" morocco-blue.png")"="">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                    
                        <div class="pr-lg-5">
                            <img src="illustration.svg" alt="" class="img-fluid">     
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4" style="position:relative; right:25%; margin-bottom:20px; ">
                        <h1 class="text-base text-primary text-uppercase mb-4">Login Here</h1>
                        <h2 style="color:whitesmoke;" class="mb-4">Login to your Hawayeein Account!</h2>

                         <div class ="form-group mb-4">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0); width: 70%;" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ID="userbox" ></asp:TextBox>

                        </div>
                             <div class ="form-group mb-4">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0); width: 70%;" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ID="passbox" ></asp:TextBox>

                        </div>
                        <div class="form-group mb-4">
                            <div style="color:white" class="custom-control custom-checkbox">
                               New Here ?? <a href="sign.aspx">SignUp</a>
                            </div>
                        </div>
                        <asp:Button Text="Log In" CssClass="btn btn-primary"  Width="70%" runat="server" ID="loginbtn" OnClick="loginbtn_Click"/>
                    </div>
                </div>
              
            </div>
            
        </div>
    </form>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
