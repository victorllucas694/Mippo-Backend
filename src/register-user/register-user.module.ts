import { Module } from '@nestjs/common';
import { RegisterUserService } from './register-user.service';
import { RegisterUserController } from './register-user.controller';
import { PrismaService } from 'prisma/prisma.service';
import { PasswordService } from 'src/services/password.service';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    PassportModule,
    PassportModule.register({ defaultStrategy: 'jwt' }),
    JwtModule.register({
      secret: 'qaweqesdqweqweqwqwe',
      signOptions: {
        expiresIn: '1h',
      },
    }),
  ],
  controllers: [RegisterUserController],
  providers: [RegisterUserService, PrismaService, PasswordService]
})
export class RegisterUserModule {}
