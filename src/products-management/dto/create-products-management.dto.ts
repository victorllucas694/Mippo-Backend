import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateProductsManagementDto {

    @IsNotEmpty()
    @IsString()
    name: string;

    @IsNotEmpty()
    @IsString()
    id: string;

    @IsNotEmpty()
    @IsString()
    price: string;

    @IsString()
    @IsNotEmpty()
    type: string;

    @IsNotEmpty()
    @IsString()
    code: string;

    @IsNotEmpty()
    @IsString()
    description: string;

    @IsNotEmpty()
    @IsString()
    category: string;

    @IsNotEmpty()
    @IsString()
    quality: string;

    @IsNotEmpty()
    @IsString()
    supplier_name: string;


    @IsNotEmpty()
    @IsString()
    brand: string;
}

export class CreateDropImagesDTO {
    @IsNotEmpty()
    @IsString()
    productCategory: string;

    @IsNotEmpty()
    @IsString()
    productCode: string;
}
