-- Criar o banco de dados
CREATE DATABASE Cosultorio;
GO
USE Cosultorio;
GO

-- Tabela de Pacientes
CREATE TABLE Paciente (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    DataNascimento DATE NOT NULL,
    CPF NVARCHAR(14) UNIQUE NOT NULL,
    Telefone NVARCHAR(20),
    Endereco NVARCHAR(255),
    Email NVARCHAR(100) UNIQUE
);
GO

-- Tabela de Especializações Médicas
CREATE TABLE Especializacao (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(50) NOT NULL UNIQUE
);
GO

-- Tabela de Médicos
CREATE TABLE Medico (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    CRM NVARCHAR(20) UNIQUE NOT NULL,
    EspecializacaoId INT NOT NULL,
    FOREIGN KEY (EspecializacaoId) REFERENCES Especializacao(Id) ON DELETE CASCADE
);
GO

-- Tabela de Consultas
CREATE TABLE Consulta (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PacienteId INT NOT NULL,
    MedicoId INT NOT NULL,
    DataConsulta DATETIME NOT NULL,
    Diagnostico NVARCHAR(500),
    Status NVARCHAR(20) CHECK (Status IN ('Agendada', 'Realizada', 'Cancelada')) DEFAULT 'Agendada',
    FOREIGN KEY (PacienteId) REFERENCES Paciente(Id) ON DELETE CASCADE,
    FOREIGN KEY (MedicoId) REFERENCES Medico(Id) ON DELETE CASCADE
);
GO

-- Tabela de Prontuários
CREATE TABLE Prontuario (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PacienteId INT NOT NULL,
    HistoricoMedico NVARCHAR(MAX),
    Medicacoes NVARCHAR(MAX),
    Alergias NVARCHAR(MAX),
    FOREIGN KEY (PacienteId) REFERENCES Paciente(Id) ON DELETE CASCADE
);
GO

-- Tabela de Relatórios (Armazena registros de atividades médicas)
CREATE TABLE Relatorio (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ConsultaId INT NOT NULL,
    Observacoes NVARCHAR(MAX),
    DataGeracao DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ConsultaId) REFERENCES Consulta(Id) ON DELETE CASCADE
);
GO

-- Usuários (para controle de acesso)
CREATE TABLE Usuario (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    SenhaHash NVARCHAR(255) NOT NULL,  -- Armazena a senha com hash
    TipoUsuario NVARCHAR(20) CHECK (TipoUsuario IN ('Admin', 'Médico', 'Recepcionista')) NOT NULL
);
GO