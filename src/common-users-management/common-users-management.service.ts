import { Injectable, UseGuards } from '@nestjs/common';
import { CreateCommonUsersManagementDto } from './dto/create-common-users-management.dto';
import { UpdateCommonUsersManagementDto } from './dto/update-common-users-management.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class CommonUsersManagementService {
  constructor(private prisma: PrismaService) {}

  create(createCommonUsersManagementDto: CreateCommonUsersManagementDto) {
    return 'This action adds a new commonUsersManagement';
  }

  findAll() {
    return `This action returns all commonUsersManagement`;
  }


  async findUserByRenderData(id: number) {
    const getUserPropertiesByUSerId = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: id
      },
    });

    return getUserPropertiesByUSerId;
  }

  update(id: number, updateCommonUsersManagementDto: UpdateCommonUsersManagementDto) {
    return `This action updates a #${id} commonUsersManagement`;
  }

  remove(id: number) {
    return `This action removes a #${id} commonUsersManagement`;
  }
}
