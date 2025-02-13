using Microsoft.EntityFrameworkCore;
using consultorio.Models;
namespace consultorio.Data
{
    public class ClinicaMedicaContext : DbContext
    {
        public ClinicaMedicaContext(DbContextOptions<ClinicaMedicaContext> options)
            : base(options)
        { }

        public DbSet<Paciente> Pacientes {get; set;}
        public DbSet<Especializacao> Especializacoes { get; set; }
        public DbSet<Medico> Medicos { get; set; }
        public DbSet<Consulta> Consultas { get; set; }
        public DbSet<Prontuario> Prontuarios { get; set; }
        public DbSet<Relatorio> Relatorios { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
    }

   
}
