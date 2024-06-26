import { Injectable } from '@nestjs/common';
import { CreateInventaryManagementDto } from './dto/create-inventary-management.dto';
import { UpdateInventaryManagementDto } from './dto/update-inventary-management.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class InventaryManagementService {
  constructor(private prisma: PrismaService) {}

  async create(createInventaryManagementDto: CreateInventaryManagementDto) {
    return 'asds';
  }

  async findAll(id: number, category: string) {
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });

    if (trustUserToSearchQuery.admin === 'true') {
      const foundedProducts =
        await this.getQuantityOnInventaryByProductCategory(
          this.prisma,
          category,
        );
      return foundedProducts;
    }

    return 'Error';
  }

  async getQuantityOnInventaryByProductCategory(prisma, category) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findMany();
        break;
      case 'Notebook':
        save = await prisma.notebooks.findMany();
        break;
      case 'Acessorios':
        save = await prisma.acessorios.findMany();
        break;
      case 'Hardware':
        save = await prisma.hardware.findMany();
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }

  async filterProductByItemSelected(category: string) {
    const filteredProducts = await this.prisma.notebooks.findMany({
      where: {
        OR: [
          { Marca: category },
          { Fabricante: category },
          { Marca_do_processador: category },
          { Tecnologia_da_memoria: category },
          { Tipo_de_conexao: category },
          { Sistema_operacional: category },
          { Descricao_da_placa_de_video: category },
        ],
      },
    });

    return filteredProducts;
  }

  remove(id: number) {
    return `This action removes a #${id} inventaryManagement`;
  }
}
