import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreatePaymentDto {
    @IsNotEmpty()
    @IsNumber()
    id: number;

    @IsNotEmpty()
    @IsString()
    CardholderName: string;
    
    @IsNotEmpty()
    @IsString()
    cardNumber: string;

    @IsNotEmpty()
    @IsString()
    ExpirationMonth: string;
    
    @IsNotEmpty()
    @IsString()
    ExpirationYear: string;
    
    @IsNotEmpty()
    @IsString()
    CVC: string;
    
    @IsNotEmpty()
    @IsString()
    OfferCode: string;
    
    @IsNotEmpty()
    @IsString()
    ipAddress: string;
    
    @IsNotEmpty()
    @IsString()
    city: string;
    
    @IsNotEmpty()
    @IsString()
    region: string;
    
    @IsNotEmpty()
    @IsString()
    country: string;
    
    @IsNotEmpty()
    @IsString()
    postal: string;
        
    @IsNotEmpty()
    @IsString()
    hostname: string;

    @IsNotEmpty()
    @IsString()
    total_access_by_ip_address: string;
        
    @IsNotEmpty()
    @IsString()
    ip_address_id: string;
}