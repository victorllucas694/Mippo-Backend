import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { CommonUsersManagementService } from './common-users-management.service';
import { CreateCommonUsersManagementDto } from './dto/create-common-users-management.dto';
import { UpdateCommonUsersManagementDto } from './dto/update-common-users-management.dto';

@Controller('common-users-management')
export class CommonUsersManagementController {
  constructor(private readonly commonUsersManagementService: CommonUsersManagementService) {}

  @Post()
  create(@Body() createCommonUsersManagementDto: CreateCommonUsersManagementDto) {
    return this.commonUsersManagementService.create(createCommonUsersManagementDto);
  }

  @Get()
  findAll() {
    return this.commonUsersManagementService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.commonUsersManagementService.findUserByRenderData(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateCommonUsersManagementDto: UpdateCommonUsersManagementDto) {
    return this.commonUsersManagementService.update(+id, updateCommonUsersManagementDto);
  }
}
