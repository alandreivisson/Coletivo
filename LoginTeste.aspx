<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginTeste.aspx.cs" Inherits="LoginTeste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login</h1>
            <div>
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ClientIDMode="Static"></asp:TextBox>
            </div>
            
            <div>
                <asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success btn-block" Text="Login" OnClick="btnLogin_Click" />
            </div>
            <div>
                <asp:Literal ID="msgErro" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
</body>
    <%--chame o plugin link
    corpo do js--%>
</html>
