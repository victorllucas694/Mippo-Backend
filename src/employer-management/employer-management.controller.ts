import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards } from '@nestjs/common';
import { EmployerManagementService } from './employer-management.service';
import { CreateEmployerManagementDto } from './dto/create-employer-management.dto';
import { UpdateEmployerManagementDto } from './dto/update-employer-management.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('employer-management')
export class EmployerManagementController {
  constructor(private readonly employerManagementService: EmployerManagementService) {}

  @UseGuards(AuthGuard)
  @Post('add/new/employer/:id')
  createNewEmployer(@Body() createEmployerManagementDto: CreateEmployerManagementDto, @Param('id') id: string) {
    return this.employerManagementService.create(createEmployerManagementDto, +id);
  }

  @Get('find/all/:id')
  @UseGuards(AuthGuard)
  findAll(@Param('id') id: string) {
    return this.employerManagementService.findAll(+id);
  }

  @Get(':id')
  @UseGuards(AuthGuard)
  findOne(@Param('id') id: string) {
    return this.employerManagementService.findOne(+id);
  }
}
