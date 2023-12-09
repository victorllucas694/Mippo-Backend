import { Injectable } from '@nestjs/common';
import { CreateRenderImageDto } from './dto/create-render-image.dto';
import { UpdateRenderImageDto } from './dto/update-render-image.dto';

@Injectable()
export class RenderImagesService {
  create(createRenderImageDto: CreateRenderImageDto) {
    return 'This action adds a new renderImage';
  }

  findAll() {
    return `This action returns all renderImages`;
  }

  findOne(id: number) {
    return `This action returns a #${id} renderImage`;
  }

  update(id: number, updateRenderImageDto: UpdateRenderImageDto) {
    return `This action updates a #${id} renderImage`;
  }

  remove(id: number) {
    return `This action removes a #${id} renderImage`;
  }
}
