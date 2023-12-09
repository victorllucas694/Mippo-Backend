import { Test, TestingModule } from '@nestjs/testing';
import { AdminCustomerManagerService } from './admin-customer-manager.service';

describe('AdminCustomerManagerService', () => {
  let service: AdminCustomerManagerService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [AdminCustomerManagerService],
    }).compile();

    service = module.get<AdminCustomerManagerService>(AdminCustomerManagerService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
