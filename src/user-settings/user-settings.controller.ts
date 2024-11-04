import { Controller, Get, Post, Body, Patch, Param, Delete, Put } from '@nestjs/common';
import { UserSettingsService } from './user-settings.service';
import { CreateUserSettingDto } from './dto/create-user-setting.dto';
import { UpdateNewUserSettingDto, UpdateUserSettingDto } from './dto/update-user-setting.dto';

@Controller('user-settings')
export class UserSettingsController {
  constructor(private readonly userSettingsService: UserSettingsService) {}

  @Post('/create/:id')
  create(@Body() createUserSettingDto: CreateUserSettingDto, @Param('id') id: string) {
    return this.userSettingsService.createUserAddress(createUserSettingDto, +id);
  }

  @Post('/update/:id')
  update(@Body() updateUserSettingDto: UpdateUserSettingDto, @Param('id') id: string) {
    return this.userSettingsService.updateUserAddress(updateUserSettingDto, +id);
  }

  @Post('/update/user/:id')
  updateUser(@Body() updateNewUserSettingDto: UpdateNewUserSettingDto, @Param('id') id: string) {
    return this.userSettingsService.updateUserBody(updateNewUserSettingDto, +id);
  }

  @Get()
  findAll() {
    return this.userSettingsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.userSettingsService.findOne(+id);
  }

  @Get('/get/:id')
  findById(@Param('id') id: string) {
    return this.userSettingsService.findUserById(+id);
  }

  @Get('/get/address/:id')
  findAddressById(@Param('id') id: string) {
    return this.userSettingsService.findAddressUserById(+id);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.userSettingsService.remove(+id);
  }
}
