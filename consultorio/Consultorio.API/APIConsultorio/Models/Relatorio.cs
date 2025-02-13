namespace consultorio.lib.Models
{
public class Relatorio
{
    //propriedades 
    public int RelatorioID {get; set;}
    public string Tipo {get; set;}
    public DateTime DataGeracao {get; set;}
    public int ConsultaID {get; set;}

    //construtor
    public Relatorio(int relatorioId, string tipo, DateTime dataGeracao, int consultaId)
    {
        RelatorioID = relatorioId;
        Tipo = tipo;
        DataGeracao = dataGeracao;
        ConsultaID = consultaId;
    }
}
}