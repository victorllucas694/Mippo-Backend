import { Test, TestingModule } from '@nestjs/testing';
import { ProductsManagementWithoutAuthController } from './products-management-without-auth.controller';
import { ProductsManagementWithoutAuthService } from './products-management-without-auth.service';

describe('ProductsManagementWithoutAuthController', () => {
  let controller: ProductsManagementWithoutAuthController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ProductsManagementWithoutAuthController],
      providers: [ProductsManagementWithoutAuthService],
    }).compile();

    controller = module.get<ProductsManagementWithoutAuthController>(ProductsManagementWithoutAuthController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
