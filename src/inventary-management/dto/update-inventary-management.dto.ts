import { PartialType } from '@nestjs/swagger';
import { CreateInventaryManagementDto } from './create-inventary-management.dto';

export class UpdateInventaryManagementDto extends PartialType(CreateInventaryManagementDto) {}
