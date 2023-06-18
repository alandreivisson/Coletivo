using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Threading.Tasks;

public partial class Home: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Carregar os dados do GridView
            
            CarregarEmpresasComGrid(Estado.SelectedValue, Capacidade.SelectedValue, TipoVeiculo.SelectedValue);
            
        }
        
    }


    public void CarregarEmpresasComGrid(string estado, string capacidade, string tipoVeiculo)
    {
        
        gdvEmpresa.Visible = false;

        DataSet dsAlunos = EmpresaBD.SeleiconarEmpresasCriterios(estado , capacidade, tipoVeiculo);
        
        int result = Funcoes.QuantidadeRegistros(dsAlunos);
        
        
        
        if (result <= 0) 
        {
            gdvEmpresa.Visible = false;
            txtResultado.Visible = true;
            ImgSemResultado.Visible = true;
            txtSucesso.Visible = true;
            return;
        }
        ImgSemResultado.Visible = false;
        txtResultado.Visible = false;
        txtSucesso.Visible = false;
        Funcoes.CarregarGridViewComDataSet(dsAlunos, gdvEmpresa);


       
        gdvEmpresa.Visible = true;
        

    }

    //void gdvAlunos_RowCommand(Object sender, GridViewCommandEventArgs butao)
    //{
    //    if (butao.CommandName == "excluir")
    //    {
    //        func.Visible = true;
    //    }
    //}

    protected void Capacidade_SelectedIndexChanged(object sender, EventArgs e)
    {
        CarregarEmpresasComGrid(Estado.SelectedValue, Capacidade.SelectedValue, TipoVeiculo.SelectedValue);
    }

    protected void Estado_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        CarregarEmpresasComGrid(Estado.SelectedValue, Capacidade.SelectedValue, TipoVeiculo.SelectedValue);
    }

    protected void TipoVeiculo_SelectedIndexChanged(object sender, EventArgs e)
    {
        CarregarEmpresasComGrid(Estado.SelectedValue, Capacidade.SelectedValue, TipoVeiculo.SelectedValue);
    }
}