﻿<%@ Page Language="C#" Title="Purchase Order : Thermotech"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="po_details_production.aspx.cs" Inherits="po_details" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID ="head"   runat="server"  id="first">

    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 553px;
        }
        .style6
        {
            width: 17px;
        }
        body 
        {
            font-family:  Verdana;
            font-size:12px;
        }
        .style127
        {
            height: 19px;
            width: 875px;
        }
        .style128
        {
            width: 9px;
        }
        .style129
        {
            width: 676px;
        }
        .style130
        {
            color: #C0C0C0;
        }
        .style131
        {
            width: 17px;
            height: 292px;
        }
        .style132
        {
            width: 676px;
            height: 27px;
        }
        .style133
        {
            height: 27px;
        }
        a:hover
        {
            font-weight: bold;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID ="MainContentHolder"  runat="server"  id="Content1">
             <table id="MainTable" cellpadding="0" cellspacing="0" class="style113">
            <tr>
                <td class="style132" valign="top">
                    <asp:HyperLink ID="HyperLinkGoBack" runat="server" CssClass="style136" 
                        NavigateUrl="~/executives/summary.aspx" 
                        style="font-size: medium; background-color: #FFFF00">&lt;&lt; Go to Project Summary Page</asp:HyperLink>
                </td>
                
                <td class="style133">
                </td>
                
            </tr>
            <tr>
                <td class="style129" valign="top">
                    &nbsp;</td>
                
                <td class="style125">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="style129" valign="top">
                    <strong>Project ID:&nbsp;
                    <asp:Label ID="LabelProjectID" runat="server" Font-Bold="True" 
                        Font-Size="Medium" Font-Underline="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="LabelCustomerName" 
                        runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" 
                        Visible="False"></asp:Label>
                    </strong>
                </td>
                
                <td class="style125">
                    <span class="style130"><font size="2">Select a different Project:</font></span><strong>
        <asp:TextBox ID="TextBoxProjectID" runat="server"></asp:TextBox>
                    <asp:Button ID="ButtonChangeProjectIDSession" runat="server" 
            Text="Submit" onclick="ButtonChangeProjectIDSession_Click" />
                    </strong>
                </td>
                
            </tr>
            </table>
        <table id="table2" cellpadding="0" class="style1">
            <tr>
                <td colspan="2" rowspan="2" valign="top">
                    <asp:GridView ID="gvPOMain" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SDSPOMain" 
                        onselectedindexchanged="gvPOMain_SelectedIndexChanged" 
                        ForeColor="#333333" GridLines="None" 
                        onrowdatabound="gvPOMain_RowDataBound">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
                            <asp:BoundField DataField="PONUM" HeaderText="PONUM" SortExpression="PONUM" />
                            <asp:BoundField DataField="POLINE" HeaderText="POLINE" 
                                SortExpression="POLINE" />
                            <asp:BoundField DataField="PORELNUM" HeaderText="PORELNUM" 
                                SortExpression="PORELNUM" />
                            <asp:BoundField DataField="PARTNUM" HeaderText="PARTNUM" 
                                SortExpression="PARTNUM" />
                            <asp:BoundField DataField="LINEDESC" HeaderText="LINEDESC" 
                                SortExpression="LINEDESC" />
                            <asp:BoundField DataField="RELQTY" HeaderText="RELQTY" 
                                SortExpression="RELQTY" />
                            <asp:BoundField DataField="RECEIVEDQTY" HeaderText="RECEIVEDQTY" 
                                SortExpression="RECEIVEDQTY" />
                            <asp:BoundField DataField="UNITCOST" HeaderText="UNITCOST" 
                                SortExpression="UNITCOST" />
                            <asp:BoundField DataField="POCost" HeaderText="POCost" ReadOnly="True" 
                                SortExpression="POCost" />
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </td>
                <td class="style128" rowspan="2">
                    &nbsp;</td>
                <td class="style131" valign="top" nowrap="nowrap">
                    <br />
                    <br />
                    <asp:DetailsView ID="DetailsViewPODates" runat="server" 
                        Height="50px" Width="550px" AutoGenerateRows="False" 
                        DataSourceID="SDSPODates" Font-Bold="True" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Width="200px" 
                            Wrap="False" Font-Bold="True" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <Fields>
                            <asp:BoundField DataField="PO Num / Line / Rel Num" 
                                HeaderText="PO Num / Line / Rel Num" ReadOnly="True" 
                                SortExpression="PO Num / Line / Rel Num" />
                            <asp:BoundField DataField="Order Date" HeaderText="Order Date" 
                                SortExpression="Order Date" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Due Date" HeaderText="Due Date" 
                                SortExpression="Due Date" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Receipt Date" HeaderText="Receipt Date" 
                                ReadOnly="True" SortExpression="Receipt Date" DataFormatString="{0:d}" />
                        </Fields>
                        <HeaderStyle Width="200px" BackColor="#5D7B9D" Font-Bold="True" 
                            ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                    <br />
                    <asp:DetailsView 
                        ID="DetailsViewInvoice" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataSourceID="SDSInvoice" Height="50px" 
                        Width="550px" ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Wrap="False" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                        <Fields>
                            <asp:BoundField DataField="Invoice Num" HeaderText="Invoice Num" 
                                SortExpression="Invoice Num" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Invoice Line" HeaderText="Invoice Line" 
                                SortExpression="Invoice Line" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Ext Cost" HeaderText="Ext Cost" 
                                SortExpression="Ext Cost" >
                            </asp:BoundField>
                        </Fields>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                            Width="200px" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:DetailsView>
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="style6" valign="top" nowrap="nowrap">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="LabelTotalRelCost" runat="server" Font-Size="X-Large" 
                        Font-Bold="True"></asp:Label>
                    </td>
                <td class="style127">
                    &nbsp;</td>
                <td class="style128">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:SqlDataSource ID="SDSPOMain" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EpicorSQLServer %>" 
            
                        
                        
                        
            
            
            SelectCommand="SELECT DISTINCT P.PONUM , P.POLINE , P.PORELNUM , P.PARTNUM , P.LINEDESC , P.RELQTY , P.RECEIVEDQTY , P.UNITCOST,Inv.POCost   FROM POProduction P
INNER JOIN (SELECT DISTINCT PInv.PONUM,PInv.POLINE, PInv.PORELNUM ,SUM(PInv.EXTCOST) [POCost] FROM POProduction PInv WHERE Pinv.JobNum =@JID GROUP BY PInv.PONUM,PInv.POLINE, PInv.PORELNUM)Inv ON P.PONUM = Inv.PONUM AND P.POLINE  = Inv.POLINE AND P.PORELNUM = Inv.PORELNUM 
WHERE (JobNum =@JID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenFieldJobNum" Name="JID" 
                    PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDSPODates" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EpicorSQLServer %>" 
            
                        
                        
            
            
            
                 SelectCommand="SELECT DISTINCT CAST(PONUM AS varchar) + ' / ' + CAST(POLINE AS varchar) + ' / ' + CAST(PORELNUM AS varchar) AS [PO Num / Line / Rel Num], ORDERDATE AS [Order Date], DUEDATE AS [Due Date], (SELECT TOP (1) RECEIPTDATE FROM POProduction WHERE (PONUM = @ponum) AND (POLINE = @poline) AND (PORELNUM = @porelnum) ORDER BY RECEIPTDATE DESC) AS [Receipt Date] FROM POProduction AS PO_1 WHERE (PONUM = @ponum) AND (POLINE = @poline) AND (PORELNUM = @porelnum) AND (JOBNUM = @JID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenFieldPONum" Name="ponum" 
                    PropertyName="Value" />
                <asp:ControlParameter ControlID="HiddenFieldPOLine" Name="poline" 
                    PropertyName="Value" />
                <asp:ControlParameter ControlID="HiddenFieldPORelNum" Name="porelnum" 
                    PropertyName="Value" />
                <asp:SessionParameter Name="JID" SessionField="JobNum" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDSInvoice" runat="server" 
            ConnectionString="<%$ ConnectionStrings:EpicorSQLServer %>" 
            
                        
                        
            
            
    
                 SelectCommand="SELECT DISTINCT INVOICENUM AS [Invoice Num], INVOICELINE AS [Invoice Line], EXTCOST AS [Ext Cost] FROM POProduction WHERE (PONUM = @PONUM) AND (POLINE = @poline) AND (PORELNUM = @porelnum) AND (JobNum =@JID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="HiddenFieldPONum" Name="ponum" 
                    PropertyName="Value" DefaultValue="" />
                <asp:ControlParameter ControlID="HiddenFieldPOLine" Name="poline" 
                    PropertyName="Value" DefaultValue="" />
                <asp:ControlParameter ControlID="HiddenFieldPORelNum" Name="porelnum" 
                    PropertyName="Value" DefaultValue="" />
                <asp:SessionParameter Name="JID" 
                    SessionField="JobNum" />
            </SelectParameters>
        </asp:SqlDataSource>
                    <br />
                    <asp:HiddenField ID="HiddenFieldJobNum" runat="server" />
                    <br />
                    <asp:HiddenField ID="HiddenFieldPOLine" runat="server" />
                    <asp:HiddenField ID="HiddenFieldPONum" runat="server" />
                    <asp:HiddenField ID="HiddenFieldPORelNum" runat="server" />
                    <asp:HiddenField ID="HiddenFieldReceivedQty" runat="server" />
</asp:Content>
