import { Test, TestingModule } from '@nestjs/testing';
import { RenderImagesController } from './render-images.controller';
import { RenderImagesService } from './render-images.service';

describe('RenderImagesController', () => {
  let controller: RenderImagesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [RenderImagesController],
      providers: [RenderImagesService],
    }).compile();

    controller = module.get<RenderImagesController>(RenderImagesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
