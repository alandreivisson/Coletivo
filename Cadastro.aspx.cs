using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSCorreios;

public partial class Cadastro : System.Web.UI.Page
{
    string localizacaoArquivo;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCEP.Visible = false;
        txtCEP.BorderColor = Color.Empty;

        txtBairro.Enabled = false;
        txtCidade.Enabled = false;
        txtEstado.Enabled = false;
        txtLogradouro.Enabled = false;
    }

    protected void txtCEP_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrWhiteSpace(txtCEP.Text)) 
        {
            try {
                var webserive = new WSCorreios.AtendeClienteClient();
                var resposta = webserive.consultaCEP(txtCEP.Text);

                if (resposta != null)
                {
                    txtBairro.Text = resposta.bairro;
                    txtEstado.Text = resposta.uf;
                    txtCidade.Text = resposta.cidade;
                    txtLogradouro.Text = resposta.end;
                    txtCEP.BorderColor = Color.Empty;
                    lblCEP.Visible = false;

                    txtBairro.Enabled = true;
                    txtCidade.Enabled = true;
                    txtEstado.Enabled = true; 
                    txtLogradouro.Enabled = true;

                }
            }
            catch (System.Exception ex) {

                txtBairro.Text = string.Empty; 
                txtEstado.Text = string.Empty;
                txtCidade.Text = string.Empty;
                txtLogradouro.Text = string.Empty;
                txtCEP.BorderColor= Color.Red;
                lblCEP.Visible = true;

                txtBairro.Enabled = false;
                txtCidade.Enabled = false;
                txtEstado.Enabled = false;
                txtLogradouro.Enabled = false;
            }       
        }
        
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        limparCamposBordas();
        if (string.IsNullOrEmpty(txtRazaoSocial.Text))
        {
            msgRazaoSocial.Visible = true;
            msgRazaoSocial.Text = "Razão Social é um Campo Obrigatório!";
            txtRazaoSocial.BorderColor = Color.Red;
            return;
        }  
        if (string.IsNullOrEmpty(txtCNPJ.Text)) 
        {
            msgCNPJ.Visible = true;
            msgCNPJ.Text = "CNPJ é um Campo Obrigatório!";
            txtCNPJ.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtFantasia.Text)) 
        {
            msgNomeFantasia.Visible = true;
            msgNomeFantasia.Text = "Nome Fantasia é um Campo Obrigatório!";
            txtFantasia.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtCEP.Text)) 
        {  
            msgCEP.Visible = true;
            msgCEP.Text = "CEP é um Campo Obrigatório!";
            txtCEP.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtEstado.Text)) 
        { 
            msgEstado.Visible = true;
            msgEstado.Text = "Estado é um Campo Obrigatório!";
            txtEstado.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtCidade.Text)) 
        { 
            msgCidade.Visible = true;
            msgCidade.Text = "Cidade é um Campo Obrigatório!";
            txtCidade.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtBairro.Text))
        {
            msgBairro.Visible = true;
            msgBairro.Text = "Bairro é um Campo Obrigatório!";
            txtBairro.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtLogradouro.Text)) 
        { 
            msgLogradouro.Visible = true;
            msgLogradouro.Text = "Logradouro é um Campo Obrigatório!";
            txtLogradouro.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtNumero.Text)) 
        { 
            msgNumero.Visible = true;
            msgNumero.Text = "Número é um Campo Obrigatório!";
            txtNumero.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtTelefone.Text)) 
        {
            msgTelefone.Visible = true;
            msgTelefone.Text = "Telefone é um Campo Obrigatório!";
            txtTelefone.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtEmail.Text)) 
        { 
            msgEmail.Visible = true;
            msgEmail.Text = "Email é um campo Obrigatório!";
            txtEmail.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtSenha.Text)) 
        {
            msgSenha.Visible = true;
            msgSenha.Text = "Senha é um Campo Obrigatório!";
            txtSenha.BorderColor = Color.Red;
            return;
        }
        if (string.IsNullOrEmpty(txtConfirmacaoSenha.Text))
        {
            msgConfirmacaoSenha.Visible = true;
            msgConfirmacaoSenha.Text =  "Por favor, confirme a senha!";
            txtConfirmacaoSenha.BorderColor = Color.Red;
            return;
        }
        if (txtSenha.Text != txtConfirmacaoSenha.Text)
        {
            msgSenha.Visible = true;
            msgConfirmacaoSenha.Visible = true;
            msgSenha.Text = "Senha não aceita, confirme corretamente!";
            msgConfirmacaoSenha.Text = "As senhas devem ser iguais!";
            txtConfirmacaoSenha.BorderColor = Color.Red;
            txtSenha.BorderColor = Color.Red;
            return;
        }
        if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
        {
            FileUploadStatus.Visible = true;
            string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            Directory.CreateDirectory("C:\\Users\\liax_nb13\\source\\repos\\ColetivoGo\\upload\\"+txtRazaoSocial.Text);
            localizacaoArquivo = "C:\\\\Users\\\\liax_nb13\\\\source\\\\repos\\\\ColetivoGo\\\\upload\\\\"+txtRazaoSocial.Text;
            string localizacao = txtRazaoSocial.Text;
            string SaveLocation = Server.MapPath("upload\\"+localizacao) + "\\" + fn;
            try
            {
                FileUpload1.PostedFile.SaveAs(SaveLocation);
            }
            catch (System.Exception ex)
            {
                FileUploadStatus.Text = "Error: " + ex.Message;
                return;
            }
        }
        else
        {
            FileUploadStatus.Visible = true;
            FileUploadStatus.Text = "Carregue um arquivo";
            return;
        }
        int resultado = cadastrarBanco();
        if (resultado>=0) {
            mostrarPopPupSucesso();
        }
        else { 
            mostrarPopPupFracasso();
        }
        limparTextBox();
        

    }

    public void limparCamposBordas() 
    {
        msgRazaoSocial.Visible = false;
        msgCNPJ.Visible = false;
        msgNomeFantasia.Visible = false;
        msgCEP.Visible = false;
        msgBairro.Visible = false;
        msgEstado.Visible = false;
        msgCidade.Visible = false;
        msgLogradouro.Visible = false;
        msgNumero.Visible = false;
        msgTelefone.Visible = false;
        msgEmail.Visible = false;
        msgSenha.Visible = false;
        msgConfirmacaoSenha.Visible = false;

        txtRazaoSocial.BorderColor = Color.Empty;
        txtCNPJ.BorderColor = Color.Empty;
        txtFantasia.BorderColor = Color.Empty;
        txtCEP.BorderColor = Color.Empty;
        txtBairro.BorderColor = Color.Empty;
        txtEstado.BorderColor = Color.Empty;
        txtCidade.BorderColor = Color.Empty;
        txtLogradouro.BorderColor = Color.Empty;
        txtNumero.BorderColor = Color.Empty;
        txtTelefone.BorderColor = Color.Empty;
        txtEmail.BorderColor = Color.Empty;
        txtSenha.BorderColor = Color.Empty;
        txtConfirmacaoSenha.BorderColor = Color.Empty;
    }

    public int cadastrarBanco() {
        txtSenha.Text = Funcoes.BaseCodifica(txtSenha.Text);
        string query = "INSERT INTO EMP_EMPRESA(EMP_EMAIL, EMP_SENHA, EMP_RAZAO_SOCIAL, EMP_NOME_FANTASIA, EMP_CNPJ,"+
                        "EMP_CEP, EMP_ESTADO, EMP_CIDADE, EMP_BAIRRO, EMP_LOGRADOURO, EMP_NUMERO, EMP_TELEFONE, EMP_ENDERECO_ARQUIVO)"+
                        "VALUES('"+txtEmail.Text+"','"+txtSenha.Text+"','"+txtRazaoSocial.Text +"','"+
                        txtFantasia.Text+"','"+txtCNPJ.Text+"','"+txtCEP.Text+"','"+txtEstado.Text+"','"+txtCidade.Text+
                        "','"+txtBairro.Text+"','"+txtLogradouro.Text+"','"+txtNumero.Text+"','"+txtTelefone.Text+"','"+ localizacaoArquivo+ "')";
        
        IDbConnection con = MapeamentoBD.Conexao();
        IDbCommand cmd = MapeamentoBD.ComandoSQL(query, con);
        cmd.CommandTimeout = 200;

        var process = cmd.ExecuteScalar();
        int result = Convert.ToInt32(process);
        return result;
    }

    public void limparTextBox() 
    {
        txtRazaoSocial.Text = string.Empty;
        txtCNPJ.Text = string.Empty;
        txtFantasia.Text = string.Empty;
        txtCEP.Text = string.Empty;
        txtEstado.Text = string.Empty;
        txtCidade.Text = string.Empty;
        txtBairro.Text = string.Empty;
        txtLogradouro.Text = string.Empty;
        txtNumero.Text = string.Empty;
        txtTelefone.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtSenha.Text = string.Empty;
        txtConfirmacaoSenha.Text = string.Empty;
    }

    protected void txtRazaoSocial_TextChanged(object sender, EventArgs e)
    {
        string query = "SELECT EMP_ID_EMPRESA, EMP_SENHA, EMP_EMAIL FROM EMP_EMPRESA WHERE EMP_RAZAO_SOCIAL = '" + txtRazaoSocial.Text + "';";
        // abrir minha conexao com o banco
        IDbConnection con = MapeamentoBD.Conexao();
        // aqui eu crio o objeto que vai manipular meus comandos no banco de dados e passo o meu comando, que no caso, está contido na minha string chamada query
        IDbCommand cmd = MapeamentoBD.ComandoSQL(query, con);

        // criando uma variável para receber uma lista vazia ou não do banco
        //  O comando ExecuteReader() executa minhha consulta no banco e o resultado vai para dentro da variável reader
        var reader = cmd.ExecuteReader();

        // Crio um objeto para pegar os dados do meu resultado da consulta. Sendo mais detalhista, aqui eu crio para pegar os valores das colunas do resultado
        Empresa empresa = null;

        // crio um while para varrer o resultado da minha consulta enquanto houver linhas, por isso o método Read(), ele está LENDO a lista
        while (reader.Read())
        {
            //Passo um new para empresa, senão o visual não deixa eu manipular meu objeto null
            empresa = new Empresa();
            //Passo os valores das colunas da minha consulta para dentro dos atributos da minha classe
            empresa.Id = Convert.ToInt32(reader["EMP_ID_EMPRESA"]);
            empresa.Senha = reader["EMP_SENHA"].ToString();
            empresa.Email = reader["EMP_EMAIL"].ToString();
        }

        if (empresa != null)
        {
            msgRazaoSocial.Visible = true;
            msgRazaoSocial.Text = "Razão Social já cadastrado! Insira outro";
            txtRazaoSocial.Text = string.Empty;
            txtRazaoSocial.BorderColor = Color.Red;
            return;
        }
        else {
            msgRazaoSocial.Visible = false;
            txtRazaoSocial.BorderColor = Color.Empty;
        }
    }

    protected void txtCNPJ_TextChanged(object sender, EventArgs e)
    {
        string query = "SELECT EMP_ID_EMPRESA, EMP_SENHA, EMP_EMAIL FROM EMP_EMPRESA WHERE EMP_CNPJ = '" + txtCNPJ.Text + "';";
        // abrir minha conexao com o banco
        IDbConnection con = MapeamentoBD.Conexao();
        // aqui eu crio o objeto que vai manipular meus comandos no banco de dados e passo o meu comando, que no caso, está contido na minha string chamada query
        IDbCommand cmd = MapeamentoBD.ComandoSQL(query, con);

        // criando uma variável para receber uma lista vazia ou não do banco
        //  O comando ExecuteReader() executa minhha consulta no banco e o resultado vai para dentro da variável reader
        var reader = cmd.ExecuteReader();

        // Crio um objeto para pegar os dados do meu resultado da consulta. Sendo mais detalhista, aqui eu crio para pegar os valores das colunas do resultado
        Empresa empresa = null;

        // crio um while para varrer o resultado da minha consulta enquanto houver linhas, por isso o método Read(), ele está LENDO a lista
        while (reader.Read())
        {
            //Passo um new para empresa, senão o visual não deixa eu manipular meu objeto null
            empresa = new Empresa();
            //Passo os valores das colunas da minha consulta para dentro dos atributos da minha classe
            empresa.Id = Convert.ToInt32(reader["EMP_ID_EMPRESA"]);
            empresa.Senha = reader["EMP_SENHA"].ToString();
            empresa.Email = reader["EMP_EMAIL"].ToString();
        }

        if (empresa != null)
        {
            msgCNPJ.Visible = true;
            msgCNPJ.Text = "CNPJ já cadastrado! Insira outro";
            txtCNPJ.Text = string.Empty;
            txtCNPJ.BorderColor = Color.Red;
            return;
        }
        else
        {
            msgCNPJ.Visible = false;
            txtCNPJ.BorderColor = Color.Empty;
        }
    }



    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        string query = "SELECT EMP_ID_EMPRESA, EMP_SENHA, EMP_EMAIL FROM EMP_EMPRESA WHERE EMP_EMAIL = '" + txtEmail.Text + "';";
        // abrir minha conexao com o banco
        IDbConnection con = MapeamentoBD.Conexao();
        // aqui eu crio o objeto que vai manipular meus comandos no banco de dados e passo o meu comando, que no caso, está contido na minha string chamada query
        IDbCommand cmd = MapeamentoBD.ComandoSQL(query, con);

        // criando uma variável para receber uma lista vazia ou não do banco
        //  O comando ExecuteReader() executa minhha consulta no banco e o resultado vai para dentro da variável reader
        var reader = cmd.ExecuteReader();

        // Crio um objeto para pegar os dados do meu resultado da consulta. Sendo mais detalhista, aqui eu crio para pegar os valores das colunas do resultado
        Empresa empresa = null;

        // crio um while para varrer o resultado da minha consulta enquanto houver linhas, por isso o método Read(), ele está LENDO a lista
        while (reader.Read())
        {
            //Passo um new para empresa, senão o visual não deixa eu manipular meu objeto null
            empresa = new Empresa();
            //Passo os valores das colunas da minha consulta para dentro dos atributos da minha classe
            empresa.Id = Convert.ToInt32(reader["EMP_ID_EMPRESA"]);
            empresa.Senha = reader["EMP_SENHA"].ToString();
            empresa.Email = reader["EMP_EMAIL"].ToString();
        }

        if (empresa != null)
        {
            msgEmail.Visible = true;
            msgEmail.Text = "E-mail já cadastrado! Insira outro";
            txtEmail.Text = string.Empty;
            txtEmail.BorderColor = Color.Red;
            return;
        }
        else
        {
            msgEmail.Visible = false;
            txtEmail.BorderColor = Color.Empty;
        }
    }

    public void mostrarPopPupSucesso() 
    {
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            "swal('Cadastro Realizado!','Analisaremos os documentos e entraremos em  contato  em  breve, enquanto isso você ainda não pode realizar login, mas fique tranquilo, logo instruíremos você!','success')", true);
    }
    public void mostrarPopPupFracasso()
    {
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            "swal('Cadastro Falhou!','Verifique sua conexão com a internet. Se a conexão estiver normal entre em contato com o suporte!','error')", true);
    }


}



