import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards } from '@nestjs/common';
import { BannerLayoutService } from './banner-layout.service';
import { CreateBannerLayoutDto } from './dto/create-banner-layout.dto';
import { UpdateBannerLayoutDto } from './dto/update-banner-layout.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('banner-layout')
export class BannerLayoutController {
  constructor(private readonly bannerLayoutService: BannerLayoutService) {}

  @Post()
  @UseGuards(AuthGuard)
  create(@Body() createBannerLayoutDto: CreateBannerLayoutDto) {
    return this.bannerLayoutService.create(createBannerLayoutDto);
  }

  @Get()
  @UseGuards(AuthGuard)
  findAll() {
    return this.bannerLayoutService.findAll();
  }

  @Get(':id')
  @UseGuards(AuthGuard)
  findOne(@Param('id') id: string) {
    return this.bannerLayoutService.findOne(+id);
  }

  @Patch(':id')
  @UseGuards(AuthGuard)
  update(@Param('id') id: string, @Body() updateBannerLayoutDto: UpdateBannerLayoutDto) {
    return this.bannerLayoutService.update(+id, updateBannerLayoutDto);
  }

  @Delete(':id')
  @UseGuards(AuthGuard)
  remove(@Param('id') id: string) {
    return this.bannerLayoutService.remove(+id);
  }
}
