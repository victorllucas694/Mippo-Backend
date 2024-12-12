import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreatePaymentShippingCartDto {
    @IsNotEmpty()
    @IsNumber()
    id: string;
    
    @IsNotEmpty()
    @IsString()
    id_pedido: string;

    @IsNotEmpty()
    @IsString()
    categoria_pedido: String;

    @IsNotEmpty()
    @IsString()
    codigo_do_pedido: string;

    @IsNotEmpty()
    @IsString()
    User_Id: string;

    @IsNotEmpty()
    @IsString()
    pagamento: string;

    @IsNotEmpty()
    @IsString()
    retirado: string;
}


