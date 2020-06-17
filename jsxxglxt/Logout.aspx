<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="jsxxglxt.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>确认退出系统？</h3>
            <asp:Button ID="Button1" runat="server" Text="退出" OnClick="Button1_Click"/>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="Registe.aspx" runat="server">返回教师注册</asp:HyperLink>
            
        </div>
    </form>
</body>
</html>
