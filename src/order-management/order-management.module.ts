import { Module } from '@nestjs/common';
import { OrderManagementService } from './order-management.service';
import { OrderManagementController } from './order-management.controller';
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
  controllers: [OrderManagementController],
  providers: [OrderManagementService, PrismaService],
})
export class OrderManagementModule {}
