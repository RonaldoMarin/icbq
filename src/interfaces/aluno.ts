import { Usuario } from "./usuario";
import { Turma } from "./turma";
import { AlunoPresenca } from "./alunoPresenca";

export interface Aluno{
  id: number;
  Turma: Turma[];
  Usuario: Usuario[];
  AlunoPresenca: AlunoPresenca[];
}