import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
} from '@nestjs/common';
import { PaymentShippingCartService } from './payment-shipping-cart.service';
import { CreatePaymentShippingCartDto } from './dto/create-payment-shipping-cart.dto';
import { UpdatePaymentShippingCartDto } from './dto/update-payment-shipping-cart.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('payment-shipping-cart')
export class PaymentShippingCartController {
  constructor(
    private readonly paymentShippingCartService: PaymentShippingCartService,
  ) {}

  @UseGuards(AuthGuard)
  @Get('/find/shipping-cart/history/:id')
  create(
    @Body() createPaymentShippingCartDto: CreatePaymentShippingCartDto,
    @Param('id') id: string,
  ) {
    return this.paymentShippingCartService.findShippingCartHistoryToPurchase(
      createPaymentShippingCartDto,
      id,
    );
  }

  @UseGuards(AuthGuard)
  @Get('/success/payment/product/:id/:orderid')
  successPaymentProductRoute(
    @Param('id') id: string,
    @Param('orderid') orderid: string,
  ) {
    return this.paymentShippingCartService.successPaymentProduct(
      +id, +orderid
    );
  }

  @Get('/search/:category/:product')
  findProductByIdAndName(
    @Param('category') category: string,
    @Param('product') product: string,
  ) {
    return this.paymentShippingCartService.findProductByIdAndProductName(
      category,
      product,
    );
  }

  @Post('/purchase/products/:category/:id')
  SaveOrderProduct(
    @Body() createPaymentShippingCartDto: CreatePaymentShippingCartDto,
    @Param('category') category: string,
    @Param('id') id: string,
  ) {
    return this.paymentShippingCartService.SaveOrderProduct(
      +id,
      category,
      createPaymentShippingCartDto,
    );
  }

  @Get('/cart/:id')
  getAllProductsOnCart(
    @Param('id') id: string,
    @Param('category') category: string,
  ) {
    return this.paymentShippingCartService.getAllProductsOnCart(+id);
  }

  @Get('clear')
  saveDataUserForPayment(
    @Param('id') id: string,
    @Body() createPaymentShippingCartDto: CreatePaymentShippingCartDto,
  ) {
    return this.paymentShippingCartService.savePaymentDeliveryLocation(+id, createPaymentShippingCartDto);
  }

  @Get('purchase/products/shipping-cart/:id')
  findProductsToShippingCartDara(@Param('id') id: string) {
    return this.paymentShippingCartService.getProductShippingCart(+id);
  }
}
