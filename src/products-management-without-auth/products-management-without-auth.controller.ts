import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Res,
} from '@nestjs/common';
import { ProductsManagementWithoutAuthService } from './products-management-without-auth.service';
import {
  CreateProductsManagementWithoutAuthDto,CreateDataDto
} from './dto/create-products-management-without-auth.dto';
import { UpdateProductsManagementWithoutAuthDto } from './dto/update-products-management-without-auth.dto';
import { Response } from 'express';
import { join } from 'path';

@Controller('products-management-without-auth')
export class ProductsManagementWithoutAuthController {
  constructor(
    private readonly productsManagementWithoutAuthService: ProductsManagementWithoutAuthService,
  ) {}

  @Get('find/more/seller/products/:category')
  findAll(@Param('category') category: string) {
    return this.productsManagementWithoutAuthService.findAllProductsByCategory(
      category,
    );
  }

  @Get('get/all/images/:category/:id/:imagecode')
  getImageCode(
    @Param('category') category: string,
    @Param('id') id: string,
    @Param('imagecode') imagecode: string,
  ) {
    return this.productsManagementWithoutAuthService.getImagesByProductData(
      category,
      id,
      imagecode,
    );
  }

  @Get('/get/product/:category/:codigo/:id')
  findOne(
    @Param('id') id: string,
    @Param('codigo') codigo: string,
    @Param('category') category: string,
  ) {
    return this.productsManagementWithoutAuthService.findProductByIdAndCategory(
      id,
      codigo,
      category,
    );
  }

  @Get('/get/recommendation/:category/')
  productRecommendation(@Param('category') category: string) {
    return this.productsManagementWithoutAuthService.productRecommendationByCategory(
      category,
    );
  }

  @Post('/filter/content/products/:id/:category')
  filterProductByAllWordKeysParams(
    @Param('id') id: string,
    @Param('category') category: string,
    @Body() createDataDto: CreateDataDto,
  ) {
    return this.productsManagementWithoutAuthService.filterProductByAllWordKeysParams(
      id,
      category,
      createDataDto,
    );
  }
}
