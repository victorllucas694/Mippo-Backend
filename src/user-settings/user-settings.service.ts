import { Injectable } from '@nestjs/common';
import { CreateUserSettingDto } from './dto/create-user-setting.dto';
import { UpdateUserSettingDto } from './dto/update-user-setting.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class UserSettingsService {
  constructor(private prisma: PrismaService) {}

  create(createUserSettingDto: CreateUserSettingDto) {
    return 'This action adds a new userSetting';
  }

  findAll() {
    return `This action returns all userSettings`;
  }

  async findUserById(id: number) {
    const foundedUserDataID = await this.prisma.user.findFirstOrThrow({
      where: {
        id: id,
      },
      select: {
        email: true,
        last_name: true,
        name: true,
        phone: true,
      },
    });

    return foundedUserDataID;
  }

  async findAddressUserById(id: number) {
    const foundedAddressID = await this.prisma.address_form.findFirst({
      where: {
        id: id,
      },
      select: {
        address: true,
        city: true,
        details: true,
        country: true,
        postal_code: true,
        state: true,
      },
    });
  
    if (foundedAddressID) {
      return foundedAddressID;
    } else {
      return {
        address: false,
        city: false,
        details: false,
        country: false,
        postal_code: false,
        state: false,
      };
    }
  }

  findOne(id: number) {
    return `This action returns a #${id} userSetting`;
  }

  update(id: number, updateUserSettingDto: UpdateUserSettingDto) {
    return `This action updates a #${id} userSetting`;
  }

  remove(id: number) {
    return `This action removes a #${id} userSetting`;
  }
}
