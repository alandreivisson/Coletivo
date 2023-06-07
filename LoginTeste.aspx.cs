using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginTeste : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["USUARIO"] = null;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Verifica se o email e senha são vazios ou null
        if (string.IsNullOrEmpty(txtEmail.Text) && string.IsNullOrEmpty(txtSenha.Text))
        {
            //Se o email e senha forem vazios e null exibe em tela uma mensagem de erro
            //aqui é o que vem escrito na mensagem
            msgErro.Text = "Email e Senha não podem ser nulos!";
            //aqui eu torno visible a mensagem
            msgErro.Visible = true;
        }
        //Verifica se a senha é vazia ou nulla
        else if (string.IsNullOrEmpty(txtSenha.Text))
        {
            //Se a senha for vazia ou nulla exibe em tela uma mensagem de erro
            //aqui é o que vem escrito na mensagem
            msgErro.Text = "Senha não pode ser nula!";
            //aqui eu torno visible a mensagem
            msgErro.Visible = true;
        }
        // Verifico se o email é vazia ou nullo
        else if (string.IsNullOrEmpty(txtEmail.Text))
        {
            // Se o email for vazio ou nullo exibe em tela uma mensagem de erro
            msgErro.Text = "Email não pode ser nulo!";
            // aqui eu torno visivel a mensagem
            msgErro.Visible = true;
        }
        else
        {
            //string senha = Funcoes.BaseCodifica(txtSenha.Text);

            // crio o texto da minha consulta no banco
            string query = "SELECT EMP_ID_EMPRESA, EMP_SENHA, EMP_EMAIL FROM EMP_EMPRESA WHERE EMP_SENHA = '" + txtSenha.Text + "' AND EMP_EMAIL= '" + txtEmail.Text + "';";
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

            //Se o meu objeto empresa for diferente de null, ou seja, se houverem resultados da minha consulta, minha Session recebe o objeto empresa e redireciona o usuário para o Perfil da Empresa
            // Isso acontece quando há resultados na consulta, ou seja, existe um usuário com email e senha, então o login é bem sucedido
            if (empresa != null)
            {
                Session["USUARIO"] = empresa;
                con.Close();
                Response.Redirect("PerfilEmpresa.aspx");
            }
            //Se o meu objeto empresa for igual a null, ou seja, se não houverem resultados da minha consulta, minha Session continua null e mensagens de erro aparecem na tela,
            //sendo os campos senha e email limpos
            else
            {
                msgErro.Text = "Email ou senha incorretos";
                msgErro.Visible = true;
                txtEmail.Text = null;
                txtSenha.Text = null;
            }
        }
    }
}