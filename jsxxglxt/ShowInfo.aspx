<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="jsxxglxt.ShowInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="TeacherID" HeaderText="教师编号" ReadOnly="True" SortExpression="TeacherID" />
            <asp:BoundField DataField="TeacherName" HeaderText="姓名" SortExpression="TeacherName" />
            <asp:BoundField DataField="TeacherAge" HeaderText="年龄" SortExpression="TeacherAge" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='server=10.10.0.10,9443;uid=sa;pwd=JL@881103l;database=jsxxglxt' ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [TeacherName] = @TeacherName, [TeacherAge] = @TeacherAge WHERE [TeacherID] = @TeacherID" DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherID] = @TeacherID" InsertCommand="INSERT INTO [Teacher] ([TeacherID], [TeacherName], [TeacherAge]) VALUES (@TeacherID, @TeacherName, @TeacherAge)">
        <DeleteParameters>
            <asp:Parameter Name="TeacherID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TeacherID" Type="String" />
            <asp:Parameter Name="TeacherName" Type="String" />
            <asp:Parameter Name="TeacherAge" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TeacherName" Type="String" />
            <asp:Parameter Name="TeacherAge" Type="Int32" />
            <asp:Parameter Name="TeacherID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
