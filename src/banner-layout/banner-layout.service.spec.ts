import { Test, TestingModule } from '@nestjs/testing';
import { BannerLayoutService } from './banner-layout.service';

describe('BannerLayoutService', () => {
  let service: BannerLayoutService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [BannerLayoutService],
    }).compile();

    service = module.get<BannerLayoutService>(BannerLayoutService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
