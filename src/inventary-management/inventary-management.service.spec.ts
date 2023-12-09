import { Test, TestingModule } from '@nestjs/testing';
import { InventaryManagementService } from './inventary-management.service';

describe('InventaryManagementService', () => {
  let service: InventaryManagementService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [InventaryManagementService],
    }).compile();

    service = module.get<InventaryManagementService>(InventaryManagementService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
