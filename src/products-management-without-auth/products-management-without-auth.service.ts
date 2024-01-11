import { Injectable } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';
import { CreateDataDto } from './dto/create-products-management-without-auth.dto';
import { UpdateProductsManagementWithoutAuthDto } from './dto/update-products-management-without-auth.dto';

@Injectable()
export class ProductsManagementWithoutAuthService {
  constructor(private prisma: PrismaService) { }

  async findAllProductsByCategory(category: string) {
    if (category) {
      const getAllProductsByCategory = this.findProductByCode(this.prisma, category);
      return getAllProductsByCategory;
    }
  }

  async findProductByCode(prisma, category) {
    const models = {
      Computadores: prisma.computers,
      Notebook: prisma.notebooks,
      Acessorios: prisma.acessorios,
      Hardware: prisma.hardware,
    };

    const selectedModel = models[category];

    if (!selectedModel) {
      throw new Error('Categoria desconhecida');
    }

    const products = await selectedModel.findMany();

    return products;
  }

  async getImagesByProductData(category: string, id: string, imagecode: string) {
    if (category && id && imagecode) {
      const ProductID = parseInt(id);
      const images = this.queriesProductByImageCode(category, ProductID, imagecode);

      return images;
    }
  }


  async queriesProductByImageCode(category, id, imagecode: string) {
    const results = [];
    const imagesCode = [];
    const getLargeImages = [];
    const getSideImages = [];
    const ProductID = parseInt(id);

    const modelMap = {
      Computadores: this.prisma.computers,
      Notebook: this.prisma.notebooks,
      Acessorios: this.prisma.acessorios,
      Hardware: this.prisma.hardware,
    };

    const modeImagesMap = {
      large_image: this.prisma.large_image,
      side_images: this.prisma.side_images,
    };

    for (const tableName in modelMap) {
      if (modelMap.hasOwnProperty(tableName)) {
        const table = modelMap[tableName];

        const imageCodes = await table.findMany({
          where: {
          },
          select: {
            Codigo_das_Imagens: true,
          },
        });
        for (const image of imageCodes) {
          const largeImages = await modeImagesMap.large_image.findMany({
            where: {
              codigo_das_imagens: image.Codigo_das_Imagens,
            },
          });

          const sideImages = await modeImagesMap.side_images.findMany({
            where: {
              image_code: image.Codigo_das_Imagens,
            },
          });

          results.push({
            tableName,
            imageCodes: image.Codigo_das_Imagens,
            largeImages,
            sideImages,
          });
        }
      }
    }
    return results;
  }

  async filterProductByAllWordKeysParams(id: string, category: string, createDataDto: CreateDataDto) {
    const userId = parseInt(id);

    const foundedUser = await this.prisma.user.findMany({
      where: {
        id: userId,
      },
    });

    // console.log(createDataDto);

    if (foundedUser) {
      const { checkboxStates } = createDataDto;

      const keysToUse = [
        "Fabricante",
        "Marca_do_processador",
        "Tipo_de_processador",
        "Sistema_operacional",
        "Tipo_de_conexao",
        "Tecnologia_da_memoria",
        "Formato",
      ]

      const keysToCheck = [
        'Fabricantes',
        'Processador',
        'Placas de vídeo',
        'Sistema Operacional',
        'Conexões',
        'Memória RAM',
        'Formato do produto',
      ];

      if (createDataDto && checkboxStates) {
        for (let i = 0; i < keysToCheck.length; i++) {
          const keyToCheck = keysToCheck[i];
          const keyToUse = keysToUse[i];
      
          if (checkboxStates[keyToCheck]) {
            checkboxStates[keyToUse] = checkboxStates[keyToCheck];
            delete checkboxStates[keyToCheck];

            console.log(checkboxStates[keyToUse])
          }
        }
      } else {
        console.log('O objeto createDataDto ou checkboxStates é indefinido ou nulo');
      }
    }
  }

  async getProductByfilterContent(prisma, category, key, dataToCompare) {
    const models = {
      Computadores: prisma.computers,
      Notebook: prisma.notebooks,
      Acessorios: prisma.acessorios,
      Hardware: prisma.hardware,
    };

    const selectedModel = models[category];

    if (!selectedModel) {
      throw new Error('Categoria desconhecida');
    }

    const save = await selectedModel.findMany({
      where: {

      }
    });


    // const where = {};

    // for (const key in createDataDto) {
    //   // console.log(createDataDto)
    //   console.log("key", key);
    //   // if (createDataDto.hasOwnProperty(key) && createDataDto[key] !== undefined) {
    //   //   console.log(where)
    //   //   where[key] = createDataDto[key];
    //   // }
    // }

    // const save = await selectedModel.findMany({
    //   where: where,
    // });


    // return save;
  }

  async productRecommendationByCategory(category: string) {
    if (category) {
      const getRecommendationProduct = await this.findUniqueProductByCategory(this.prisma, category);
      console.log(getRecommendationProduct)
      return getRecommendationProduct;
    }
  }

  async findUniqueProductByCategory(prisma, category) {
    const models = {
      Computadores: prisma.computers,
      Notebook: prisma.notebooks,
      Acessorios: prisma.acessorios,
      Hardware: prisma.hardware,
    };

    const selectedModel = models[category];

    if (!selectedModel) {
      throw new Error('Categoria desconhecida');
    }

    const save = await selectedModel.findMany();

    return save;
  }

  async findProductByIdAndCategory(id: string, codigo: string, category: string) {
    if (category && codigo && category) {
      const ProductID = parseInt(id);
      const getUniqueProductsByCategory = this.findUniqueProductByCode(this.prisma, category, codigo, ProductID);
      return getUniqueProductsByCategory;
    }
  }

  async findUniqueProductByCode(prisma, category, code, id) {
    const models = {
      Computadores: prisma.computers,
      Notebook: prisma.notebooks,
      Acessorios: prisma.acessorios,
      Hardware: prisma.hardware,
    };

    const ProductID = parseInt(id);

    const selectedModel = models[category];

    if (!selectedModel) {
      throw new Error('Categoria desconhecida');
    }

    const save = await selectedModel.findUniqueOrThrow({
      where: {
        id: ProductID,
      },
    });


    return save;
  }
}
