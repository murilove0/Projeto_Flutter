-- Inserir Especializações
INSERT INTO Especializacao (Nome)
VALUES 
('Cardiologia'),
('Dermatologia'),
('Pediatria'),
('Ortopedia'),
('Ginecologia');

-- Inserir Médicos
INSERT INTO Medico (Nome, CRM, EspecializacaoId)
VALUES
('Dr. João Silva', '123456', 1),  -- Cardiologia
('Dra. Ana Costa', '654321', 2),  -- Dermatologia
('Dr. Carlos Pereira', '789012', 3),  -- Pediatria
('Dra. Maria Souza', '345678', 4),  -- Ortopedia
('Dr. Lucas Oliveira', '987654', 5);  -- Ginecologia

-- Inserir Pacientes
INSERT INTO Paciente (Nome, DataNascimento, CPF, Telefone, Endereco, Email)
VALUES 
('Carlos Almeida', '1985-03-12', '123.456.789-00', '99999-8888', 'Rua A, 123', 'carlos@email.com'),
('Beatriz Fernandes', '1990-07-25', '234.567.890-11', '98765-4321', 'Rua B, 456', 'beatriz@email.com'),
('Juliana Lima', '1995-10-30', '345.678.901-22', '98888-7777', 'Rua C, 789', 'juliana@email.com');

-- Inserir Consultas
INSERT INTO Consulta (PacienteId, MedicoId, DataConsulta, Status)
VALUES 
(1, 1, '2025-02-15 10:00:00', 'Agendada'),
(2, 2, '2025-02-16 14:00:00', 'Agendada'),
(3, 3, '2025-02-17 09:00:00', 'Agendada');

-- Inserir Prontuários
INSERT INTO Prontuario (PacienteId, HistoricoMedico, Medicacoes, Alergias)
VALUES 
(1, 'Histórico de hipertensão. Faz uso de medicação anti-hipertensiva.', 'Captopril, Losartana', 'Nenhuma'),
(2, 'Sem histórico de doenças graves. Alergia a penicilina.', 'Paracetamol', 'Penicilina'),
(3, 'Histórico de asma. Uso esporádico de broncodilatadores.', 'Salbutamol', 'Nenhuma');

-- Inserir Relatórios
INSERT INTO Relatorio (ConsultaId, Observacoes)
VALUES 
(1, 'Consulta de rotina. A pressão arterial está controlada.'),
(2, 'Dermatite tratada com corticoide. Recomendado controle da dieta.'),
(3, 'Consulta pediátrica. Nenhum sinal de infecção. Recomendado acompanhamento.');

-- Inserir Usuários (para controle de acesso)
INSERT INTO Usuario (Nome, Email, SenhaHash, TipoUsuario)
VALUES
('Admin', 'admin@clinica.com', 'senha_hashed_admin', 'Admin'),
('Dr. João Silva', 'joao@clinica.com', 'senha_hashed_medico', 'Médico'),
('Beatriz Costa', 'beatriz@clinica.com', 'senha_hashed_recepcionista', 'Recepcionista');
