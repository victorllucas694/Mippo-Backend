import { Test, TestingModule } from '@nestjs/testing';
import { SecurityManagementService } from './security-management.service';

describe('SecurityManagementService', () => {
  let service: SecurityManagementService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SecurityManagementService],
    }).compile();

    service = module.get<SecurityManagementService>(SecurityManagementService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
