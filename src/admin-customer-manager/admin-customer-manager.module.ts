import { Module } from '@nestjs/common';
import { AdminCustomerManagerService } from './admin-customer-manager.service';
import { AdminCustomerManagerController } from './admin-customer-manager.controller';
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
  controllers: [AdminCustomerManagerController],
  providers: [AdminCustomerManagerService, PrismaService],
})
export class AdminCustomerManagerModule {}
