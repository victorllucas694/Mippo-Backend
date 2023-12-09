import { Test, TestingModule } from '@nestjs/testing';
import { PaymentShippingCartController } from './payment-shipping-cart.controller';
import { PaymentShippingCartService } from './payment-shipping-cart.service';

describe('PaymentShippingCartController', () => {
  let controller: PaymentShippingCartController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PaymentShippingCartController],
      providers: [PaymentShippingCartService],
    }).compile();

    controller = module.get<PaymentShippingCartController>(PaymentShippingCartController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
