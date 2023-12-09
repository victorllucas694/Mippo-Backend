import { Test, TestingModule } from '@nestjs/testing';
import { FedexProviderController } from './fedex-provider.controller';
import { FedexProviderService } from './fedex-provider.service';

describe('FedexProviderController', () => {
  let controller: FedexProviderController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [FedexProviderController],
      providers: [FedexProviderService],
    }).compile();

    controller = module.get<FedexProviderController>(FedexProviderController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
