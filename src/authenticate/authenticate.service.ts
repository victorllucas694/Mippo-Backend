import { Injectable } from '@nestjs/common';
import { CreateAuthenticateDto } from './dto/create-authenticate.dto';
import { UpdateAuthenticateDto } from './dto/update-authenticate.dto';
import { PasswordService } from '../services/password.service';
import { PrismaService } from 'prisma/prisma.service';
import { User } from '@prisma/client';
import { JwtService } from '@nestjs/jwt';

const ADMIN_ROLE = 'true';
const NON_ADMIN_ROLE = 'false';

@Injectable()
export class AuthenticateService {
  constructor(
    private prisma: PrismaService,
    private readonly passwordService: PasswordService,
    private jwtService: JwtService,
  ) {}

  async validateUser(createAuthenticateDto: CreateAuthenticateDto) {
    try {
      const { email, password } = createAuthenticateDto;

      const trustedUser = await this.prisma.user.findUnique({
        where: {
          email: email,
          admin: ADMIN_ROLE,
        },
      });

      const commonUser = await this.prisma.user.findUnique({
        where: {
          email: email,
          admin: NON_ADMIN_ROLE,
        },
      });

      if (commonUser) {
        const { password: userPassword, ...userWithoutPassword } = commonUser;
        const hashedPassword = await this.passwordService.comparePasswords(
          password,
          userPassword,
        );

        if (hashedPassword) {
          const payload = {
            id: commonUser.id,
            ...userWithoutPassword,
          };
          return {
            user: 'Not Allowed',
            token: await this.jwtService.signAsync(payload),
          };
        }

        return commonUser;
      }

      if (trustedUser) {
        const { password: userPassword, ...userWithoutPassword } = trustedUser;
        const hashedPassword = await this.passwordService.comparePasswords(
          password,
          userPassword,
        );

        if (hashedPassword) {
          const payload = {
            id: trustedUser.id,
            ...userWithoutPassword,
            admin: trustedUser.admin,
          };

          return {
            user: 'Allowed',
            token: await this.jwtService.signAsync(payload),
          };
        }
        return trustedUser;
      }
    } catch (error) {
      throw new Error('Erro ao validar usuário.');
    }
  }
}
