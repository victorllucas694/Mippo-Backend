import { PartialType } from '@nestjs/swagger';
import { CreateProductsManagementDto } from './create-products-management.dto';

export class UpdateProductsManagementDto extends PartialType(CreateProductsManagementDto) {}
