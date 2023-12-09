import { Test, TestingModule } from '@nestjs/testing';
import { InventaryManagementController } from './inventary-management.controller';
import { InventaryManagementService } from './inventary-management.service';

describe('InventaryManagementController', () => {
  let controller: InventaryManagementController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [InventaryManagementController],
      providers: [InventaryManagementService],
    }).compile();

    controller = module.get<InventaryManagementController>(InventaryManagementController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
