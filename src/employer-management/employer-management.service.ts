  import { Injectable } from '@nestjs/common';
  import { CreateEmployerManagementDto } from './dto/create-employer-management.dto';
  import { UpdateEmployerManagementDto } from './dto/update-employer-management.dto';
  import { PrismaService } from 'prisma/prisma.service';

  @Injectable()
  export class EmployerManagementService {
    constructor(private prisma: PrismaService) {}

    async create(
      createEmployerManagementDto: CreateEmployerManagementDto,
      id: number,
    ) {
      const trustUserToSearchQuery = await this.prisma.user.findUnique({
        where: {
          id: id,
        },
      });

      if(trustUserToSearchQuery.admin === 'true') {
        const {
          Bank,
          CPF,
          Employee_gender,
          RG,
          address,
          agency,
          bank_account,
          email,
          employee_code,
          employee_supervisor,
          employer_date,
          last_name,
          name,
          numberJob,
          password,
          phone,
          position,
          workload
        } = createEmployerManagementDto;
    
    
        const getComputerSelectedById = await this.prisma.employers.create({
          data: createEmployerManagementDto,
        });
    
        return getComputerSelectedById;
      }
      else {
        return {
          error: 'Você não tem permissão'
        }
      }
    }

    async findAll(id: number) {
      const trustUserToSearchQuery = await this.prisma.user.findUnique({
        where: {
          id: id,
        },
      });

      if(trustUserToSearchQuery.admin === 'true') {
        const getComputerSelectedById = await this.prisma.employers.findMany({});

        return getComputerSelectedById;
      }
      else {
        return {
          error: 'Você não tem permissão'
        }
      }
    }

    findOne(id: number) {
      return `This action returns a #${id} employerManagement`;
    }

    update(id: number, updateEmployerManagementDto: UpdateEmployerManagementDto) {
      return `This action updates a #${id} employerManagement`;
    }

    remove(id: number) {
      return `This action removes a #${id} employerManagement`;
    }
  }
