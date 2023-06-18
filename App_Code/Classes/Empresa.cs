using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Estrutura da empresa (classe)
/// </summary>
public class Empresa
{
    private int _id;
    private string _email;
    private string _senha;
    private string _nome_fantasia;
    private string _logo_empresa;
    private string _estado;
    private string _cidade;
    private string _telefone;

    public int Id { get => _id; set => _id = value; }
    public string Email { get => _email; set => _email = value; }
    public string Senha { get => _senha; set => _senha = value; }
    public string Nome_Fantasia { get => _nome_fantasia; set => _nome_fantasia = value; }
    public string Logo_empresa { get => _logo_empresa; set => _logo_empresa = value; }
    public string Estado { get => _estado; set => _estado = value; }
    public string Cidade { get => _cidade; set => _cidade = value; }
    public string Telefone { get => _telefone; set => _telefone = value; }

}