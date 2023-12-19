import { PartialType } from '@nestjs/swagger';
import { CreateEmployerManagementDto } from './create-employer-management.dto';

export class UpdateEmployerManagementDto extends PartialType(CreateEmployerManagementDto) {}
