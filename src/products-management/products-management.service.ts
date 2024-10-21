import { Injectable } from '@nestjs/common';
import { CreateProductsManagementDto } from './dto/create-products-management.dto';
import { UpdateProductsManagementDto } from './dto/update-products-management.dto';
import csvParser from 'csv-parser';
import * as fs from 'fs';
import { parse } from 'csv-parse';
import { PrismaService } from 'prisma/prisma.service';
import { Computers } from '@prisma/client';
import { Prisma, PrismaClient } from '@prisma/client';

interface IProductCSVFile {
  Marca: string | undefined;
  Fabricante: string | undefined;
  Formato: string | undefined;
  Marca_do_processador: string | undefined;
  Tipo_de_processador: string | undefined;
  Velocidade_do_processador: string | undefined;
  Tipo_de_soquete_do_processador: string | undefined;
  Numero_de_processadores: string | undefined;
  Tamanho_da_memoria: string | undefined;
  Tecnologia_da_memoria: string | undefined;
  Tipo_de_Memoria: string | undefined;
  Tamanho_do_HD: string | undefined;
  Tecnologia_do_HD: string | undefined;
  Interface_do_HD: string | undefined;
  Marca_do_chipset_de_video: string | undefined;
  Descricao_da_placa_de_video: string | undefined;
  Tipo_de_conexao: string | undefined;
  Tecnologia_de_conexao: string | undefined;
  Plataforma_de_hardware: string | undefined;
  Sistema_operacional: string | undefined;
  Peso_do_produto: string | undefined;
  Dimensoes_da_embalagem: string | undefined;
  Codigo: string | undefined;
  Dimensoes_do_pacote: string | undefined;
  Descricao_final_sobre_o_produto: string | undefined;
}

interface ISideImages {
  fieldname: string;
  originalname: string;
  encoding: string;
  mimetype: string;
  destination: string;
  filename: string;
  path: string;
  size: number;
}

export interface IDropTable {
  id: number;
  product_name: string;
  min_price: string;
  model_product: string;
  code: string;
  description: string;
  categories: string;
  products_state: string;
  supplier_name: string;
  brand: string;
  Supplier_Id: number;
  User_Id: number;
}

@Injectable()
export class ProductsManagementService {
  constructor(private prisma: PrismaService) { }

  async readCsvFileGetFormDataToSendDataBase(
    file: Express.Multer.File,
    createProductsManagementDto: CreateProductsManagementDto,
    userId: string,
  ) {
    const {
      brand,
      category,
      code,
      description,
      name,
      price,
      id,
      quality,
      supplier_name,
      type,
    } = createProductsManagementDto;

    const User_id = parseInt(userId);

    console.log(
      brand,
      category,
      code,
      description,
      name,
      User_id,
      price,
      quality,
      supplier_name,
      type,
    );

    try {
      const foundedSupplierID = await this.prisma.suppliers.findFirstOrThrow({
        where: {
          name: supplier_name,
        },
      });

      if (foundedSupplierID) {
        const sendDropProductPack = await this.prisma.drop_packages.create({
          data: {
            brand: brand,
            categories: category,
            code: code,
            description: description,
            products_state: quality,
            supplier_name: supplier_name,
            min_price: price,
            model_product: type,
            product_name: name,
            User_Id: User_id,
          },
        });

        console.log(sendDropProductPack);
      }

      if (file && file.path) {
        const filePath = file.path;
        const fileContent = fs.readFileSync(filePath, 'utf-8');
        const lines = fileContent.trim().split('\n');
        const headerfoundedItems: string[] = [];

        if (lines.length > 1) {
          const headerLine = lines[0].split(',');
          console.log(headerLine);
          const data = [];

          for (let i = 1; i < lines.length; i++) {
            const line = lines[i].split(',');
            const rowData = {};

            for (let j = 0; j < headerLine.length; j++) {
              rowData[headerLine[j].trim()] = line[j].trim();
            }

            data.push(rowData);
          }

          data.map(async (db) => {
            db['User_Id'] = User_id;
            console.log(db);

            try {
              const save = await this.saveData(this.prisma, category, db);
              console.log(save);
            } catch (error) {
              console.error('Erro ao salvar os dados:', error);
            }
          });
        }
      }
    } catch (error) {
      throw new Error(`Erro ao criar o registro: ${error.message}`);
    }
  }

  async saveData(prisma, category, data) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.create({ data });
        break;
      case 'Notebook':
        save = await prisma.notebooks.create({ data });
        break;
      case 'Acessórios':
        save = await prisma.acessorios.create({ data });
        break;
      case 'Hardware':
        save = await prisma.hardware.create({ data });
        break;
      default:
        throw new Error('Categoria desconhecida');
    }
    return save;
  }




  async getDataToSaveOnDataBase(
    productCategory: string,
    productCode: string,
    id: string,
  ) {
    const userID = parseInt(id);

    console.log(userID);

    const trustUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: userID,
      },
    });

    console.log(trustUser.admin);

    if (trustUser.admin === 'true') {
      const foundedProduct = await this.findProductByCode(
        this.prisma,
        productCategory,
        productCode,
      );
      foundedProduct.map(async (productSelected) => {
        try {
          if (productSelected.Codigo && productCategory && productSelected.id) {
            const insertComputerProps =
              await this.prisma.product_properties.create({
                data: {
                  codigo_do_produto: productSelected.Codigo,
                  categoria_do_produto: productCategory,
                },
              });
          }
        } catch (error) {
          console.log(error);
        }
      });
    }
  }

  async findProductByCode(prisma, category, dataToCompare) {
    let save;
    switch (category) {
      case 'Computadores':
        save = await prisma.computers.findMany({
          where: {
            Codigo_das_Imagens: dataToCompare,
          },
        });
        console.log(save)
        break;
      case 'Notebook':
        save = await prisma.notebooks.findMany({
          where: {
            Codigo_das_Imagens: dataToCompare,
          },
        });
        console.log(save)
        break;
      case 'Acessórios':
        save = await prisma.acessorios.findMany({
          where: {
            Codigo_das_Imagens: dataToCompare,
          },
        });
        console.log('Acessórios a');

        console.log(save)
        break;
      case 'Hardware':
        save = await prisma.hardware.findMany({
          where: {
            Codigo_das_Imagens: dataToCompare,
          },
        });
        console.log(save)
        break;

      default:
        throw new Error('Categoria desconhecida');
    }

    return save;
  }

  async uploadServiceLargeImage(
    LargeImage,
    productCode: string,
    productCategory: string,
    id: string,
  ) {
    const userID = parseInt(id);
    const trustUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: userID,
      },
    });

    console.log(trustUser.admin);

    if (trustUser.admin === 'true') {
      const foundedProduct = await this.findProductByCode(
        this.prisma,
        productCategory,
        productCode,
      );


      if (foundedProduct) {
        try {
          foundedProduct.map(async (product) => {
            const insertComputerProps = await this.prisma.large_image.create({
              data: {
                large_image: LargeImage.path,
                codigo_das_imagens: product.Codigo_das_Imagens,
              },
            });
            console.log(insertComputerProps);

          })
        } catch (error) {
          console.log(error);
        }

      }
    } else {
      return { message: 'Nenhuma imagem grande encontrada.' };
    }
  }

  async uploadServicesSideImages(
    sideImages,
    productCode,
    productCategory: string,
    id: string,
  ) {
    const userID = parseInt(id);
    const trustUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: userID,
      },
    });

    console.log(trustUser.admin);

    if (trustUser.admin === 'true') {
      const foundedProduct = await this.findProductByCode(
        this.prisma,
        productCategory,
        productCode,
      );
      if (foundedProduct) {
        try {
          const keys = [
            'firstImage',
            'secondImage',
            'thirdImage',
            'fourthImage',
          ];

          const sideImagesWithKeys = sideImages.reduce(
            (acc, imageModelObjects, index) => {
              const key = keys[index];
              imageModelObjects[key] = imageModelObjects.path;
              acc.push(imageModelObjects);
              return acc;
            },
            [],
          );
          const selectedKeys = keys.map((key) => {
            const imageObject = sideImagesWithKeys.find(
              (obj) => obj[key] !== undefined,
            );
            if (imageObject) {
              return imageObject[key];
            }
            return null;
          });

          foundedProduct.map(async (product) => {
            const insertComputerProps = await this.prisma.side_images.create({
              data: {
                first_image: selectedKeys[0],
                second_image: selectedKeys[1],
                third_image: selectedKeys[2],
                fourth_image: selectedKeys[3],
                image_code: product.Codigo_das_Imagens,
              },
            });

            console.log(insertComputerProps);
          })
          return { message: 'Imagem lateral enviada com sucesso!' };
        } catch (error) {
          console.log(error);
          return { error: error };
        }
      }
    }
    if (!sideImages || sideImages.length === 0) {
      return { message: 'Nenhuma imagem lateral encontrada.' };
    }
  }

  async findAllProductsByCategoryAndProductCode(
    id: string,
    productCode: string,
  ) {
    const User_Id = parseInt(id);
    let arrProviderToDropCodeTable: any[] = [];

    const trustUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: User_Id,
      },
    });

      try {
        const findPackageByDropCodeTable =
          await this.prisma.drop_packages.findMany({
            where: {
              User_Id: User_Id,
            },
          });

        if (findPackageByDropCodeTable) {
          findPackageByDropCodeTable.map(async (findColumn_Category) => {
            if (findColumn_Category.code === productCode) {
              arrProviderToDropCodeTable.push(findColumn_Category);
            }
          });
        }
      } catch (error) {
        return { error: error };
      }

      return { foundedProduct: arrProviderToDropCodeTable };

  }

  async findAllProductsByCategory(id: string) {
    const User_Id = parseInt(id);

    const trustUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: User_Id,
      },
    });

      const findPackageByDropCodeTable = await this.prisma.drop_packages.findMany(
        {
          where: {
            User_Id: User_Id,
          },
        },
      );
      const findByDropCodeTable = await this.prisma.computers.findMany({
        where: {
          User_Id: User_Id,
        },
      });

      return {
        product: findByDropCodeTable,
        package: findPackageByDropCodeTable,
      };


  }

  update(id: number, updateProductsManagementDto: UpdateProductsManagementDto) {
    return `This action updates a #${id} productsManagement`;
  }

  async removeDropPackageAndProductsWithDropCode(id: string, dropCode: string) {
    const User_Id = parseInt(id);
    const trustUser = await this.prisma.user.findUniqueOrThrow({
      where: {
        id: User_Id,
      },
    });

    
    const findPackageByDropCodeTable =
      await this.prisma.drop_packages.deleteMany({
        where: {
          User_Id: User_Id,
          code: dropCode,
        },
      });

    const findByDropCodeTable = await this.prisma.computers.deleteMany({
      where: {
        User_Id: User_Id,
        Codigo: dropCode,
      },
    });

    return {
      DeletedPackage: findPackageByDropCodeTable,
      DeletedProducts: findByDropCodeTable,
    };

  }
}
