import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { FedexProviderService } from './fedex-provider.service';
import { CreateFedexProviderDto } from './dto/create-fedex-provider.dto';
import { UpdateFedexProviderDto } from './dto/update-fedex-provider.dto';

@Controller('fedex-provider')
export class FedexProviderController {
  constructor(private readonly fedexProviderService: FedexProviderService) {}

  @Post()
  create(@Body() createFedexProviderDto: CreateFedexProviderDto) {
    return this.fedexProviderService.create(createFedexProviderDto);
  }

  @Get()
  findAll() {
    return this.fedexProviderService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.fedexProviderService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateFedexProviderDto: UpdateFedexProviderDto) {
    return this.fedexProviderService.update(+id, updateFedexProviderDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.fedexProviderService.remove(+id);
  }
}
