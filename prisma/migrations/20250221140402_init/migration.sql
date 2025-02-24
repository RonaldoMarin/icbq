/*
  Warnings:

  - You are about to drop the `Turma` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Turma";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "turmas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "data_cadastro" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "data_atualizacao" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "Aluno" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "turmaId" INTEGER NOT NULL,
    "usuario_id" INTEGER NOT NULL,
    CONSTRAINT "Aluno_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "turmas" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Aluno_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "chamadas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "data" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "turmaId" INTEGER NOT NULL,
    "presencas" INTEGER NOT NULL,
    "faltas" INTEGER NOT NULL,
    "visitantes" INTEGER NOT NULL,
    "total_biblias" INTEGER NOT NULL,
    "total_revistas" INTEGER NOT NULL,
    "total_ofertas" DECIMAL NOT NULL,
    CONSTRAINT "chamadas_turmaId_fkey" FOREIGN KEY ("turmaId") REFERENCES "turmas" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "alunos_presencas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "chamadaId" INTEGER NOT NULL,
    "alunoId" INTEGER NOT NULL,
    "status" TEXT NOT NULL,
    CONSTRAINT "alunos_presencas_chamadaId_fkey" FOREIGN KEY ("chamadaId") REFERENCES "chamadas" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "alunos_presencas_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "Aluno" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Aluno_usuario_id_key" ON "Aluno"("usuario_id");
