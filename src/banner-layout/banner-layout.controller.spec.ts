import { Test, TestingModule } from '@nestjs/testing';
import { BannerLayoutController } from './banner-layout.controller';
import { BannerLayoutService } from './banner-layout.service';

describe('BannerLayoutController', () => {
  let controller: BannerLayoutController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [BannerLayoutController],
      providers: [BannerLayoutService],
    }).compile();

    controller = module.get<BannerLayoutController>(BannerLayoutController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
