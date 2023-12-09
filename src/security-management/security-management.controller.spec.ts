import { Test, TestingModule } from '@nestjs/testing';
import { SecurityManagementController } from './security-management.controller';
import { SecurityManagementService } from './security-management.service';

describe('SecurityManagementController', () => {
  let controller: SecurityManagementController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SecurityManagementController],
      providers: [SecurityManagementService],
    }).compile();

    controller = module.get<SecurityManagementController>(SecurityManagementController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
