import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UploadedFile,
  UseGuards,
  UploadedFiles,
  UseInterceptors,
  Req,
} from '@nestjs/common';
import { ProductsManagementService } from './products-management.service';
import { CreateDropImagesDTO, CreateProductsManagementDto } from './dto/create-products-management.dto';
import { UpdateProductsManagementDto } from './dto/update-products-management.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';
import { FileInterceptor } from '@nestjs/platform-express';
import { diskStorage } from 'multer';
import * as fs from 'fs';
import { FilesInterceptor } from '@nestjs/platform-express';
import { extname } from 'path';

@Controller('products-management')
export class ProductsManagementController {
  constructor(
    private readonly productsManagementService: ProductsManagementService,
  ) { }

  @UseGuards(AuthGuard)
  @Post('upload/image/sideImages/:id')
  @UseInterceptors(
    FilesInterceptor('images', 4, {
      storage: diskStorage({
        destination: './uploads/sideImages',
        filename: (req, file, callback) => {
          const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1e9);
          const extension = extname(file.originalname);
          const filename = `image-${uniqueSuffix}${extension}`;
          callback(null, filename);
        },
      }),
    }),
  )
  uploadSideImages(@UploadedFiles() images, @Body() createDropImagesDTO: CreateDropImagesDTO, @Param('id') id: string) {
    const productCode = createDropImagesDTO.productCode;
    const productCategory = createDropImagesDTO.productCategory;
    return this.productsManagementService.uploadServicesSideImages(images, productCode, productCategory, id);
  }

  @UseGuards(AuthGuard)
  @Post('upload/image/large/:id')
  @UseInterceptors(
    FileInterceptor('largeImage', {
      storage: diskStorage({
        destination: './uploads',
        filename: (req, file, callback) => {
          const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1e9);
          const extension = extname(file.originalname);
          const filename = `largeImage-${uniqueSuffix}${extension}`;
          callback(null, filename);
        },
      }),
    }),
  )
  uploadLargeImage(@UploadedFile() image, @Body() createDropImagesDTO: CreateDropImagesDTO, @Param('id') id: string) {
    const productCode = createDropImagesDTO.productCode;
    const productCategory = createDropImagesDTO.productCategory;
    return this.productsManagementService.uploadServiceLargeImage(image, productCode, productCategory, id);
  }

  @UseGuards(AuthGuard)
  @Post('upload/:id')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: diskStorage({
        destination: './files',
        filename: (req, file, callback) => {
          const uniqueSuffix =
            Date.now() + '-' + Math.round(Math.random() * 1e9) + '.csv';
          callback(null, file.fieldname + '-' + uniqueSuffix);
        },
      }),
    }),
  )
  async uploadFile(
    @UploadedFile() file: Express.Multer.File,
    @Body() createProductsManagementDto: CreateProductsManagementDto,
    @Param('id') userId: string
  ) {
    return this.productsManagementService.readCsvFileGetFormDataToSendDataBase(file, createProductsManagementDto, userId);
  }

  @UseGuards(AuthGuard)
  @Post('product/drop/layer/:id')
  saveProductByProductCategory(@Body() createDropImagesDTO: CreateDropImagesDTO, @Param('id') id: string) {
    const productCategory = createDropImagesDTO.productCategory;
    const productCode = createDropImagesDTO.productCode;
    return this.productsManagementService.getDataToSaveOnDataBase(productCategory, productCode, id);
  }
  
  @UseGuards(AuthGuard)
  @Get('get/all/products/:id')
  findAllProduct(@Param('id') id: string) {
    return this.productsManagementService.findAllProductsByCategory(id);
  }

  @UseGuards(AuthGuard)
  @Get('get/all/products/:id/:productCode')
  findProductByProductCode(@Param('id') id: string, @Param('productCode') productCode: string) {
    return this.productsManagementService.findAllProductsByCategoryAndProductCode(id, productCode);
  }

  @UseGuards(AuthGuard)
  @Get('delete/all/products/package/:id/:productCode')
  remove(@Param('id') id: string, @Param('productCode') productCode: string) {
    return this.productsManagementService.removeDropPackageAndProductsWithDropCode(id, productCode);
  }
}
