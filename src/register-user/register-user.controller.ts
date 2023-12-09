import {
  Controller,
  Get,
  Post,
  Body,
  UseGuards,
} from '@nestjs/common';
import { RegisterUserService } from './register-user.service';
import { CreateRegisterUserDto } from './dto/create-register-user.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('register-user')
export class RegisterUserController {
  constructor(
    private readonly registerUserService: RegisterUserService,
  ) { }

  @Post()
  create(@Body() createRegisterUserDto: CreateRegisterUserDto) {
    return this.registerUserService.create(createRegisterUserDto);
  }

  @UseGuards(AuthGuard)
  @Get('find-user')
  findAllUsers() {
    return this.registerUserService.findAllUsers();
  }
}
