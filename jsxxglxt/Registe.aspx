<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registe.aspx.cs" Inherits="jsxxglxt.Registe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="教师编号"></asp:Label>
        <asp:TextBox ID="TeacherID" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="教师编号不能为空" ForeColor="Red" ControlToValidate="TeacherID"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="教师编号必须是6位的数字" ForeColor="Red" ControlToValidate="TeacherID" EnableClientScript="false" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    </div>
    
    <div>
        <asp:Label ID="Label2" runat="server" Text="姓名"></asp:Label>
        <asp:TextBox ID="TeacherName" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="姓名不能为空" ForeColor="Red" ControlToValidate="TeacherName"></asp:RequiredFieldValidator>
    </div>
    
    <div>
        <asp:Label ID="Label3" runat="server" Text="年龄"></asp:Label>
        <asp:TextBox ID="TeacherAge" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="年龄不能为空" ForeColor="Red" ControlToValidate="TeacherAge"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="年龄必须为数字" ForeColor="Red" ControlToValidate="TeacherAge" EnableClientScript="false" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="年龄范围20-100岁" ForeColor="Red" ControlToValidate="TeacherAge" MinimumValue="20" MaximumValue="100" Type="Integer"></asp:RangeValidator>
    </div>

    <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click"/>
</asp:Content>
