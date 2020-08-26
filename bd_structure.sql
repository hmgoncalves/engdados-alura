CREATE DATABASE clinica;

CREATE TABLE cobranca_paciente(
    id serial PRIMARY KEY,
    definicao VARCHAR(100) NOT NULL,
    identificacao INT NOT NULL,
    nome  VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    codigo_postal INT NOT NULL,
    regiao VARCHAR(50) NOT NULL,
    total_cobrancas INT NOT NULL,
    media_custos_cobertos NUMERIC NOT NULL,
    media_pagamento_total NUMERIC NOT NULL,
    media_gastos_cuidados NUMERIC NOT NULL
)

SELECT * FROM cobranca_paciente;

DROP TABLE cobranca_paciente;

CREATE TABLE dados_analises(
    id INT PRIMARY KEY,
    diagnostico VARCHAR(5) NOT NULL,
    media_raio NUMERIC NOT NULL,
    media_textura NUMERIC NOT NULL,
    media_perimetro NUMERIC NOT NULL,
    media_area NUMERIC NOT NULL,
    media_suavidade NUMERIC NOT NULL,
    media_compactacao NUMERIC NOT NULL,
    media_concavidade NUMERIC NOT NULL,
    media_concavidade_pontos NUMERIC NOT NULL,
    media_simetria NUMERIC NOT NULL,
    media_dimensao_fractal NUMERIC NOT NULL,
    se_raio NUMERIC NOT NULL,
    se_textura NUMERIC NOT NULL,
    se_perimetro NUMERIC NOT NULL,
    se_area NUMERIC NOT NULL,
    se_suavidade NUMERIC NOT NULL,
    se_compactacao NUMERIC NOT NULL,
    se_concavidade NUMERIC NOT NULL,
    se_concavidade_pontos NUMERIC NOT NULL,
    se_simetria NUMERIC NOT NULL,
    se_dimensao_fractal NUMERIC NOT NULL,
    pior_raio NUMERIC NOT NULL,
    pior_textura NUMERIC NOT NULL,
    pior_perimetro NUMERIC NOT NULL,
    pior_area NUMERIC NOT NULL,
    pior_suavidade NUMERIC NOT NULL,
    pior_compactacao NUMERIC NOT NULL,
    pior_concavidade NUMERIC NOT NULL,
    pior_concavidade_pontos NUMERIC NOT NULL,
    pior_simetria NUMERIC NOT NULL,
    pior_dimensao_fractal NUMERIC NOT NULL
)

CREATE TABLE pacientes(
    id serial PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(30),
    endereco VARCHAR(200),
    convenio VARCHAR(40),
    cpf VARCHAR(14),
    nascimento DATE
)

CREATE TABLE funcionarios(
    id serial PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especializacao VARCHAR(50),
    data_contratacao DATE,
    telefone VARCHAR(30),
    endereco VARCHAR(200),
    cpf VARCHAR(14),
    nascimento DATE
)

CREATE TABLE consultas(
    id serial PRIMARY KEY,
    paciente INT REFERENCES pacientes(id) ON DELETE CASCADE,
    funcionario INT REFERENCES funcionarios(id) ON DELETE CASCADE,
    sala INT,
    agendado VARCHAR(3),
    data_hora TIMESTAMP,
    retorno VARCHAR(3)
)