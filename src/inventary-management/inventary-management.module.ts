import { Module } from '@nestjs/common';
import { InventaryManagementService } from './inventary-management.service';
import { InventaryManagementController } from './inventary-management.controller';
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
  controllers: [InventaryManagementController],
  providers: [InventaryManagementService, PrismaService],
})
export class InventaryManagementModule {}
