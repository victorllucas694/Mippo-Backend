import { UserAddress } from './../user-address/entities/user-address.entity';
import { Injectable } from '@nestjs/common';
import { CreateUserSettingDto } from './dto/create-user-setting.dto';
import { UpdateNewUserSettingDto, UpdateUserSettingDto } from './dto/update-user-setting.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class UserSettingsService {
  constructor(private prisma: PrismaService) {}

  async createUserAddress(
    createUserSettingDto: CreateUserSettingDto,
    id: number,
  ) {
    if (id) {
      const foundedAddressID = await this.prisma.user.findUnique({
        where: { id: id },
      });

      if (foundedAddressID) {
        const createAddressWithID = await this.prisma.userAddress.create({
          data: createUserSettingDto,
        });

        return createAddressWithID;
      } else {
        return 'User Not Found';
      }
    }
  }

  async updateUserAddress(
    createUserSettingDto: CreateUserSettingDto,
    id: number,
  ) {
    if (id) {
      const foundedAddress = await this.prisma.userAddress.findMany({
        where: { User_Id: id },
      });
  
      if (foundedAddress) {
        const updatedAddress = await this.prisma.userAddress.updateMany({
          where: { User_Id: id },
          data: createUserSettingDto,
        });
        return updatedAddress;
      } else {
        return 'User Address Not Found';
      }
    }
  }

  async updateUserBody(
    updateNewUserSettingDto: UpdateNewUserSettingDto,
    id: number,
  ) {
    if (id) {
      const foundedUser = await this.prisma.user.findMany({
        where: { id: id },
      });
  
      if (foundedUser) {
        const foundAndUpdateUserData = await this.prisma.user.updateMany({
          where: { id: id },
          data: updateNewUserSettingDto,
        });
        return foundAndUpdateUserData;
      } else {
        return 'User Address Not Found';
      }
    }
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
    const foundedAddressID = await this.prisma.userAddress.findFirst({
      where: {
        id: id,
      },
      select: {
        address: true,
        city: true,
        address_other: true,
        country: true,
        CEP: true,
        state: true,
      },
    });

    if (foundedAddressID) {
      return foundedAddressID;
    } else {
      return {
        address: false,
        city: false,
        address_other: false,
        country: false,
        CEP: false,
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
