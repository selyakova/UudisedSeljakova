<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UudisedSeljakova._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>UUDISTE VEEBI ILMAD</h1>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Kuupaev" HeaderText="Kuupaev" SortExpression="Kuupaev" />
                <asp:BoundField DataField="Temp" HeaderText="Temp" SortExpression="Temp" />
                <asp:BoundField DataField="uudisteTeema" HeaderText="uudisteTeema" SortExpression="uudisteTeema" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [ilm] WHERE [ilm_id] = @ilm_id" InsertCommand="INSERT INTO [ilm] ([Kuupaev], [Temp], [uudis_id]) VALUES (@Kuupaev, @Temp, @uudis_id)" SelectCommand="SELECT ilm.Kuupaev, ilm.Temp, uudised.uudisteTeema, uudised.kirjeldus FROM ilm INNER JOIN uudised ON ilm.uudis_id = uudised.uudis_id" UpdateCommand="UPDATE [ilm] SET [Kuupaev] = @Kuupaev, [Temp] = @Temp, [uudis_id] = @uudis_id WHERE [ilm_id] = @ilm_id">
            <DeleteParameters>
                <asp:Parameter Name="ilm_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="Kuupaev" />
                <asp:Parameter Name="Temp" Type="Int32" />
                <asp:Parameter Name="uudis_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Kuupaev" />
                <asp:Parameter Name="Temp" Type="Int32" />
                <asp:Parameter Name="uudis_id" Type="Int32" />
                <asp:Parameter Name="ilm_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>
