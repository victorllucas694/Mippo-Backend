import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateOrderManagementDto {
    @IsNotEmpty()
    @IsString()
    name: string;

    @IsNotEmpty()
    @IsString()
    Codigo: string;

    @IsNotEmpty()
    @IsString()
    Codigo_das_Imagens: string;

    @IsNotEmpty()
    @IsString()
    Descricao_da_placa_de_video: string;

    @IsNotEmpty()
    @IsString()
    Descricao_final_sobre_o_produto: string;
    
    @IsNotEmpty()
    @IsString()
    Dimensoes_da_embalagem: string;
  
    @IsNotEmpty()
    @IsString()
    Dimensoes_do_pacote: string;
  
    @IsNotEmpty()
    @IsString()
    Fabricante: string;
  
    @IsNotEmpty()
    @IsString()
    Formato: string;
  
    @IsNotEmpty()
    @IsString()
    Fornecedor: string;
  
    @IsNotEmpty()
    @IsString()
    Interface_do_HD: string;
  
    @IsNotEmpty()
    @IsString()
    Marca: string;
  
    @IsNotEmpty()
    @IsString()
    Marca_do_chipset_de_video: string;
  
    @IsNotEmpty()
    @IsString()
    Marca_do_processador: string;
  
    @IsNotEmpty()
    @IsString()
    Numero_de_processadores: string;
  
    @IsNotEmpty()
    @IsString()
    Peso_do_produto: string;
  
    @IsNotEmpty()
    @IsString()
    Plataforma_de_hardware: string;
  
    @IsNotEmpty()
    @IsString()
    Quantidade_em_estoque: string;
  
    @IsNotEmpty()
    @IsString()
    Sistema_operacional: string;
  
    @IsNotEmpty()
    @IsString()
    Tamanho_da_memoria: string;
  
    @IsNotEmpty()
    @IsString()
    Tamanho_do_HD: string;
  
    @IsNotEmpty()
    @IsString()
    Tecnologia_da_memoria: string;
  
    @IsNotEmpty()
    @IsString()
    Tecnologia_de_conexao: string;
  
    @IsNotEmpty()
    @IsString()
    Tecnologia_do_HD: string;
  
    @IsNotEmpty()
    @IsString()
    Tipo_de_Memoria: string;
  
    @IsNotEmpty()
    @IsString()
    Tipo_de_conexao: string;
  
    @IsNotEmpty()
    @IsString()
    Tipo_de_processador: string;
  
    @IsNotEmpty()
    @IsString()
    Tipo_de_soquete_do_processador: string;

    @IsNotEmpty()
    @IsNumber()
    User_Id: number;
  
    @IsNotEmpty()
    @IsString()
    Valor_a_prazo: string;
  
    @IsNotEmpty()
    @IsString()
    Valor_a_vista: string;
  
    @IsNotEmpty()
    @IsString()
    Velocidade_do_processador: string;
    
    @IsNotEmpty()
    @IsNumber()
    id: number
}
