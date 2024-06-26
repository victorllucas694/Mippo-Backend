import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
} from '@nestjs/common';
import { SuppliersManagementService } from './suppliers-management.service';
import {
  CreateSuppliersManagementDto,
  CreateSuppliersSecretDataManagementDto,
} from './dto/create-suppliers-management.dto';
import { UpdateSuppliersManagementDto } from './dto/update-suppliers-management.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('suppliers-management')
export class SuppliersManagementController {
  constructor(
    private readonly suppliersManagementService: SuppliersManagementService,
  ) {}

  @UseGuards(AuthGuard)
  @Post('add/new/basic/:id')
  insertNewSupplierWithBasicData(
    @Param('id') id: string,
    @Body() createSuppliersManagementDto: CreateSuppliersManagementDto,
  ) {
    return this.suppliersManagementService.insertNewSupplierWithBasicData(createSuppliersManagementDto, id);
  }

  @UseGuards(AuthGuard)
  @Post('add/new/secret/:id')
  insertNewSupplierWithSecretData(
    @Param('id') id: string,
    @Body() createSuppliersSecretDataManagementDto: CreateSuppliersSecretDataManagementDto,
  ) {
    return this.suppliersManagementService.insertNewSupplierWithSecretData(createSuppliersSecretDataManagementDto, id);
  }

  @UseGuards(AuthGuard)
  @Get('get/all/suppliers/:id')
  findAll(@Param('id') id: string) {
    return this.suppliersManagementService.findAllSuppliersByUserId(id);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.suppliersManagementService.findOne(+id);
  }
}
