import { Module } from '@nestjs/common';
import { PaymentShippingCartService } from './payment-shipping-cart.service';
import { PaymentShippingCartController } from './payment-shipping-cart.controller';
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
  controllers: [PaymentShippingCartController],
  providers: [PaymentShippingCartService, PrismaService],
})
export class PaymentShippingCartModule {}
