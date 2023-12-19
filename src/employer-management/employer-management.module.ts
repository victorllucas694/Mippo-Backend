import { Module } from '@nestjs/common';
import { EmployerManagementService } from './employer-management.service';
import { EmployerManagementController } from './employer-management.controller';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { PrismaService } from 'prisma/prisma.service';

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
  controllers: [EmployerManagementController],
  providers: [EmployerManagementService, PrismaService],
})
export class EmployerManagementModule {}
