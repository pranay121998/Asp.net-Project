<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="LoginWebForm.aspx.cs" Inherits="EmployeeWorkBook.WebFroms.Users.LoginWebForm" %>


<asp:Content ContentPlaceHolderID="MainContent" ID="LoginForm" runat="server">
      <style>
        .submitBtn {
            background: var(--color-primary);
            border: 0;
            padding: 14px 45px;
            color: #fff;
            transition: 0.4s;
            border-radius: 50px !important;
        }
    </style>
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container">

            <div class="section-header">
                <h2>Employee Registration Form</h2>
                <%--<p>Nulla dolorum nulla nesciunt rerum facere sed ut inventore quam porro nihil id ratione ea sunt quis dolorem dolore earum</p>--%>
            </div>

            <div class="row gx-lg-0 gy-4">

                <div class="col-lg-8">

                    <div class="info-container d-flex flex-column align-items-center justify-content-center">


                        <div class="col-lg-6">
                            <img src="../../Content/img/stats-img.svg" alt="" class="img-fluid">
                        </div>
                    </div>
                    <!-- End Info Item -->

                </div>

                <div class="col-lg-4">
                    <div class="php-email-form" style="">

                        <div class="row">
                            <div class=" form-group">
                                <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control" placeholder="Email" CausesValidation="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequireEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" Font-Size="Small" Display="Dynamic">Email is Required.</asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegexForEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" Display="Dynamic" ForeColor="Red" Font-Size="Small">Please Input Valid Email.</asp:RegularExpressionValidator>
                                </div>
                        </div>
                  
                        <div class=" form-group">
                            <asp:TextBox ID="textPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequirePass" runat="server" ControlToValidate="textPassword" ForeColor="Red" Font-Size="Small">Password is Required.</asp:RequiredFieldValidator>
                            </div>
                        <div class="text-center mt-3">
                            <asp:Button ID="btnReg" Text="Submit" runat="server"  CssClass="submitBtn" OnClick="OnSubmit" />
                            <%--<button type="submit" >Submit</button>--%>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Section -->

</asp:Content>