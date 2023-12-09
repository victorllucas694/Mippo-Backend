import { Test, TestingModule } from '@nestjs/testing';
import { FedexProviderService } from './fedex-provider.service';

describe('FedexProviderService', () => {
  let service: FedexProviderService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [FedexProviderService],
    }).compile();

    service = module.get<FedexProviderService>(FedexProviderService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
