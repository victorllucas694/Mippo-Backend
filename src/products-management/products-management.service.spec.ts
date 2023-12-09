import { Test, TestingModule } from '@nestjs/testing';
import { ProductsManagementService } from './products-management.service';

describe('ProductsManagementService', () => {
  let service: ProductsManagementService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ProductsManagementService],
    }).compile();

    service = module.get<ProductsManagementService>(ProductsManagementService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
