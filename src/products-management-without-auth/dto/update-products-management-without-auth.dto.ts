import { PartialType } from '@nestjs/swagger';
import { CreateProductsManagementWithoutAuthDto } from './create-products-management-without-auth.dto';

export class UpdateProductsManagementWithoutAuthDto extends PartialType(CreateProductsManagementWithoutAuthDto) {}
