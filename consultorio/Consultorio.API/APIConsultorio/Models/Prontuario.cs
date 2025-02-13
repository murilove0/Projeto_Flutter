namespace consultorio.lib.Models
{
public class Prontuario
{
    //propriedades 
    public int ProntuarioID {get; set;}
    public int PacienteID {get; set;}
    public int MedicoID {get; set;}
    public string Notas {get; set;}
    public string Diagnostico {get; set;}
    public string Prescricao {get; set;}

    //construtor
    public Prontuario(int prontuarioid, int pacienteId, int medicoId, string notas, string diagnostico, string prescricao)
    {
        ProntuarioID = prontuarioid;
        PacienteID = pacienteId;
        MedicoID = medicoId;
        Notas = notas;
        Diagnostico = diagnostico;
        Prescricao = prescricao;
    }
}
}