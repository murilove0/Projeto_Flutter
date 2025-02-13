namespace consultorio.lib.Models
{
    public class Medico
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string CRM { get; set; }
        public int EspecializacaoId { get; set; }
        public Especializacao? Especializacao { get; set; }

        public Medico() { }

        public Medico(string nome, string crm, int especializacaoId)
        {
            Nome = nome;
            CRM = crm;
            EspecializacaoId = especializacaoId;
        }
    }
}
