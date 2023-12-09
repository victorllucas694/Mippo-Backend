import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreatePaymentShippingCartDto {
    @IsNotEmpty()
    @IsNumber()
    id: number;
    
    @IsNotEmpty()
    @IsNumber()
    id_pedido: number;

    @IsNotEmpty()
    @IsNumber()
    categoria_pedido: number;

    @IsNotEmpty()
    @IsNumber()
    codigo_do_pedido: number;

    @IsNotEmpty()
    @IsNumber()
    User_Id: number;
}
