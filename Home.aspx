<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="estilos.css" media="screen" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />


    <!-- links para datatables-->
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js" />

    <%--    <script src="Jquery Scripts/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="Jquery Scripts/jquery.maskedinput.js" type="text/javascript"></script>
    <script type='text/javascript'></script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <header class=" pt-5 col-12 pb-4 pt-3"  style="background-color:#000066;">
           <div class="container">
               <div class="row">
                <div class="col-4">

                </div>

                <div class="col-8 text-end">
                     <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-light">Home</asp:LinkButton>
                </div>
            </div>
           </div>
            
        </header>
       
        <div class="container">
            <div class="row text-left pt-4">
                
                <div class="col-4">
                    <asp:Literal ID="txtEstado" runat="server"> Estado</asp:Literal>
                    <asp:DropDownList ID="Estado" runat="server" OnSelectedIndexChanged="Estado_SelectedIndexChanged" AutoPostBack="true"  CssClass="form-control">
                        <asp:ListItem Enabled="False" Selected="True">Todos</asp:ListItem>
                        <asp:ListItem Value="Todos">Todos</asp:ListItem>
                        <asp:ListItem Value="AC">AC</asp:ListItem>
                        <asp:ListItem Value="AL">AL</asp:ListItem>
                        <asp:ListItem Value="AP">AP</asp:ListItem>
                        <asp:ListItem Value="AM">AM</asp:ListItem>
                        <asp:ListItem Value="BA">BA</asp:ListItem>
                        <asp:ListItem Value="CE">CE</asp:ListItem>
                        <asp:ListItem Value="DF">DF</asp:ListItem>
                        <asp:ListItem Value="ES">ES</asp:ListItem>
                        <asp:ListItem Value="GO">GO</asp:ListItem>
                        <asp:ListItem Value="MA">MA</asp:ListItem>
                        <asp:ListItem Value="MT">MT</asp:ListItem>
                        <asp:ListItem Value="MS">MS</asp:ListItem>
                        <asp:ListItem Value="MG">MG</asp:ListItem>
                        <asp:ListItem Value="PA">PA</asp:ListItem>
                        <asp:ListItem Value="PB">PB</asp:ListItem>
                        <asp:ListItem Value="PR">PR</asp:ListItem>
                        <asp:ListItem Value="PE">PE</asp:ListItem>
                        <asp:ListItem Value="PI">PI</asp:ListItem>
                        <asp:ListItem Value="RJ">RJ</asp:ListItem>
                        <asp:ListItem Value="RN">RN</asp:ListItem>
                        <asp:ListItem Value="RS">RS</asp:ListItem>
                        <asp:ListItem Value="RO">RO</asp:ListItem>
                        <asp:ListItem Value="RR">RR</asp:ListItem>
                        <asp:ListItem Value="SC">SC</asp:ListItem>
                        <asp:ListItem Value="SP">SP</asp:ListItem>
                        <asp:ListItem Value="SE">SE</asp:ListItem>
                        <asp:ListItem Value="TO">TO</asp:ListItem>

                    </asp:DropDownList>
                </div>
                
                
                
                <div class="col-4" >
                    
                        <asp:Literal ID="txtCapacidade" runat="server"> Capacidade</asp:Literal>    
                    <asp:DropDownList ID="Capacidade" runat="server" OnSelectedIndexChanged="Capacidade_SelectedIndexChanged" AutoPostBack="true"  CssClass="form-control">
                        <asp:ListItem Enabled="False" Selected="True">Todos</asp:ListItem>
                        <asp:ListItem Value="Todos">Todos</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                        <asp:ListItem Value="11">11</asp:ListItem>
                        <asp:ListItem Value="12">12</asp:ListItem>
                        <asp:ListItem Value="13">13</asp:ListItem>
                        <asp:ListItem Value="14">14</asp:ListItem>
                        <asp:ListItem Value="15">15</asp:ListItem>
                        <asp:ListItem Value="16">16</asp:ListItem>
                        <asp:ListItem Value="17">17</asp:ListItem>
                        <asp:ListItem Value="18">18</asp:ListItem>
                        <asp:ListItem Value="19">19</asp:ListItem>
                        <asp:ListItem Value="20">20</asp:ListItem>
                        <asp:ListItem Value="21">21</asp:ListItem>
                        <asp:ListItem Value="22">22</asp:ListItem>
                        <asp:ListItem Value="23">23</asp:ListItem>
                        <asp:ListItem Value="24">24</asp:ListItem>
                        <asp:ListItem Value="25">25</asp:ListItem>
                        <asp:ListItem Value="26">26</asp:ListItem>
                        <asp:ListItem Value="27">27</asp:ListItem>
                        <asp:ListItem Value="28">28</asp:ListItem>
                        <asp:ListItem Value="29">29</asp:ListItem>
                        <asp:ListItem Value="30">30</asp:ListItem>
                        <asp:ListItem Value="31">31</asp:ListItem>
                        <asp:ListItem Value="32">32</asp:ListItem>
                        <asp:ListItem Value="33">33</asp:ListItem>
                        <asp:ListItem Value="34">34</asp:ListItem>
                        <asp:ListItem Value="35">35</asp:ListItem>
                        <asp:ListItem Value="36">36</asp:ListItem>
                        <asp:ListItem Value="37">37</asp:ListItem>
                        <asp:ListItem Value="38">38</asp:ListItem>
                        <asp:ListItem Value="39">39</asp:ListItem>
                        <asp:ListItem Value="40">40</asp:ListItem>
                        <asp:ListItem Value="41">41</asp:ListItem>
                        <asp:ListItem Value="42">42</asp:ListItem>
                        <asp:ListItem Value="43">43</asp:ListItem>
                        <asp:ListItem Value="44">44</asp:ListItem>
                        <asp:ListItem Value="45">45</asp:ListItem>
                        <asp:ListItem Value="46">46</asp:ListItem>
                        <asp:ListItem Value="47">47</asp:ListItem>
                        <asp:ListItem Value="48">48</asp:ListItem>
                        <asp:ListItem Value="49">49</asp:ListItem>
                        <asp:ListItem Value="50">50</asp:ListItem>
                        <asp:ListItem Value="51">51</asp:ListItem>
                        <asp:ListItem Value="52">52</asp:ListItem>
                        <asp:ListItem Value="53">53</asp:ListItem>
                        <asp:ListItem Value="54">54</asp:ListItem>
                        <asp:ListItem Value="55">55</asp:ListItem>
                        <asp:ListItem Value="56">56</asp:ListItem>
                        <asp:ListItem Value="57">57</asp:ListItem>
                        <asp:ListItem Value="58">58</asp:ListItem>
                        <asp:ListItem Value="59">59</asp:ListItem>
                        <asp:ListItem Value="60">60</asp:ListItem>
                        <asp:ListItem Value="61">61</asp:ListItem>
                        <asp:ListItem Value="62">62</asp:ListItem>
                        <asp:ListItem Value="63">63</asp:ListItem>
                        <asp:ListItem Value="64">64</asp:ListItem>
                        <asp:ListItem Value="65">65</asp:ListItem>
                        <asp:ListItem Value="66">66</asp:ListItem>
                        <asp:ListItem Value="67">67</asp:ListItem>
                        <asp:ListItem Value="68">68</asp:ListItem>
                        <asp:ListItem Value="69">69</asp:ListItem>
                        <asp:ListItem Value="70">70</asp:ListItem>
                        <asp:ListItem Value="71">71</asp:ListItem>
                        <asp:ListItem Value="72">72</asp:ListItem>
                        <asp:ListItem Value="73">73</asp:ListItem>
                        <asp:ListItem Value="74">74</asp:ListItem>
                        <asp:ListItem Value="75">75</asp:ListItem>
                        <asp:ListItem Value="76">76</asp:ListItem>
                        <asp:ListItem Value="77">77</asp:ListItem>
                        <asp:ListItem Value="78">78</asp:ListItem>
                        <asp:ListItem Value="79">79</asp:ListItem>
                        <asp:ListItem Value="80">80</asp:ListItem>
                        <asp:ListItem Value="81">81</asp:ListItem>
                        <asp:ListItem Value="82">82</asp:ListItem>
                        <asp:ListItem Value="83">83</asp:ListItem>
                        <asp:ListItem Value="84">84</asp:ListItem>
                        <asp:ListItem Value="85">85</asp:ListItem>
                        <asp:ListItem Value="86">86</asp:ListItem>
                        <asp:ListItem Value="87">87</asp:ListItem>
                        <asp:ListItem Value="88">88</asp:ListItem>
                        <asp:ListItem Value="89">89</asp:ListItem>
                        <asp:ListItem Value="90">90</asp:ListItem>
                        <asp:ListItem Value="91">91</asp:ListItem>
                        <asp:ListItem Value="92">92</asp:ListItem>
                        <asp:ListItem Value="93">93</asp:ListItem>
                        <asp:ListItem Value="94">94</asp:ListItem>
                        <asp:ListItem Value="95">95</asp:ListItem>
                        <asp:ListItem Value="96">96</asp:ListItem>
                        <asp:ListItem Value="97">97</asp:ListItem>
                        <asp:ListItem Value="98">98</asp:ListItem>
                        <asp:ListItem Value="99">99</asp:ListItem>
                        <asp:ListItem Value="100">100</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <div class="col-4">
                    <asp:Literal ID="txtTipoVeiculo" runat="server"> Veiculo </asp:Literal>
                    
                    
                    <asp:DropDownList ID="TipoVeiculo" runat="server" OnSelectedIndexChanged="TipoVeiculo_SelectedIndexChanged" AutoPostBack="true"  CssClass="form-control">
                        <asp:ListItem Enabled="False" Selected="True">Todos</asp:ListItem>
                        <asp:ListItem Value="Todos">Todos</asp:ListItem>
                        <asp:ListItem Value="1">Microvan</asp:ListItem>
                        <asp:ListItem Value="2">Van</asp:ListItem>
                        <asp:ListItem Value="3">Microonibus</asp:ListItem>
                        <asp:ListItem Value="4">Ônibus</asp:ListItem>
                    </asp:DropDownList>
                    <div>
                        <asp:Literal ID="msgSucesso" runat="server" Visible="false" Text="Aqui"></asp:Literal>
                        <asp:Literal ID="msgCapacidade" runat="server" Visible="false" Text="Aqui"></asp:Literal>
                        <asp:Literal ID="msgTipoVeiculo" runat="server" Visible="false" Text="Aqui"></asp:Literal>
                    </div>


                </div>

            </div>
            <div class="container">
                <div class="row text-left pt-5 mt-0">

                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    <br />
                    <br />
                    <br />


                    <asp:GridView ID="gdvEmpresa" HeaderStyle-BackColor="#000066" BorderWidth="0px" HeaderStyle-CssClass="text-white border-1 text-center" Style="text-align: center; border-width: 1px;" PagerStyle-CssClass="text-white" ClientIDMode="Static" runat="server" AutoGenerateColumns="false" AutoPostBack="true" Visible="true">
                        <Columns>
                            <asp:TemplateField HeaderText="Empresa">
                                <ItemTemplate>
                                    <asp:Image ID="Img" Height="75px" Width="75px" Style="border-radius: 50%; border-style: none; border-width: thin;" runat="server" ImageUrl='<%# Bind("EMP_LOGO_EMPRESA") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Id" DataField="EMP_ID" Visible="false" />
                            <asp:BoundField HeaderText="Nome Fantasia" DataField="EMP_NOME_FANTASIA" />
                            <asp:BoundField HeaderText="Cidade " DataField="EMP_CIDADE" />
                            <asp:BoundField HeaderText="Estado " DataField="EMP_ESTADO" />
                            <asp:BoundField HeaderText="Email" DataField="EMP_EMAIL" />
                            <asp:BoundField HeaderText="Telefone" DataField="EMP_TELEFONE" DataFormatString="{0:(##)#####-####}" />


                            <%-- <asp:ButtonField ControlStyle-CssClass="btn-outline-dark" HeaderText="Excluir" CommandName="excluir"
                                Visible="true" ButtonType="Button" Text="Excluir" />--%>
                            <%--            <asp:ButtonField ButtonType="Image" CommandName="Delete"
                    ImageUrl="~/App_Themes/Padrao/image/fechar.jpg"
                    ControlStyle-Width="15" HeaderText="Excluir"/> --%>
                        </Columns>
                    </asp:GridView>

                    <div class="text-center pt-0 mt-0 pb-0 mb-0 h1">
                        <asp:Literal ID="txtSucesso" runat="server" Visible="false">ColetivoGo</asp:Literal>
                    </div>
                    <div class="text-center pt-0 mt-0 pb-0 mb-0">
                        <asp:Image ID="ImgSemResultado" Height="300px" Width="300px" runat="server" ImageUrl="~/Imagens/SemResultados.png"
                            Visible="false" />
                    </div>
                    <div class="text-center pt-0 mt-0 pb-0 mb-0 h4">
                        <asp:Literal ID="txtResultado" runat="server" Visible="false">Sem empresas para os critérios!</asp:Literal>
                    </div>

                    
                    

                </div>
            </div>
            <%-- </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-2">
                    </div>
                    <div class="col-8">
                        <asp:Literal ID="lblAlunos" runat="server"></asp:Literal>
                        <br />
                        <br />
                        <br />

                        <asp:GridView ID="gdvEmpresa" ClientIDMode="Static" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="EMP_ID" />
                                <asp:BoundField HeaderText="EMAIL" DataField="EMP_EMAIL" />
                                <asp:BoundField HeaderText="CEP" DataField="EMP_CEP" DataFormatString="{0:dd/MM/yyyy}" />
                                <asp:BoundField HeaderText="BAIRRO" DataField="EMP_BAIRRO" />
                                <%-- <asp:ButtonField ControlStyle-CssClass="btn-outline-dark" HeaderText="Excluir" CommandName="excluir"
                                Visible="true" ButtonType="Button" Text="Excluir" />--%>
            <%--   </Columns>
                        </asp:GridView>
                        <asp:Literal ID="func" runat="server" Visible="false">Funciona</asp:Literal>
                    </div>
                    <div class="col-2">
                    </div>
                </div>
            </div>--%>



            <%--</div>--%>
        </div>
    </form>
    
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="//cdn.datatables.net/plug-ins/1.13.4/i18n/pt-PT.json"></script>


    <script>
        let table = new DataTable('#gdvEmpresa');
    </script>
    <script type="text/javascript">
        function ShowLoading() {
            document.getElementById('loadingDiv').style.display = 'block';
        }

        function HideLoading() {
            document.getElementById('loadingDiv').style.display = 'none';
        }
    </script>


    <%--<script>
        $(document).ready(function () {

            $.mask.definitions['~'] = "[+-]";
            $("#TELEFONE").mask("(99)9999-9999");


        });
    </script>--%>
</body>
</html>
