import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { NfeService } from './nfe.service';
import { CreateNfeDto } from './dto/create-nfe.dto';
import { UpdateNfeDto } from './dto/update-nfe.dto';

@Controller('nfe')
export class NfeController {
  constructor(private readonly nfeService: NfeService) {}

  @Post()
  create(@Body() createNfeDto: CreateNfeDto) {
    return this.nfeService.create(createNfeDto);
  }

  @Get()
  findAll() {
    return this.nfeService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.nfeService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateNfeDto: UpdateNfeDto) {
    return this.nfeService.update(+id, updateNfeDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.nfeService.remove(+id);
  }
}
