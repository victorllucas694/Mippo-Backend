import { Injectable } from '@nestjs/common';
import { CreateOrderManagementDto } from './dto/create-order-management.dto';
import { UpdateOrderManagementDto } from './dto/update-order-management.dto';
import { PrismaService } from 'prisma/prisma.service';
import { retry } from 'rxjs';

interface order {
  id: number;
  id_pedido: number;
  categoria_pedido: string;
  codigo_do_pedido: string;
  User_Id: number;
}

interface user {
  id: number;
  name: string;
  last_name: string;
  email: string;
  password: string;
  admin: string;
  phone: string;
  create_date_time: Date;
  last_changed_date_time: Date;
}

interface Product {
  id: number;
  Marca: string;
  Fabricante: string;
  Formato: string;
  Marca_do_processador: string;
  Tipo_de_processador: string;
  Velocidade_do_processador: string;
  Tipo_de_soquete_do_processador: string;
  Numero_de_processadores: string;
  Tamanho_da_memoria: string;
  Tecnologia_da_memoria: string;
  Tipo_de_Memoria: string;
  Tamanho_do_HD: string;
  Tecnologia_do_HD: string;
  Interface_do_HD: string;
  Marca_do_chipset_de_video: string;
  Descricao_da_placa_de_video: string;
  Tipo_de_conexao: string;
  Tecnologia_de_conexao: string;
  Plataforma_de_hardware: string;
  Sistema_operacional: string;
  Peso_do_produto: string;
  Dimensoes_da_embalagem: string;
  Codigo: string;
  Fornecedor: string;
  Quantidade_em_estoque: string;
  User_Id: number;
  Valor_a_vista: string;
  Valor_a_prazo: string;
  Codigo_das_Imagens: string;
  Dimensoes_do_pacote: string;
  Descricao_final_sobre_o_produto: string;
}

interface IRelationTicket {
  order: order;
  user: user;
  product: Product;
}

@Injectable()
export class OrderManagementService {
  constructor(private prisma: PrismaService) {}

  async addNewOrder(
    createOrderManagementDto: CreateOrderManagementDto,
    userId: string,
    category: string,
  ) {
    const userID = parseInt(userId);

    const { Codigo, id, name, Codigo_das_Imagens } = createOrderManagementDto;

    const ordersPayload = await this.ordersByCategories(
      this.prisma,
      category,
      id,
    );

    if (
      parseInt(ordersPayload.Quantidade_em_estoque) &&
      parseInt(ordersPayload.Quantidade_em_estoque) > 0
    ) {
      const getComputerSelectedById = await this.prisma.product_order.create({
        data: {
          categoria_pedido: category,
          codigo_do_pedido: Codigo_das_Imagens,
          id_pedido: id,
          User_Id: userID,
          pagamento: 'not_paid',
          retirado: 'false'
        },
      });

      return getComputerSelectedById;
    }
    else {
      return 'produto esgotado'
    }


    // console.log(ordersPayload)


    // return getComputerSelectedById;
  }
  async ordersByCategories(prisma, category, data) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findUnique({
          where: {
            id: data,
          },
        });
        break;
      case 'Notebook':
        save = await prisma.notebooks.findUnique({
          where: {
            id: data,
          },
        });
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findUnique({
          where: {
            id: data,
          },
        });
        break;
      case 'Hardware':
        save = await prisma.hardware.findUnique({
          where: {
            id: data,
          },
        });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }

  async findProductsWithLowerStock(id: number) {
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });

    if (trustUserToSearchQuery.admin === 'true') {
      const dataComputerProduct = await this.getProductsWithLowerStock(
        this.prisma,
        'Computadores',
      );
      const dataNotebookProduct = await this.getProductsWithLowerStock(
        this.prisma,
        'Notebook',
      );
      const dataAcessoriesProduct = await this.getProductsWithLowerStock(
        this.prisma,
        'Acessorios',
      );
      const dataHardwareProduct = await this.getProductsWithLowerStock(
        this.prisma,
        'Hardware',
      );

      if (
        dataComputerProduct &&
        dataNotebookProduct &&
        dataAcessoriesProduct &&
        dataHardwareProduct
      ) {
        return {
          dataComputerProduct,
          dataNotebookProduct,
          dataAcessoriesProduct,
          dataHardwareProduct,
        };
      } else {
        return { error: 'erro' };
      }
    }
  }

  async getProductsWithLowerStock(prisma, category) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findMany();
        break;
      case 'Notebook':
        save = await prisma.notebooks.findMany();
        break;
      case 'Acessorios':
        save = await prisma.notebooks.findMany();
        break;
      case 'Hardware':
        save = await prisma.notebooks.findMany({});
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }

  async findUserOrder(id: number) {
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });

    if (trustUserToSearchQuery) {
      const getComputerSelectedById = await this.prisma.product_order.findMany({
        where: {
          User_Id: trustUserToSearchQuery.id,
        },
      });

      return getComputerSelectedById;
    }
  }

  async findUserOrdersWithImage(id: number) {
    const productsWithRelation: IRelationTicket[] = [];

    const getComputerSelectedById = await this.prisma.product_order.findMany();

    for (const order of getComputerSelectedById) {
      const getUserPropertiesByUSerId = await this.prisma.user.findMany({
        where: {
          id: order.User_Id,
        },
      });

      const product = await this.getOrderByCategories(
        this.prisma,
        order.categoria_pedido,
        order,
      );

      if (product) {
        getUserPropertiesByUSerId.map((user) => {
          if (order.User_Id === user.id && order.id_pedido === product.id) {
            productsWithRelation.push({
              order: { ...order },
              user: { ...user },
              product: { ...product },
            });
          }
        });
      }
    }

    return productsWithRelation;
  }

  async findAllOrders(id: string) {
    const adminID = parseInt(id);
    const productsWithRelation: IRelationTicket[] = [];
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: adminID,
      },
    });

    if (trustUserToSearchQuery.admin === 'true') {
      const getComputerSelectedById =
        await this.prisma.product_order.findMany();

      for (const order of getComputerSelectedById) {
        const getUserPropertiesByUSerId = await this.prisma.user.findMany({
          where: {
            id: order.User_Id,
          },
        });

        const product = await this.getOrderByCategories(
          this.prisma,
          order.categoria_pedido,
          order,
        );

        if (product) {
          getUserPropertiesByUSerId.map((user) => {
            if (order.User_Id === user.id && order.id_pedido === product.id) {
              productsWithRelation.push({
                order: { ...order },
                user: { ...user },
                product: { ...product },
              });
            }
          });
        }
      }
    }

    return productsWithRelation;
  }

  async getOrdersProducts(id: number) {
    const getComputerSelectedById = await this.prisma.product_order.findMany(
      {},
    );

    return getComputerSelectedById;
  }

  async findAllOrdersByCommomUserId(id: number) {
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });

    if (trustUserToSearchQuery) {
      const findOrders = await this.prisma.product_order.findMany({
        where: {
          User_Id: id,
        },
      });

      const processedOrders = await Promise.all(
        findOrders.map(async (products: any) => {
          const orders = await this.findOrdersByCategories(
            this.prisma,
            products.categoria_pedido,
            products,
          );
          return { ...products, additionalOrders: orders };
        }),
      );

      console.log(processedOrders);
      return processedOrders;
    } else {
      throw new Error('User not found');
    }
  }

  async findOrdersByCategories(prisma, category, data) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Notebook':
        save = await prisma.notebooks.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Hardware':
        save = await prisma.hardware.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }

  async getOrdersToPaymentProduct(id: number) {
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });
    if (trustUserToSearchQuery?.admin === 'true') {
      const getComputerSelectedById =
        await this.prisma.product_order.findMany();
      if (getComputerSelectedById) {
        const products = await Promise.all(
          getComputerSelectedById.map(async (order: any) => {
            const product = await this.getOrderByCategories(
              this.prisma,
              order.categoria_pedido,
              order,
            );
            const findUserByPayment = await this.prisma.user.findUniqueOrThrow({
              where: {
                id: order.User_Id,
              },
            });
            return {
              product,
              user: findUserByPayment,
              order,
            };
          }),
        );
        return products;
      }
    }
    return [];
  }

  async getOrderById(prisma, category, data) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Notebook':
        save = await prisma.notebooks.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Hardware':
        save = await prisma.hardware.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }

  async findTotalPriceByShippingCart(id: number) {
    const productsWithRelation: IRelationTicket[] = [];
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });

    const getComputerSelectedById = await this.prisma.product_order.findMany({
      where: {
        User_Id: id,
      },
    });

    for (const order of getComputerSelectedById) {
      const getUserPropertiesByUSerId = await this.prisma.user.findMany({
        where: {
          id: order.User_Id,
        },
      });

      const product = await this.getOrderByCategories(
        this.prisma,
        order.categoria_pedido,
        order,
      );

      if (product) {
        getUserPropertiesByUSerId.map((user) => {
          if (order.User_Id === user.id && order.id_pedido === product.id) {
            productsWithRelation.push({
              order: { ...order },
              user: { ...user },
              product: { ...product },
            });
          }
        });
      }
    }

    return productsWithRelation;
  }

  async getOrderByCategories(prisma, category, data) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Notebook':
        save = await prisma.notebooks.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      case 'Hardware':
        save = await prisma.hardware.findUnique({
          where: {
            id: data.id_pedido,
          },
        });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }
}
