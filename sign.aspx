<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="project.WebForm2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">  
        function alertMessage() {
            alert('Signup Succesfull Now you can Login!');
        }

        function alertMessage2() {
            alert('Error!');
        }


        function alertMessage3() {
            alert('Password is not same!');
        }

 

    </script>




    <form id="form1" runat="server">
        <div class=" page-holder d-flex align-items-center" style="background-image: url();background-image: url(Helper/img/signup_bg.jpg);" https:="" amymhaddad.s3.amazonaws.com="" morocco-blue.png")"="">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-25 col-lg-7 mx-auto mb-5 mb-lg-0">
                    
                        <div class="pr-lg-5"> 
                            <img  src="Helper\img\illustrations.svg" alt="" class="img-fluid" />     
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4" style="position:relative; right:0%; margin-bottom:20px; ">
                        <h1 class="text-base text-primary text-uppercase mb-4">Sign up Here</h1>
                        <h2 style="color:whitesmoke" class="mb-4">Hawayeein SignUp!</h2>

  
                         <div class ="form-group mb-4">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0);  color:white;  width: 100%;" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Name" runat="server" ID="name" ></asp:TextBox>

                        </div>
                          <div class ="form-group mb-4" id="username">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0);  color:white; width: 100%;" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="User Name" runat="server" ID="username" ></asp:TextBox>

                        </div>
                         <div class ="form-group mb-4">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0);  color:white; width: 100%;" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ID="email" ></asp:TextBox>

                        </div>
                             <div class ="form-group mb-4">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0);  color:white;  width: 100%;" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ID="pass" ></asp:TextBox>

                        </div>
                           <div class ="form-group mb-4">
                            <asp:TextBox style= "background-color:rgba(0,0,0,0);  color:white; width: 100%;" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Confirm Password" runat="server" ID="pass2" ></asp:TextBox>

                        </div>
                       
                        <asp:Button Text="Sign up" CssClass="btn btn-primary" Height="50px" Width="465px" runat="server" ID="signinbtn" OnClick="Unnamed7_Click" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </div>
               
            </div>
            
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
