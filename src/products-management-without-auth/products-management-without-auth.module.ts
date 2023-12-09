import { Module } from '@nestjs/common';
import { ProductsManagementWithoutAuthService } from './products-management-without-auth.service';
import { ProductsManagementWithoutAuthController } from './products-management-without-auth.controller';
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
  controllers: [ProductsManagementWithoutAuthController],
  providers: [ProductsManagementWithoutAuthService, PrismaService],
})
export class ProductsManagementWithoutAuthModule {}
