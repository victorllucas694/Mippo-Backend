import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateSuppliersManagementDto {
    @IsNotEmpty()
    @IsString()
    shipping_method: string;

    @IsNotEmpty()
    @IsString()
    supplier_name: string;

    @IsNotEmpty()
    @IsString()
    phone: string;

    @IsNotEmpty()
    @IsString()
    NIF: string;

}

export class CreateSuppliersSecretDataManagementDto {
    @IsNotEmpty()
    @IsString()
    bank_account_holder: string;
    
    @IsNotEmpty()
    @IsString()
    bank_agency: string;

    @IsNotEmpty()
    @IsString()
    bank_account: string;

    @IsNotEmpty()
    @IsString()
    bank_name: string;

    @IsNotEmpty()
    @IsString()
    bank_account_number: string;

    @IsNotEmpty()
    @IsString()
    road: string;

    @IsNotEmpty()
    @IsString()
    city: string;

    @IsNotEmpty()
    @IsString()
    CEP: string;

    
    @IsNotEmpty()
    @IsString()
    supplier_name: string;
}