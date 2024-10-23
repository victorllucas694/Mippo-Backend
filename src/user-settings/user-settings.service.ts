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

    const foundedSupplierID = await this.prisma.user.findFirstOrThrow({
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

    return foundedSupplierID;
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
