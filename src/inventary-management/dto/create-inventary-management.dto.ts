import { IsNotEmpty, IsString } from "class-validator";

export class CreateInventaryManagementDto {
    @IsNotEmpty()
    @IsString()
    name: string;

    @IsNotEmpty()
    @IsString()
    lastName: string;

    @IsNotEmpty()
    @IsString()
    address: string;

    @IsNotEmpty()
    @IsString()
    complements: string;

    @IsNotEmpty()
    @IsString()
    city: string;
    
    @IsNotEmpty()
    @IsString()
    state: string;
  
    @IsNotEmpty()
    @IsString()
    zipCode: string;

    @IsNotEmpty()
    @IsString()
    country: string;

    @IsNotEmpty()
    @IsString()
    cardNumber: string;

    @IsNotEmpty()
    @IsString()
    cvv: string;

    @IsNotEmpty()
    @IsString()
    HolderName: string;

    @IsNotEmpty()
    @IsString()
    expirationDate: string;
}
