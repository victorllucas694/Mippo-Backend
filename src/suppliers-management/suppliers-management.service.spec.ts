import { Test, TestingModule } from '@nestjs/testing';
import { SuppliersManagementService } from './suppliers-management.service';

describe('SuppliersManagementService', () => {
  let service: SuppliersManagementService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SuppliersManagementService],
    }).compile();

    service = module.get<SuppliersManagementService>(SuppliersManagementService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
