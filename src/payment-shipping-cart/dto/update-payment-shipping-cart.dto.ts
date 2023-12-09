import { PartialType } from '@nestjs/swagger';
import { CreatePaymentShippingCartDto } from './create-payment-shipping-cart.dto';

export class UpdatePaymentShippingCartDto extends PartialType(CreatePaymentShippingCartDto) {}
