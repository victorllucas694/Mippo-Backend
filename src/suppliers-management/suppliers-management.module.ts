import { Module } from '@nestjs/common';
import { SuppliersManagementService } from './suppliers-management.service';
import { SuppliersManagementController } from './suppliers-management.controller';
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
  controllers: [SuppliersManagementController],
  providers: [SuppliersManagementService, PrismaService],
})
export class SuppliersManagementModule { }
