<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>

    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
    <script src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js" > </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="popup" title="ColetivoGo" style="display:none">

            </div>
        </div>

        <header class="container pt-5">
            <div class="row">
                <div class="col-4">

                </div>

                <div class="col-8 text-end">
                     <asp:LinkButton ID="LinkButton1" runat="server">Home</asp:LinkButton>
                </div>
            </div>
        </header>


        <!-- Formulario --> 
       
        <header class="container">
            <div class="row">
                <div class="col-12 text-center branco pt-5">
                    <h1> Cadastre sua empresa</h1>
                    <p>Por favor, forneça as seguintes informações que entraremos em contato com você em pouco tempo </p>
                </div>


                <!-- form cadastro -->

                <div class="col-12 pt-3 branco">
                    <label> RAZÃO SOCIAL*</label>
                    <asp:TextBox CssClass="form-control" ID="txtRazaoSocial" runat="server" AutoPostBack="true" OnTextChanged="txtRazaoSocial_TextChanged"></asp:TextBox>
                </div>

                <div class="col-12 pt-0 branco">
                    <asp:Literal ID="msgRazaoSocial" runat="server" Visible="False"></asp:Literal>
                </div>

                <div class="col-6 pt-3 branco">
                    <label> CNPJ*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtCNPJ" runat="server" AutoPostBack="true" OnTextChanged="txtCNPJ_TextChanged" ClientIDMode="Static"></asp:TextBox>
                </div>

                <div class="col-6 pt-3">
                    <label>NOME FANTASIA*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtFantasia" runat="server" ClientIDMode="Static"></asp:TextBox>
                </div>

                <div class="col-6 pt-0 branco">
                    <asp:Literal ID="msgCNPJ" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="col-6 pt-0 branco">
                    <asp:Literal ID="msgNomeFantasia" runat="server" Visible="false"></asp:Literal>
                </div>

                <div class="col-4 pt-3">
                    <label> CEP*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtCEP" runat="server" AutoPostBack="true" OnTextChanged="txtCEP_TextChanged" ClientIDMode="Static"></asp:TextBox>
                </div>
                <div class="col-4 pt-3">
                    <label> ESTADO*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtEstado" runat="server" Enabled="false"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> CIDADE*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtCidade" runat="server" Enabled="false"></asp:TextBox>
                </div>

                <div class="col-4 pt-0 branco">
                    <asp:Literal ID="msgCEP" runat="server" Visible="false"></asp:Literal>
                    <asp:Literal ID="lblCEP" runat="server" Text="O CEP não existe ou foi digitado de maneira incorreta!"></asp:Literal>
                </div>
                <div class="col-4 pt-0 branco">
                    <asp:Literal ID="msgEstado" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="col-4 pt-0 branco">
                    <asp:Literal ID="msgCidade" runat="server" Visible="false"></asp:Literal>
                </div>

                 <div class="col-4 pt-3">
                     <label> BAIRRO*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtBairro" runat="server" Enabled="false"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> LOGRADOURO*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtLogradouro" runat="server" Enabled="false"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> NÚMERO*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtNumero" runat="server" TextMode="Number"></asp:TextBox>
                </div>
                <div class="col-4 pt-0 branco">
                    <asp:Literal ID="msgBairro" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="col-4 pt-0 branco">
                    <asp:Literal ID="msgLogradouro" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="col-4 pt-0 branco">
                    <asp:Literal ID="msgNumero" runat="server" Visible="false"></asp:Literal>
                </div>

                <div class="col-6 pt-3">
                    <label> TELEFONE*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtTelefone" runat="server" TextMode="Phone" ClientIDMode="Static" MaxLength="11">
                    </asp:TextBox>
                    
                </div>

                <div class="col-6 pt-3">
                    <label> E-MAIL*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtEmail" runat="server" TextMode="Email" AutoPostBack="true" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                </div>

                <div class="col-6 pt-0 branco">
                    <asp:Literal ID="msgTelefone" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="col-6 pt-0 branco">
                    <asp:Literal ID="msgEmail" runat="server" Visible="false"></asp:Literal>
                </div>

                <div class="col-6 pt-3">
                    <label> SENHA*</label>
                    <asp:TextBox CssClass="form-control" ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
                    
                </div>

                <div class="col-6 pt-3">
                    <label> CONFIRME A SENHA*</label>
                    <asp:TextBox CssClass="form-control"  ID="txtConfirmacaoSenha" runat="server" TextMode="Password" ></asp:TextBox>
                </div>
                <div class="col-6 pt-0 branco">
                    <asp:Literal ID="msgSenha" runat="server" Visible="false"></asp:Literal>
                </div>
                <div class="col-6 pt-0 branco">
                    <asp:Literal ID="msgConfirmacaoSenha" runat="server" Visible="false"></asp:Literal>
                </div>

                <div class="col-6 pt-3" >                                      
                </div>
                <div class="col-6 pt-3 text-center text-white" >                   
                   <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                </div>
                <div class="col-6 pt-3" >                                      
                </div>
                <div class="col-6 pt-0 text-left text-black" >                   
                   <asp:Label runat="server" ID="FileUploadStatus" Visible="false"></asp:Label> 
                </div>

                <div class="col-12 pt-4 text-center" >
                   <asp:Button ID="btnCadastrar" runat="server" Text="CADASTRAR" CssClass="btn-outline-light" BackColor="blue" BorderStyle="Double"
                       onClick="btnCadastrar_Click"/>
                </div>
            </div>
        </header>

    </form>
</body> 
</html>
                  
