import { NextResponse } from "next/server";
import { Usuario } from "@/interfaces/usuario";
import { usuarioModel } from "@/models/usuario";

export async function POST(request: Request){
  try{
    const body: Usuario = await request.json();
    const usuario = await usuarioModel.createUsuario(body);
    return new NextResponse(JSON.stringify(usuario), {status: 201});
  }catch (error: any) {
    return new NextResponse(JSON.stringify({ error: error.message }), {status: 500});
  }
}