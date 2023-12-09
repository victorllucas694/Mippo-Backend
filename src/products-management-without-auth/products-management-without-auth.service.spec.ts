import { Test, TestingModule } from '@nestjs/testing';
import { ProductsManagementWithoutAuthService } from './products-management-without-auth.service';

describe('ProductsManagementWithoutAuthService', () => {
  let service: ProductsManagementWithoutAuthService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ProductsManagementWithoutAuthService],
    }).compile();

    service = module.get<ProductsManagementWithoutAuthService>(ProductsManagementWithoutAuthService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
