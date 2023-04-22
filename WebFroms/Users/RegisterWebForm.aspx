<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RegisterWebForm.aspx.cs" Inherits="EmployeeWorkBook.WebFroms.RegisterWebForm" %>

<asp:Content ID="RegisterForm" ContentPlaceHolderID="MainContent" runat="server">

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

                <div class="col-lg-4">

                    <div class="info-container d-flex flex-column align-items-center justify-content-center">


                        <div class="col-lg-6">
                            <img src="../../Content/img/stats-img.svg" alt="" class="img-fluid">
                        </div>
                    </div>
                    <!-- End Info Item -->

                </div>

                <div class="col-lg-8">
                    <div class="php-email-form" style="">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <asp:TextBox ID="txtFirstName"  runat="server" CssClass="form-control" placeholder="First Name" required="true"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequireFirstName" ControlToValidate="txtFirstName" runat="server" ForeColor="Red" Display="Dynamic" Font-Size="Small">First Name is Required</asp:RequiredFieldValidator>

                            </div>

                            <div class="col-md-6 form-group">
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name" required="true"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequireLastName" runat="server" ControlToValidate="txtLastName" ForeColor="Red" Display="Dynamic" Font-Size="Small">Last Name is Required.</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group ">
                                <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control" placeholder="Email" CausesValidation="True"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequireEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" Font-Size="Small" Display="Dynamic">Email is Required.</asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegexForEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" Display="Dynamic" ForeColor="Red" Font-Size="Small">Please Input Valid Email.</asp:RegularExpressionValidator>
                                </div>
                            <div class="col-md-6 form-group">
                                <asp:TextBox ID="txtPhoneNumber" TextMode="Phone" MaxLength="10" placeholder="Phone Number" CssClass="form-control" runat="server" CausesValidation="False" ReadOnly="False" Font-Strikeout="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtPhoneNumber" runat="server" ID="RequirePhoneNumber" ForeColor="Red" Display="Dynamic" Font-Size="Small">Phone number is required.</asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegexForPhone" ControlToValidate="txtPhoneNumber" ForeColor="Red" Font-Size="Small" Display="Dynamic" ValidationExpression="^[6-9]\d{9}$" runat="server">Please Enter Correct Phone Number.</asp:RegularExpressionValidator>  
                             </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group ">
                                <asp:TextBox ID="DOB" TextMode="Date" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequireDOB" runat="server" ControlToValidate="DOB" ForeColor="Red" Display="Dynamic" Font-Size="Small">Date Of Birth is Required.</asp:RequiredFieldValidator>
                           </div>
                            <div class="col-md-6 form-group">
                                Gender:&nbsp;&nbsp;
                                <asp:RadioButton Text="Male" ID="Male" GroupName="Gender" runat="server" ValidationGroup="Genders" />
                                &nbsp;
                                <asp:RadioButton Text="Female" ID="Female" GroupName="Gender" runat="server" ValidationGroup="Genders"/>

                                <asp:CustomValidator runat="server" ID="customGender" OnServerValidate="CutomGenderValidation" ErrorMessage="Please Select Gender." ValidationGroup="Genders"    ></asp:CustomValidator>
                                <%--  <asp:RadioButtonList runat="server" ID="Gender" CssClass="form-control">
                                   <asp:ListItem >Male</asp:ListItem>
                                   <asp:ListItem>Female</asp:ListItem>
                               </asp:RadioButtonList>--%>
                            </div>  
                        </div>


                        <div class=" form-group ">

                            <asp:TextBox ID="textPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                            <%--<input type="email" class="form-control" name="email" id="email" placeholder="Email" required>--%>
                       <asp:RequiredFieldValidator ID="RequirePass" runat="server" ControlToValidate="textPassword" ForeColor="Red" Font-Size="Small">Password is Required.</asp:RequiredFieldValidator>
                            </div>

                        <div class=" form-group ">

                            <asp:TextBox ID="textCPassword" runat="server" CssClass="form-control" placeholder="Confirm Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequireCPass" runat="server" Display="Dynamic" ControlToValidate="textCPassword" ForeColor="Red" Font-Size="Small">Confirm Password is Required.</asp:RequiredFieldValidator>
                           <asp:CompareValidator runat="server" ID="comparePass" Display="Dynamic" ControlToCompare="textPassword" ControlToValidate="textCPassword" ErrorMessage="Confirm password did'nt match." ForeColor="Red" Font-Size="Small"></asp:CompareValidator>

                            <%--<input type="email" class="form-control" name="email" id="email" placeholder="Email" required>--%>
                        </div>
                        <asp:Label ID="lblmsgn" runat="server"></asp:Label>
                        <div class="text-center mt-3">
                            <asp:Button ID="btnReg" Text="Submit" runat="server"  CssClass="submitBtn" OnClick="Buttton1_Click" />
                            <%--<button type="submit" >Submit</button>--%>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Section -->

</asp:Content>
