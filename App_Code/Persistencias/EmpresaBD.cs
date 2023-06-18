using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de EmpresaBD
/// </summary>
public static class EmpresaBD
{
    public static DataSet SelecionarTodasEmpresas()
    {
        DataSet ds = new DataSet();
        IDbConnection Conexao = MapeamentoBD.Conexao();
        IDbCommand Comando;
        IDataAdapter Adapter;
        string sql = "SELECT * FROM EMP_EMPRESA;";
        Comando = MapeamentoBD.ComandoSQL(sql, Conexao);
        Adapter = MapeamentoBD.Adapter(Comando);
        Adapter.Fill(ds);
        return ds;
    }
    public static DataSet SeleiconarEmpresasCriterios(string estado, string capacidade, string tipoVeiculo) 
    {
        string sql = sql = "SELECT * FROM EMP_EMPRESA;"; ;
        
        //if (estado.Equals("Todos") && capacidade.Equals("Todos")) 
        //{
            
        //}
        if (!estado.Equals("Todos") && !capacidade.Equals("Todos") && !tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT DISTINCT EMP.EMP_ID, EMP.EMP_EMAIL, EMP.EMP_NOME_FANTASIA, EMP.EMP_CEP, EMP.EMP_BAIRRO, EMP.EMP_TELEFONE, EMP.EMP_CIDADE, EMP.EMP_ESTADO, EMP.EMP_LOGO_EMPRESA FROM EMP_EMPRESA EMP " +
                "INNER JOIN VEI_VEICULO VEI ON VEI.EMP_ID = EMP.EMP_ID " +
                "INNER JOIN TIP_TIPO_VEICULO TIP ON TIP.TIP_ID = VEI.TIP_ID " + 
                "WHERE EMP.EMP_ESTADO ='" + estado + "' AND TIP.TIP_ID = '"+tipoVeiculo+"' AND VEI.VEI_CAPACIDADE >= '"+capacidade+"';";
        }
        if (!estado.Equals("Todos") && capacidade.Equals("Todos") && tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT * FROM EMP_EMPRESA WHERE EMP_ESTADO = '" + estado + "';";
        }
        if (estado.Equals("Todos") && !capacidade.Equals("Todos") && tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT DISTINCT EMP.EMP_ID, EMP.EMP_EMAIL, EMP.EMP_NOME_FANTASIA, EMP.EMP_CEP, EMP.EMP_BAIRRO, EMP.EMP_TELEFONE, EMP.EMP_CIDADE, EMP.EMP_ESTADO, EMP.EMP_LOGO_EMPRESA  FROM EMP_EMPRESA EMP " +
                "INNER JOIN VEI_VEICULO VEI ON VEI.EMP_ID = EMP.EMP_ID " +
                "WHERE VEI.VEI_CAPACIDADE >= '" + capacidade + "';";
        }
        if (estado.Equals("Todos") && capacidade.Equals("Todos") && !tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT DISTINCT EMP.EMP_ID, EMP.EMP_EMAIL, EMP.EMP_NOME_FANTASIA, EMP.EMP_CEP, EMP.EMP_BAIRRO, EMP.EMP_TELEFONE, EMP.EMP_CIDADE, EMP.EMP_ESTADO, EMP.EMP_LOGO_EMPRESA  FROM EMP_EMPRESA EMP " +
                "INNER JOIN VEI_VEICULO VEI ON VEI.EMP_ID = EMP.EMP_ID " +
                "INNER JOIN TIP_TIPO_VEICULO TIP ON TIP.TIP_ID = VEI.TIP_ID " + 
                "WHERE TIP.TIP_ID = '" + tipoVeiculo + "';";
        }
        if (estado.Equals("Todos") && !capacidade.Equals("Todos") && !tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT DISTINCT EMP.EMP_ID, EMP.EMP_EMAIL, EMP.EMP_NOME_FANTASIA, EMP.EMP_CEP, EMP.EMP_BAIRRO, EMP.EMP_TELEFONE, EMP.EMP_CIDADE, EMP.EMP_ESTADO, EMP.EMP_LOGO_EMPRESA  FROM EMP_EMPRESA EMP " +
                "INNER JOIN VEI_VEICULO VEI ON VEI.EMP_ID = EMP.EMP_ID " +
                "INNER JOIN TIP_TIPO_VEICULO TIP ON TIP.TIP_ID = VEI.TIP_ID " +
                "WHERE TIP.TIP_ID = '" + tipoVeiculo + "' AND VEI.VEI_CAPACIDADE >= '" + capacidade + "';";
        }
        if (!estado.Equals("Todos") && capacidade.Equals("Todos") && !tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT DISTINCT EMP.EMP_ID, EMP.EMP_EMAIL, EMP.EMP_NOME_FANTASIA, EMP.EMP_CEP, EMP.EMP_BAIRRO, EMP.EMP_TELEFONE, EMP.EMP_CIDADE, EMP.EMP_ESTADO, EMP.EMP_LOGO_EMPRESA  FROM EMP_EMPRESA EMP " +
                "INNER JOIN VEI_VEICULO VEI ON VEI.EMP_ID = EMP.EMP_ID " +
                "INNER JOIN TIP_TIPO_VEICULO TIP ON TIP.TIP_ID = VEI.TIP_ID " +
                "WHERE EMP.EMP_ESTADO ='" + estado + "' AND TIP.TIP_ID = '" + tipoVeiculo + "';";
        }
        if (!estado.Equals("Todos") && !capacidade.Equals("Todos") && tipoVeiculo.Equals("Todos"))
        {
            sql = "SELECT DISTINCT EMP.EMP_ID, EMP.EMP_EMAIL, EMP.EMP_NOME_FANTASIA, EMP.EMP_CEP, EMP.EMP_BAIRRO, EMP.EMP_TELEFONE, EMP.EMP_CIDADE, EMP.EMP_ESTADO , EMP.EMP_LOGO_EMPRESA FROM EMP_EMPRESA EMP " +
                "INNER JOIN VEI_VEICULO VEI ON VEI.EMP_ID = EMP.EMP_ID " +
                "INNER JOIN TIP_TIPO_VEICULO TIP ON TIP.TIP_ID = VEI.TIP_ID " +
                "WHERE EMP.EMP_ESTADO ='" + estado + "' AND VEI.VEI_CAPACIDADE >= '" + capacidade + "';";
        }
        
        return ExecutarQuery(sql);

    }
    public static DataSet ExecutarQuery(string sql) 
    {
        DataSet ds = new DataSet();
        IDbConnection Conexao = MapeamentoBD.Conexao();
        IDbCommand Comando;
        IDataAdapter Adapter;
        Comando = MapeamentoBD.ComandoSQL(sql, Conexao);
        Adapter = MapeamentoBD.Adapter(Comando);
        Adapter.Fill(ds);
        return ds;
    } 

}