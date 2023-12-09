import { Injectable } from '@nestjs/common';
import { CreateRegisterUserDto } from './dto/create-register-user.dto';
import { UpdateRegisterUserDto } from './dto/update-register-user.dto';
import { PasswordService } from '../services/password.service';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class RegisterUserService {

  constructor(
    private prisma: PrismaService,
    private readonly passwordService: PasswordService,
  ) { }

  async create(createRegisterUserDto: CreateRegisterUserDto)  {
    const { email, password, last_name, name, phone } = createRegisterUserDto;

    let { admin, disable } = createRegisterUserDto;

    admin = 'false';
    disable = 'false';
    const emailRegex: RegExp =
      /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    const phoneRegex: RegExp = /^\(\d{2}\)\d{5}-\d{4}$/;
    const hashedPassword = await this.passwordService.hashPassword(password);
    const matchName = last_name.length > 3 && name.length > 3;
    const emailIsValid = await this.prisma.user.findUnique({ where: { email: email } });
    admin 
    if (
      emailRegex.test(email) &&
      phoneRegex.test(phone) &&
      hashedPassword &&
      matchName && 
      admin &&
      emailIsValid === null
    ) {
      const filtredCommonUser = {
        password: hashedPassword,
        email,
        admin,
        last_name,
        name,
        phone,
        disable
      };

      return this.prisma.user.create({
        data: filtredCommonUser,
      });

    }
  }
  async findAllUsers() {
    return this.prisma.user.findMany();
  }
}
