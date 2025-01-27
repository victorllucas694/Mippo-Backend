import { Injectable } from '@nestjs/common';
import { CreateUserAddressDto } from './dto/create-user-address.dto';
import { UpdateUserAddressDto } from './dto/update-user-address.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class UserAddressService {
  constructor(private prisma: PrismaService) { }

  async create(createUserAddressDto: CreateUserAddressDto, id: number) {
    const { CEP, address, address_other, city, country, state } = createUserAddressDto;

    const saveAddressBasicData = await this.prisma.userAddress.create({
      data: {
        address,
        address_other,
        city,
        country,
        state,
        CEP: CEP,
        User_Id: id
      },
    });

    return saveAddressBasicData;
  }

  async findAllByUserId(id: number) {
    const saveUseraddressBasicData = await this.prisma.userAddress.findMany({
      where: {
        User_Id: id
      },
    });

    return saveUseraddressBasicData;
  }

  findOne(id: number) {
    return `This action returns a #${id} userAddress`;
  }

  update(id: number, updateUserAddressDto: UpdateUserAddressDto) {
    return `This action updates a #${id} userAddress`;
  }

  remove(id: number) {
    return `This action removes a #${id} userAddress`;
  }
}
