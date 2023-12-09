import { Test, TestingModule } from '@nestjs/testing';
import { SuppliersManagementController } from './suppliers-management.controller';
import { SuppliersManagementService } from './suppliers-management.service';

describe('SuppliersManagementController', () => {
  let controller: SuppliersManagementController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [SuppliersManagementController],
      providers: [SuppliersManagementService],
    }).compile();

    controller = module.get<SuppliersManagementController>(SuppliersManagementController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
