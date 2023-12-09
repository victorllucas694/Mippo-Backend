import { Module } from '@nestjs/common';
import { CommonUsersManagementService } from './common-users-management.service';
import { CommonUsersManagementController } from './common-users-management.controller';
import { PrismaService } from 'prisma/prisma.service';
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
  controllers: [CommonUsersManagementController],
  providers: [CommonUsersManagementService, PrismaService],
})
export class CommonUsersManagementModule {}
