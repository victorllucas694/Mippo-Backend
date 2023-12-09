import { Test, TestingModule } from '@nestjs/testing';
import { RenderImagesService } from './render-images.service';

describe('RenderImagesService', () => {
  let service: RenderImagesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [RenderImagesService],
    }).compile();

    service = module.get<RenderImagesService>(RenderImagesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
