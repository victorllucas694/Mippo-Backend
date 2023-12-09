import { Module } from '@nestjs/common';
import { SecurityManagementService } from './security-management.service';
import { SecurityManagementController } from './security-management.controller';
import { PrismaService } from 'prisma/prisma.service';

@Module({
  controllers: [SecurityManagementController],
  providers: [SecurityManagementService, PrismaService],
})
export class SecurityManagementModule {}
