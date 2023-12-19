import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';
export class CreateEmployerManagementDto {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @IsString()
  last_name: string;

  @IsNotEmpty()
  @IsString()
  email: string;

  @IsNotEmpty()
  @IsString()
  Employee_gender: string;

  @IsNotEmpty()
  @IsString()
  password: string;

  @IsNotEmpty()
  @IsString()
  numberJob: string;

  @IsNotEmpty()
  @IsString()
  position: string;

  @IsNotEmpty()
  @IsString()
  employee_code: string;

  @IsNotEmpty()
  @IsString()
  address: string;

  @IsNotEmpty()
  @IsString()
  RG: string;

  @IsNotEmpty()
  @IsString()
  CPF: string;

  @IsNotEmpty()
  @IsString()
  phone: string;

  @IsNotEmpty()
  @IsString()
  employee_supervisor: string;

  @IsNotEmpty()
  @IsString()
  bank_account: string;

  @IsNotEmpty()
  @IsString()
  agency: string;

  @IsNotEmpty()
  @IsString()
  Bank: string;

  @IsNotEmpty()
  @IsString()
  employer_date: string;

  @IsNotEmpty()
  @IsString()
  workload: string;
}
