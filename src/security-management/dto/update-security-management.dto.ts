import { PartialType } from '@nestjs/swagger';
import { CreateSecurityManagementDto } from './create-security-management.dto';

export class UpdateSecurityManagementDto extends PartialType(CreateSecurityManagementDto) {}
