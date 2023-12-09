import { Injectable } from '@nestjs/common';
import { CreateInventaryManagementDto } from './dto/create-inventary-management.dto';
import { UpdateInventaryManagementDto } from './dto/update-inventary-management.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class InventaryManagementService {

  constructor(private prisma: PrismaService) { }
  
  create(createInventaryManagementDto: CreateInventaryManagementDto) {
    return 'This action adds a new inventaryManagement';
  }

  async findAll(id: number, category: string) {
    const trustUserToSearchQuery = await this.prisma.user.findUnique({
      where: {
        id: id,
      },
    });

    if(trustUserToSearchQuery.admin === "true") {
      const foundedProducts = await this.getQuantityOnInventaryByProductCategory(this.prisma, category);
      console.log(foundedProducts)
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

  findOne(id: number) {
    return `This action returns a #${id} inventaryManagement`;
  }

  update(id: number, updateInventaryManagementDto: UpdateInventaryManagementDto) {
    return `This action updates a #${id} inventaryManagement`;
  }

  remove(id: number) {
    return `This action removes a #${id} inventaryManagement`;
  }
}
