import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards } from '@nestjs/common';
import { AdminCustomerManagerService } from './admin-customer-manager.service';
import { CreateAdminCustomerManagerDto } from './dto/create-admin-customer-manager.dto';
import { UpdateAdminCustomerManagerDto } from './dto/update-admin-customer-manager.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('admin-customer-manager')
export class AdminCustomerManagerController {
  constructor(private readonly adminCustomerManagerService: AdminCustomerManagerService) {}

  @UseGuards(AuthGuard)
  @Post()
  create(@Body() createAdminCustomerManagerDto: CreateAdminCustomerManagerDto) {
    return this.adminCustomerManagerService.create(createAdminCustomerManagerDto);
  }

  @UseGuards(AuthGuard)
  @Get('get/all/costumers/:id')
  findAll(@Param('id') id: string) {
    return this.adminCustomerManagerService.findAll(+id);
  }

  @UseGuards(AuthGuard)
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.adminCustomerManagerService.findOne(+id);
  }

  @UseGuards(AuthGuard)
  @Patch(':id')
  update(@Param('id') id: string, @Body() updateAdminCustomerManagerDto: UpdateAdminCustomerManagerDto) {
    return this.adminCustomerManagerService.update(+id, updateAdminCustomerManagerDto);
  }

  @UseGuards(AuthGuard)
  @Get('delete/user/:id/:costumerid')
  remove(@Param('id') id: string, @Param('costumerid') costumerid: string) {
    return this.adminCustomerManagerService.deleteCostumerSelected(+id, +costumerid);
  }
}
