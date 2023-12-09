import { Controller, Get, Post, Body, Patch, Param, Delete, Res } from '@nestjs/common';
import { RenderImagesService } from './render-images.service';
import { CreateRenderImageDto } from './dto/create-render-image.dto';
import { UpdateRenderImageDto } from './dto/update-render-image.dto';
import { Response } from 'express';
import * as fs from 'fs';
import * as path from 'path';

@Controller('render-images')
export class RenderImagesController {
  constructor(private readonly renderImagesService: RenderImagesService) {}

  @Post()
  create(@Body() createRenderImageDto: CreateRenderImageDto) {
    return this.renderImagesService.create(createRenderImageDto);
  }

  @Get(':imageName')
  async serveImage(@Param('imageName') imageName: string, @Res() res: Response) {
    const imagePath = path.join(__dirname, '../uploads', imageName);

    if (fs.existsSync(imagePath)) {
      res.sendFile(imagePath);
    } else {
      res.status(404).send('Imagem não encontrada');
    }
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.renderImagesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateRenderImageDto: UpdateRenderImageDto) {
    return this.renderImagesService.update(+id, updateRenderImageDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.renderImagesService.remove(+id);
  }
}
