<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="jsxxglxt.ShowInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TeacherID" HeaderText="教师编号" ReadOnly="True" SortExpression="TeacherID" />
            <asp:BoundField DataField="TeacherName" HeaderText="姓名" SortExpression="TeacherName" />
            <asp:BoundField DataField="TeacherAge" HeaderText="年龄" SortExpression="TeacherAge" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='server=192.168.1.105,9443;uid=sa;pwd=JL@881103l;database=jsxxglxt' ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Teacher]"></asp:SqlDataSource>
</asp:Content>
