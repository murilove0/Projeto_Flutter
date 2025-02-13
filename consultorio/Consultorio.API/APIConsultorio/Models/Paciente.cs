namespace consultorio.lib.Models
{
    public class Paciente
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public DateTime DataNascimento { get; set; }
        public string CPF { get; set; }
        public string? Telefone { get; set; }
        public string? Endereco { get; set; }
        public string? Email { get; set; }

        // Construtor padrão
        public Paciente() { }

        // Construtor com parâmetros
        public Paciente(string nome, DateTime dataNascimento, string cpf, string? telefone, string? endereco, string? email)
        {
            Nome = nome;
            DataNascimento = dataNascimento;
            CPF = cpf;
            Telefone = telefone;
            Endereco = endereco;
            Email = email;
        }
    }
}
