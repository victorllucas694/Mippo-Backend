import { PartialType } from '@nestjs/swagger';
import { CreateCommonUsersManagementDto } from './create-common-users-management.dto';

export class UpdateCommonUsersManagementDto extends PartialType(CreateCommonUsersManagementDto) {}
