import { PartialType } from '@nestjs/swagger';
import { CreateSuppliersManagementDto } from './create-suppliers-management.dto';

export class UpdateSuppliersManagementDto extends PartialType(CreateSuppliersManagementDto) {}
