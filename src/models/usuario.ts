import { Usuario } from '@/interfaces/usuario';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

const getAllUsuarios = async (searchParams?: { [key: string]: any }) => {
  return await prisma.usuario.findMany({
    where: {
      ...(searchParams && {
        ...searchParams,
      }),
    },
    include: {
      aluno: true,
    },
  });
};

const getUsuarioById = async (id: number) => {
  return await prisma.usuario.findUnique({
    where: {
      id,
    },
    include: {
      aluno: true,
    },
  });
};

const createUsuario = async (usuario: Usuario) => {
  return await prisma.usuario.create({
    data: usuario,
  });
}

export const usuarioModel = {
  getAllUsuarios,
  getUsuarioById,
  createUsuario,
}