namespace consultorio.lib.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nome { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        public string SenhaHash { get; set; } = string.Empty;  // Senha armazenada com hash
        public string TipoUsuario { get; set; } = "Recepcionista"; // Padrão para novo usuário

        public Usuario() { }

        public Usuario(string nome, string email, string senhaHash, string tipoUsuario)
        {
            Nome = nome;
            Email = email;
            SenhaHash = senhaHash;
            TipoUsuario = tipoUsuario;
        }
    }
}
