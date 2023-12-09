import { Injectable } from '@nestjs/common';
import { CreateAdminCustomerManagerDto } from './dto/create-admin-customer-manager.dto';
import { UpdateAdminCustomerManagerDto } from './dto/update-admin-customer-manager.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class AdminCustomerManagerService {
  constructor(private prisma: PrismaService) {}

  async create(createAdminCustomerManagerDto: CreateAdminCustomerManagerDto) {
    return 'This action adds a new adminCustomerManager';
  }

  async findAll(id: number) {
    console.log(id);
    
    const securityLayerByGetAllUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: id
      }
    });

    if(securityLayerByGetAllUser.admin === 'true') {
      const getUserPropertiesByUSerId = await this.prisma.user.findMany();
      return getUserPropertiesByUSerId;
    }
  }

  findOne(id: number) {
    return `This action returns a #${id} adminCustomerManager`;
  }

  update(id: number, updateAdminCustomerManagerDto: UpdateAdminCustomerManagerDto) {
    return `This action updates a #${id} adminCustomerManager`;
  }

  async deleteCostumerSelected(id: number, costumerid: number) {
    const securityLayerByGetAllUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: id
      }
    });

    
    if(securityLayerByGetAllUser.admin === 'true') {
      console.log(costumerid )
      const getUserPropertiesByUSerId = await this.prisma.user.findUniqueOrThrow({
        where: {
          id: costumerid
        }
      });

      console.log(getUserPropertiesByUSerId)
      return getUserPropertiesByUSerId;
    }
  }
}
