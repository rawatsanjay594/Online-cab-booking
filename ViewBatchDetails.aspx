<%@ Page Language="C#" MasterPageFile="~/HRManger/HRMasterPage.master" AutoEventWireup="true"
    CodeFile="ViewBatchDetails.aspx.cs" Inherits="HRManger_ViewBatchDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <table align="center" cellpadding="0" cellspacing="5" class="border1" style="position: static"
        width="700">
        <tr>
            <td align="center" class="border" colspan="3" style="height: 22px">
                <b class="title">View BatchDetails</b></td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" Style="position: static" Font-Names="Arial"
                    Font-Size="9pt" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LnkB_Edit" runat="server" CommandName="Edit" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"BatchID") %>'>Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="BatchID" HeaderText="BatchID" />
                        <asp:BoundField DataField="TotalNoOfEmployees" HeaderText="TotalNoOfEmployees" />
                        <asp:BoundField />
                        <asp:BoundField DataField="ShiftID" HeaderText="ShiftID" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
