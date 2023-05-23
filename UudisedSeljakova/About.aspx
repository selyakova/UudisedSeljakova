<%@ Page Title="Uudised" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UudisedSeljakova.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Uudised</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="233px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="734px">
        <Columns>
            <asp:BoundField DataField="uudisteTeema" HeaderText="Uudiste teema" SortExpression="uudisteTeema" />
            <asp:BoundField DataField="kirjeldus" HeaderText="Kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="kuupaev" HeaderText="Kuupaev" SortExpression="kuupaev" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudisteTeema], [kirjeldus], [kuupaev]) VALUES (@uudisteTeema, @kirjeldus, @kuupaev)" ProviderName="<%$ ConnectionStrings:uudisedBaas2ConnectionString1.ProviderName %>" SelectCommand="SELECT [uudis_id], [uudisteTeema], [kirjeldus], [kuupaev] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudisteTeema] = @uudisteTeema, [kirjeldus] = @kirjeldus, [kuupaev] = @kuupaev WHERE [uudis_id] = @uudis_id">
        <DeleteParameters>
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uudisteTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uudisteTeema" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter DbType="Date" Name="kuupaev" />
            <asp:Parameter Name="uudis_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <h3>
        Lisa uudis</h3>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="uudis_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="54px" Width="186px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="uudis_id" HeaderText="uudis_id" InsertVisible="False" ReadOnly="True" SortExpression="uudis_id" />
                <asp:BoundField DataField="uudisteTeema" HeaderText="Uudiste teema" SortExpression="uudisteTeema" />
                <asp:BoundField DataField="kirjeldus" HeaderText="Kirjeldus" SortExpression="kirjeldus" />
                <asp:BoundField DataField="kuupaev" HeaderText="Kuupaev" SortExpression="kuupaev" />
                <asp:CommandField CancelText="Loobu" InsertText="Lisa" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
</p>

</asp:Content>
