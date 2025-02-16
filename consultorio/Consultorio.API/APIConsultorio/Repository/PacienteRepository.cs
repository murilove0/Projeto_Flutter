using System;
using APIConsultorio.Models;
using Microsoft.EntityFrameworkCore;
using APIConsultorio.Data;

namespace APIConsultorio.Repository
{
    public class PacienteRepository
    {
        private readonly AppContext _context;

        public PacienteRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<Paciente>> GetAllAsync() => await _context.Pacientes.ToListAsync();
        public async Task AddAsync(Paciente paciente)
        {
            await _context.Pacientes.AddAsync(paciente);
            await _context.SaveChangesAsync();
        }
    }
}