import { Turma } from './turma';
import { AlunoPresenca } from './alunoPresenca';

export interface Chamada{
  id: number;
  data: string;
  Turma: Turma[];
  presecas: number;
  faltas: number;
  visitantes: number;
  total_biblias: number;
  total_revistas: number;
  total_ofertas: number;
  AlunosPresenca: AlunoPresenca[];
}