import { Test, TestingModule } from '@nestjs/testing';
import { PaymentShippingCartService } from './payment-shipping-cart.service';

describe('PaymentShippingCartService', () => {
  let service: PaymentShippingCartService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PaymentShippingCartService],
    }).compile();

    service = module.get<PaymentShippingCartService>(PaymentShippingCartService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
