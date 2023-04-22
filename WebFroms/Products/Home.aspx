<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Home.aspx.cs" Inherits="EmployeeWorkBook.WebFroms.Products.Home" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent" ViewStateMode="Enabled">

    <style>
        .search {
            top: 6px;
            left: 10px;
        }

        .form-control {
            border: none;
            padding-left: 32px;
        }

            .form-control:focus {
                border: none;
                box-shadow: none;
            }

        .green {
            color: green;
        }
    </style>
    <main id="main">

        <section>
            <div class="container mt-5 px-2">


                <div class="table-responsive">

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-borderless" Width="100px" CellPadding="4" AutoGenerateColumns="false" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        
                        <Columns>
                            <asp:TemplateField HeaderText="ID"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblID" Text='<%# Eval("EmpId") %>' runat="server"></asp:Label>
                                </ItemTemplate>

                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField  HeaderText="FirstName"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblName" Text='<%# Eval("FirstName") %>' runat="server"></asp:Label>
                                </ItemTemplate>

                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="LastName"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblName" Text='<%# Eval("LastName") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblName" Text='<%# Eval("Email") %>' runat="server"></asp:Label>
                                </ItemTemplate>

                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PhoneNo"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblName" Text='<%# Eval("PhoneNo") %>' runat="server"></asp:Label>
                                </ItemTemplate>

                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblName" Text='<%# Eval("Gender") %>' runat="server"></asp:Label>
                                </ItemTemplate>

                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Dob"  >
                                <ItemTemplate>
                                    <asp:Label ID="lblName" Text='<%# Eval("Dob") %>' runat="server"></asp:Label>
                                </ItemTemplate>

                                <ControlStyle CssClass="bg-light"></ControlStyle>
                            </asp:TemplateField>
                            

                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </div>
            </div>
        </section>
    </main>
    <!-- End #main -->

</asp:Content>
