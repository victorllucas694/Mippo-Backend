import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { UserAddressService } from './user-address.service';
import { CreateUserAddressDto } from './dto/create-user-address.dto';
import { UpdateUserAddressDto } from './dto/update-user-address.dto';

@Controller('user-address')
export class UserAddressController {
  constructor(private readonly userAddressService: UserAddressService) {}

  @Post('/:id')
  createUserAddress(@Body() createUserAddressDto: CreateUserAddressDto, @Param("id") id: string) {
    return this.userAddressService.create(createUserAddressDto, +id);
  }

  @Get('/get-all/:id')
  findAll(@Param("id") id: string) {
    return this.userAddressService.findAllByUserId(+id);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.userAddressService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateUserAddressDto: UpdateUserAddressDto) {
    return this.userAddressService.update(+id, updateUserAddressDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.userAddressService.remove(+id);
  }
}
