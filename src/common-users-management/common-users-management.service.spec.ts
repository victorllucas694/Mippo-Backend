import { Test, TestingModule } from '@nestjs/testing';
import { CommonUsersManagementService } from './common-users-management.service';

describe('CommonUsersManagementService', () => {
  let service: CommonUsersManagementService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [CommonUsersManagementService],
    }).compile();

    service = module.get<CommonUsersManagementService>(CommonUsersManagementService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
