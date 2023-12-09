import { Test, TestingModule } from '@nestjs/testing';
import { CommonUsersManagementController } from './common-users-management.controller';
import { CommonUsersManagementService } from './common-users-management.service';

describe('CommonUsersManagementController', () => {
  let controller: CommonUsersManagementController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [CommonUsersManagementController],
      providers: [CommonUsersManagementService],
    }).compile();

    controller = module.get<CommonUsersManagementController>(CommonUsersManagementController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
