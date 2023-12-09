import { Module } from '@nestjs/common';
import { RenderImagesService } from './render-images.service';
import { RenderImagesController } from './render-images.controller';

@Module({
  controllers: [RenderImagesController],
  providers: [RenderImagesService],
})
export class RenderImagesModule {}
