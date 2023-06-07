<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>

    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">

        <header class="container pt-5 pb-5">
            <div class="row">
                <div class="col-4">
                </div>

                <div class="col-8 text-end tamanho">
                    <asp:LinkButton ID="LinkButton1" runat="server">Home</asp:LinkButton>
                </div>
            </div>
        </header>



        <!-- Formulario -->

        <header class="container pt-5">
            <div class="row">
                <div class="col-12 text-center branco pt-5">
                    <h1>Efetue seu login</h1>
                    <p>
                        Por favor, forneça as seguintes informações que
                        <br />
                        entraremos em contato com você em pouco tempo
                    </p>
                </div>


                <!-- form cadastro -->

                <div class="row">

                    <div class="col-4">
                    </div>

                    <div class="col-4">
                        <div class="col-12 pt-3 branco">
                            <label>DIGITE SEU E-MAIL</label>
                            <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" TextMode="Email" ClientIDMode="Static"></asp:TextBox>
                        </div>

                        <div class="col-12 pt-3 branco">
                            <label>DIGITE SUA SENHA</label>
                            <asp:TextBox ID="txtSenha" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="col-12 pt-3 branco text-xl-center">
                            <asp:Button ID="btnLogin" runat="server" Text="Entrar" OnClick="btnLogin_Click" />
                        </div>
                        <div class="col-12 text-white text-xl-center">
                            <asp:Literal ID="msgErro" runat="server"></asp:Literal>
                        </div>












                    </div>

                    <div class="col-4">
                    </div>

                </div>

            </div>



        </header>

    </form>
</body>
</html>
