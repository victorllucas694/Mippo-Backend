import { Injectable } from '@nestjs/common';
import {
  CreateSuppliersManagementDto,
  CreateSuppliersSecretDataManagementDto,
} from './dto/create-suppliers-management.dto';
import { UpdateSuppliersManagementDto } from './dto/update-suppliers-management.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class SuppliersManagementService {
  constructor(private prisma: PrismaService) {}

  async insertNewSupplierWithSecretData(
    createSuppliersSecretDataManagementDto: CreateSuppliersSecretDataManagementDto,
    id: string,
  ) {
    const User_id = parseInt(id);
    const {
      bank_account_holder,
      bank_account_number,
      bank_agency,
      bank_name,
      CEP,
      city,
      road,
      supplier_name
    } = createSuppliersSecretDataManagementDto;

    console.log(
      bank_account_holder,
      bank_account_number,
      bank_agency,
      bank_name,
      CEP,
      city,
      road,
      supplier_name
    );

    try {
      const saveSupplierSecretData =
        await this.prisma.suppliersSecretInformation.create({
          data: {
            bank_account_holder: bank_account_holder,
            bank_account_number: bank_account_number,
            bank_agency: bank_agency,
            bank_name: bank_name,
            User_Id: User_id,
            CEP: CEP,
            city: city,
            road: road,
            supplier_name: supplier_name
          },
        });

        return { saveSupplierSecretData };
    } catch (err) {
      console.log(err);
    }
  }

  async insertNewSupplierWithBasicData(
    createSuppliersManagementDto: CreateSuppliersManagementDto,
    id: string,
  ) {
    const User_id = parseInt(id);
    const { NIF, phone, shipping_method, supplier_name } =
      createSuppliersManagementDto;

    console.log(NIF, phone, shipping_method, supplier_name);

    try {
      const saveSupplierBasicData = await this.prisma.suppliers.create({
        data: {
          name: supplier_name,
          User_Id: User_id,
          NIF: NIF,
          phone: phone,
          shipping_method: shipping_method,
        },
      });

      console.log(saveSupplierBasicData)

      return saveSupplierBasicData;
    } catch (err) {
      console.log(err);
    }
  }

  async findAllSuppliersByUserId(id: string) {
    const User_id = parseInt(id);
    const saveSupplierBasicData = await this.prisma.suppliers.findMany({
      where: {
        User_Id: User_id
      }
    });

    console.log(saveSupplierBasicData);

    return saveSupplierBasicData;
  }

  async findOne(id: number) {
    return `This action returns a #${id} suppliersManagement`;
  }

  async update(
    id: number,
    updateSuppliersManagementDto: UpdateSuppliersManagementDto,
  ) {
    return `This action updates a #${id} suppliersManagement`;
  }

  async remove(id: number) {
    return `This action removes a #${id} suppliersManagement`;
  }
}
