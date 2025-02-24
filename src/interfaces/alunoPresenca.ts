import { Aluno } from "./aluno";
import { Chamada } from "./chamada";

export interface AlunoPresenca{
  id: number;
  Chamada: Chamada[];
  Aluno: Aluno[];
  status: string;
}