<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>

     <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">

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
                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-6 pt-3 branco">
                    <label> CNPJ*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-6 pt-3">
                    <label> FANTASIA*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox>
                </div>


                <div class="col-4 pt-3">
                    <label> CEP*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> ESTADO*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> CIDADE*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox7" runat="server" TextMode="Email"></asp:TextBox>
                </div>


                 <div class="col-4 pt-3">
                     <label> BAIRRO*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox8" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> LOCADOURO*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox9" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-4 pt-3">
                    <label> NÚMERO*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox10" runat="server" TextMode="Email"></asp:TextBox>
                </div>


                <div class="col-6 pt-3">
                    <label> TELEFONE*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox11" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-6 pt-3">
                    <label> E-MAIL*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox12" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-6 pt-3">
                    <label> SENHA*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox13" runat="server" TextMode="Email"></asp:TextBox>
                    
                </div>

                <div class="col-6 pt-3">
                    <label> CONFIRME A SENHA*</label>
                    <asp:TextBox CssClass="form-control"  ID="TextBox14" runat="server" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-12 pt-3 text-center" >
                   <asp:Button ID="Button1" runat="server" Text="CLIQUE AQUI PRA FAZER O UPLOAD DOS ARQUVOS" />
                </div>

                <div class="col-12 pt-4 text-center" >
                   <asp:Button ID="Button2" runat="server" Text="CADASTRAR" />
                </div>

                
            </div>
        </header>




        


    </form>
</body>
</html>
                  
