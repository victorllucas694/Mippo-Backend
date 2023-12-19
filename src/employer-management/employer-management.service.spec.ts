import { Test, TestingModule } from '@nestjs/testing';
import { EmployerManagementService } from './employer-management.service';

describe('EmployerManagementService', () => {
  let service: EmployerManagementService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EmployerManagementService],
    }).compile();

    service = module.get<EmployerManagementService>(EmployerManagementService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
