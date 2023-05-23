<%@ Page Title="Ilmateade" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="UudisedSeljakova.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Lisa ilmateade</h2>
    <p>&nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ilm_id" DataSourceID="SqlDataSource1_ilm" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ilm_id" HeaderText="ilm_id" InsertVisible="False" ReadOnly="True" SortExpression="ilm_id" />
                <asp:BoundField DataField="Kuupaev" HeaderText="Kuupaev" SortExpression="Kuupaev" />
                <asp:BoundField DataField="Temp" HeaderText="Temp" SortExpression="Temp" />
                <asp:TemplateField HeaderText="Uudis" SortExpression="uudis_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("uudis_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_uudis" DataTextField="uudisteTeema" DataValueField="uudis_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_uudis" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [uudised] WHERE [uudis_id] = @uudis_id" InsertCommand="INSERT INTO [uudised] ([uudisteTeema]) VALUES (@uudisteTeema)" SelectCommand="SELECT [uudisteTeema], [uudis_id] FROM [uudised]" UpdateCommand="UPDATE [uudised] SET [uudisteTeema] = @uudisteTeema WHERE [uudis_id] = @uudis_id">
                            <DeleteParameters>
                                <asp:Parameter Name="uudis_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="uudisteTeema" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="uudisteTeema" Type="String" />
                                <asp:Parameter Name="uudis_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("uudis_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField CancelText="Loobu" InsertText="Lisa" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1_ilm" runat="server" ConnectionString="<%$ ConnectionStrings:uudisedBaas2ConnectionString1 %>" DeleteCommand="DELETE FROM [ilm] WHERE [ilm_id] = @ilm_id" InsertCommand="INSERT INTO [ilm] ([Kuupaev], [Temp], [uudis_id]) VALUES (@Kuupaev, @Temp, @uudis_id)" SelectCommand="SELECT * FROM [ilm]" UpdateCommand="UPDATE [ilm] SET [Kuupaev] = @Kuupaev, [Temp] = @Temp, [uudis_id] = @uudis_id WHERE [ilm_id] = @ilm_id">
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
