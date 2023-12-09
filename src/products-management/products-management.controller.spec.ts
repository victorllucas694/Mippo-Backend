import { Test, TestingModule } from '@nestjs/testing';
import { ProductsManagementController } from './products-management.controller';
import { ProductsManagementService } from './products-management.service';

describe('ProductsManagementController', () => {
  let controller: ProductsManagementController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ProductsManagementController],
      providers: [ProductsManagementService],
    }).compile();

    controller = module.get<ProductsManagementController>(ProductsManagementController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
