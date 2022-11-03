CREATE DATABASE senac;

USE senac;

CREATE TABLE alunos (
    id_matricula INT,
    CHECK (id_matricula > 0 AND id_matricula < 1000),
    nome VARCHAR(30) NOT NULL DEFAULT 'nome',
    PRIMARY KEY (id_matricula)
);

CREATE TABLE telefones (
    numero VARCHAR(15),
    id_matricula INT,
    id_telefones INT,
    PRIMARY KEY (id_telefones , id_matricula),
    FOREIGN KEY (id_matricula)
        REFERENCES alunos (id_matricula)
);

