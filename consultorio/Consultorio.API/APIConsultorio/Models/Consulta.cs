namespace consultorio.lib.Models
{
    public class Consulta
    {
        public int Id { get; set; }
        public int PacienteId { get; set; }
        public int MedicoId { get; set; }
        public DateTime DataConsulta { get; set; }
        public string? Diagnostico { get; set; }
        public string Status { get; set; } = "Agendada"; 

        public Paciente? Paciente { get; set; }
        public Medico? Medico { get; set; }

        public Consulta() { }

        public Consulta(int pacienteId, int medicoId, DateTime dataConsulta, string status = "Agendada")
        {
            PacienteId = pacienteId;
            MedicoId = medicoId;
            DataConsulta = dataConsulta;
            Status = status;
        }
    }
}
