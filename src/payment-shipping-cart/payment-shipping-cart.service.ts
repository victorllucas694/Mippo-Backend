import { Injectable } from '@nestjs/common';
import { CreatePaymentShippingCartDto } from './dto/create-payment-shipping-cart.dto';
import { UpdatePaymentShippingCartDto } from './dto/update-payment-shipping-cart.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class PaymentShippingCartService {
  constructor(private prisma: PrismaService) {}

  async findShippingCartHistoryToPurchase(
    createPaymentShippingCartDto: CreatePaymentShippingCartDto,
    id: string,
  ) {
    const User_Id = parseInt(id);

    const foundedOrderProduct = await this.prisma.product_order.findMany({
      where: {
        User_Id: User_Id,
      },
    });

    const ordersProduct = [];

    for (const products of foundedOrderProduct) {
      const productSelected = await this.findProductByCode(
        this.prisma,
        products.categoria_pedido,
        products.id_pedido,
      );

      ordersProduct.push(productSelected);
    }

    return { foundedOrderProduct, ordersProduct };
  }

  async savePaymentDeliveryLocation(
    id: number,
    createPaymentShippingCartDto: CreatePaymentShippingCartDto,
  ) {
    if (createPaymentShippingCartDto) {
      const { User_Id, categoria_pedido, id, codigo_do_pedido, id_pedido } =
        createPaymentShippingCartDto;
      return createPaymentShippingCartDto;
    }
  }

  async findProductByCode(prisma, category, dataToCompare) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findUniqueOrThrow({
          where: {
            id: dataToCompare,
          },
        });
        break;
      case 'Notebook':
        save = await prisma.notebooks.findUniqueOrThrow({
          where: {
            id: dataToCompare,
          },
        });
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findUniqueOrThrow({
          where: {
            id: dataToCompare,
          },
        });
        break;
      case 'Hardware':
        save = await prisma.hardware.findUniqueOrThrow({
          where: {
            id: dataToCompare,
          },
        });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }

    return save;
  }

  async getAllProductsOnCart(id: number) {
    const foundedOrderProducts = await this.prisma.product_order.findMany({
      where: {
        User_Id: id,
      },
    });

    const productPromises = foundedOrderProducts.map(async (product) => {
      const getProductsByOrderId = await this.findProductsToShoppingCart(
        this.prisma,
        product.categoria_pedido,
        product.id_pedido,
      );

      if (getProductsByOrderId) {
        const foundedOrderProduct =
          await this.prisma.large_image.findFirstOrThrow({
            where: {
              codigo_das_imagens: getProductsByOrderId.Codigo_das_Imagens,
            },
          });
        return { getProductsByOrderId, foundedOrderProduct };
      }
    });

    return Promise.all(productPromises);
  }

  async findProductsToShoppingCart(prisma, category, IdToCompare) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findUniqueOrThrow({
          where: {
            id: IdToCompare,
          },
        });
        break;
      case 'Notebook':
        save = await prisma.notebooks.findUniqueOrThrow({
          where: {
            id: IdToCompare,
          },
        });
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findUniqueOrThrow({
          where: {
            id: IdToCompare,
          },
        });
        break;
      case 'Hardware':
        save = await prisma.hardware.findUniqueOrThrow({
          where: {
            id: IdToCompare,
          },
        });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }

  async findProductByIdAndProductName(category: string, product: string) {
    const save = await this.prisma.notebooks.findMany({
      where: {
        Fabricante: category,
      },
    });

    console.log(save);
    return save;
  }

  async getProductShippingCart(id: number) {
    const save = await this.prisma.product_order.findMany({
      where: {
        User_Id: id,
      },
    });

    return save;
  }

  async SaveOrderProduct(
    id: number,
    category: string,
    createPaymentShippingCartDto: any,
  ) {
    const save = await this.prisma.product_order.findMany({
      where: {
        User_Id: id,
      },
    });

    if (save) {
      const productDataToDbOrder = await this.prisma.product_order.create({
        data: createPaymentShippingCartDto,
      });
      return productDataToDbOrder;
    }
  }

  update(
    id: number,
    updatePaymentShippingCartDto: UpdatePaymentShippingCartDto,
  ) {
    return `This action updates a #${id} paymentShippingCart`;
  }

  remove(id: number) {
    return `This action removes a #${id} paymentShippingCart`;
  }
}
