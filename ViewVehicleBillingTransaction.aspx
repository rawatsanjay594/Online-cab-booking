<%@ Page Language="C#" MasterPageFile="~/FinancialHomePage/MasterPage.master" AutoEventWireup="true"
    CodeFile="ViewVehicleBillingTransaction.aspx.cs" Inherits="FinancialHomePage_ViewVehicleBillingTransaction"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" cellpadding="0" cellspacing="5" class="border1" style="position: static"
        width="700">
        <tr>
            <td align="center" class="border" colspan="3">
                <b class="title">View Vehicle Billing Transaction</b></td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Style="position: static" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" Style="position: static"
                    AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                    OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" Width="285px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"BillNo") %>'>Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
