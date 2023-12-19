import { Test, TestingModule } from '@nestjs/testing';
import { EmployerManagementController } from './employer-management.controller';
import { EmployerManagementService } from './employer-management.service';

describe('EmployerManagementController', () => {
  let controller: EmployerManagementController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [EmployerManagementController],
      providers: [EmployerManagementService],
    }).compile();

    controller = module.get<EmployerManagementController>(EmployerManagementController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
