import { Aluno } from './aluno';

export interface Turma{
  id: number;
  nome: string;
  descricao: string;
  data_cadastro: string;
  data_atualizacao: string;
  Aluno: Aluno[];
}