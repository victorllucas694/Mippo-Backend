import { PartialType } from '@nestjs/swagger';
import { CreateOrderManagementDto } from './create-order-management.dto';

export class UpdateOrderManagementDto extends PartialType(CreateOrderManagementDto) {}
