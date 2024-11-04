import { PartialType } from '@nestjs/swagger';
import { CreateUserSettingDto } from './create-user-setting.dto';
import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdateUserSettingDto extends PartialType(CreateUserSettingDto) {
    @IsNotEmpty()
    @IsNumber()
    id: number;

    @IsNotEmpty()
    @IsString()
    address: string;

    @IsNotEmpty()
    @IsString()
    address_other: string;

    @IsNotEmpty()
    @IsString()
    city: string;

    @IsNotEmpty()
    @IsString()
    state: string;

    @IsNotEmpty()
    @IsString()
    CEP: string;

    @IsNotEmpty()
    @IsString()
    country: string;

    @IsNotEmpty()
    @IsString()
    User_Id: number;
}

export class UpdateNewUserSettingDto {
    @IsNotEmpty()
    email: string;
  
    @IsNotEmpty()
    last_name: string;
  
    @IsNotEmpty()
    name: string;
  
    @IsNotEmpty()
    phone: string;
  }