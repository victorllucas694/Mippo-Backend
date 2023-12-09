import { PartialType } from '@nestjs/swagger';
import { CreateAdminCustomerManagerDto } from './create-admin-customer-manager.dto';

export class UpdateAdminCustomerManagerDto extends PartialType(CreateAdminCustomerManagerDto) {}
