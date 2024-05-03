import { Injectable } from '@nestjs/common';
import { CreatePaymentDto } from './dto/create-payment.dto';
import { UpdatePaymentDto } from './dto/update-payment.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class PaymentService {
  constructor(private prisma: PrismaService) {}

  async create(createPaymentDto: CreatePaymentDto) {
    const {
      CVV,
      address,
      card_holder,
      card_number,
      city,
      country,
      details,
      expiration_date,
      id,
      last_name,
      name,
      state,
      zip_code,
    } = createPaymentDto;

    // const foundedOrderProduct = await this.prisma.purchaseUserData.create({
    //   data: {
    //     address,
    //     city,
    //     country,
    //     details,
    //     id,
    //     last_name,
    //     name,
    //     state,
    //     zip_code,
    //   },
    // });

    // return foundedOrderProduct;  
  }

  findAll() {
    return `This action returns all payment`;
  }

  findOne(id: number) {
    return `This action returns a #${id} payment`;
  }

  update(id: number, updatePaymentDto: UpdatePaymentDto) {
    return `This action updates a #${id} payment`;
  }

  remove(id: number) {
    return `This action removes a #${id} payment`;
  }
}
