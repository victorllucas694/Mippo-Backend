import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards } from '@nestjs/common';
import { PaymentShippingCartService } from './payment-shipping-cart.service';
import { CreatePaymentShippingCartDto } from './dto/create-payment-shipping-cart.dto';
import { UpdatePaymentShippingCartDto } from './dto/update-payment-shipping-cart.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';

@Controller('payment-shipping-cart')
export class PaymentShippingCartController {
  constructor(private readonly paymentShippingCartService: PaymentShippingCartService) {}

  @UseGuards(AuthGuard)
  @Get('/find/shipping-cart/history/:id')
  create(@Body() createPaymentShippingCartDto: CreatePaymentShippingCartDto, @Param('id') id: string) {
    return this.paymentShippingCartService.findShippingCartHistoryToPurchase(createPaymentShippingCartDto, id);
  }

  @Get()
  findAll() {
    return this.paymentShippingCartService.findAll();
  }

  @Get('/cart/:id')
  getAllProductsOnCart(@Param('id') id: string, @Param('category') category: string) {
    return this.paymentShippingCartService.getAllProductsOnCart(+id);
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.paymentShippingCartService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updatePaymentShippingCartDto: UpdatePaymentShippingCartDto) {
    return this.paymentShippingCartService.update(+id, updatePaymentShippingCartDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.paymentShippingCartService.remove(+id);
  }
}
