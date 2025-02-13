namespace consultorio.lib.Models{


public class Especializacao
{
    //propriedades 
    public int EspecializacaoID {get; set;}
    public string Nome {get; set;}

    //contrutor
    public Especializacao(int especializacaoId, string nome)
    {
        EspecializacaoID = especializacaoId;
        Nome = nome;
    }

}
}