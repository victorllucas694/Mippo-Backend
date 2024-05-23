import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { InventaryManagementService } from './inventary-management.service';
import { CreateInventaryManagementDto } from './dto/create-inventary-management.dto';
import { UpdateInventaryManagementDto } from './dto/update-inventary-management.dto';

@Controller('inventary-management')
export class InventaryManagementController {
  constructor(private readonly inventaryManagementService: InventaryManagementService) {}

  @Post()
  create(@Body() createInventaryManagementDto: CreateInventaryManagementDto) {
    return this.inventaryManagementService.create(createInventaryManagementDto);
  }

  @Get('get/all/itens/:id/:category')
  findAll(@Param('id') id: string, @Param('category') category: string) {
    return this.inventaryManagementService.findAll(+id, category);
  }

  @Get(':filter')
  findOne(@Param('filter') filter: string) {
    return this.inventaryManagementService.filterProductByItemSelected(filter);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateInventaryManagementDto: UpdateInventaryManagementDto) {
    return this.inventaryManagementService.update(+id, updateInventaryManagementDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.inventaryManagementService.remove(+id);
  }
}
