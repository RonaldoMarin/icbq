import { Aluno } from './aluno';

export interface Usuario {
  id: number;
  nome: string;
  email: string;
  telefone: string;
  cpf: string;
  data_aniversario: string;
  data_cadastro: string;
  data_atualizacao: string;
  Aluno: Aluno[];
}