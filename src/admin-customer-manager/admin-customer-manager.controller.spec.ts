import { Test, TestingModule } from '@nestjs/testing';
import { AdminCustomerManagerController } from './admin-customer-manager.controller';
import { AdminCustomerManagerService } from './admin-customer-manager.service';

describe('AdminCustomerManagerController', () => {
  let controller: AdminCustomerManagerController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [AdminCustomerManagerController],
      providers: [AdminCustomerManagerService],
    }).compile();

    controller = module.get<AdminCustomerManagerController>(AdminCustomerManagerController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
