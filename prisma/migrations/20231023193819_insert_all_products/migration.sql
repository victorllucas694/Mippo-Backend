/*
  Warnings:

  - You are about to drop the `computer_large_image` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `computers_properties` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `computers_side_images` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "computer_large_image" DROP CONSTRAINT "computer_large_image_Computer_Id_fkey";

-- DropForeignKey
ALTER TABLE "computers_properties" DROP CONSTRAINT "computers_properties_Computer_Id_fkey";

-- DropForeignKey
ALTER TABLE "computers_side_images" DROP CONSTRAINT "computers_side_images_Computer_Id_fkey";

-- DropTable
DROP TABLE "computer_large_image";

-- DropTable
DROP TABLE "computers_properties";

-- DropTable
DROP TABLE "computers_side_images";

-- CreateTable
CREATE TABLE "product_properties" (
    "id" SERIAL NOT NULL,
    "codigo_do_produto" TEXT NOT NULL,
    "categoria_do_produto" TEXT NOT NULL,
    "Computer_Id" INTEGER NOT NULL,
    "notebooksId" INTEGER,

    CONSTRAINT "product_properties_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "large_image" (
    "id" SERIAL NOT NULL,
    "large_image" TEXT NOT NULL,
    "Computer_Id" INTEGER NOT NULL,
    "codigo_das_imagens" TEXT NOT NULL,
    "notebooksId" INTEGER,

    CONSTRAINT "large_image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "side_images" (
    "id" SERIAL NOT NULL,
    "first_image" TEXT NOT NULL,
    "second_image" TEXT NOT NULL,
    "third_image" TEXT NOT NULL,
    "image_code" TEXT NOT NULL,
    "fourth_image" TEXT NOT NULL,
    "Computer_Id" INTEGER NOT NULL,
    "notebooksId" INTEGER,

    CONSTRAINT "side_images_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "notebooks" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Formato" TEXT NOT NULL,
    "Marca_do_processador" TEXT NOT NULL,
    "Tipo_de_processador" TEXT NOT NULL,
    "Velocidade_do_processador" TEXT NOT NULL,
    "Tipo_de_soquete_do_processador" TEXT NOT NULL,
    "Numero_de_processadores" TEXT NOT NULL,
    "Tamanho_da_memoria" TEXT NOT NULL,
    "Tecnologia_da_memoria" TEXT NOT NULL,
    "Tipo_de_Memoria" TEXT NOT NULL,
    "Tamanho_do_HD" TEXT NOT NULL,
    "Tecnologia_do_HD" TEXT NOT NULL,
    "Interface_do_HD" TEXT NOT NULL,
    "Marca_do_chipset_de_video" TEXT NOT NULL,
    "Descricao_da_placa_de_video" TEXT NOT NULL,
    "Tipo_de_conexao" TEXT NOT NULL,
    "Tecnologia_de_conexao" TEXT NOT NULL,
    "Plataforma_de_hardware" TEXT NOT NULL,
    "Sistema_operacional" TEXT NOT NULL,
    "Peso_do_produto" TEXT NOT NULL,
    "Dimensoes_da_embalagem" TEXT NOT NULL,
    "Codigo" TEXT NOT NULL,
    "Fornecedor" TEXT NOT NULL,
    "Quantidade_em_estoque" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "notebooks_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "notebooks_id_key" ON "notebooks"("id");

-- AddForeignKey
ALTER TABLE "product_properties" ADD CONSTRAINT "product_properties_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_properties" ADD CONSTRAINT "product_properties_notebooksId_fkey" FOREIGN KEY ("notebooksId") REFERENCES "notebooks"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "large_image" ADD CONSTRAINT "large_image_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "large_image" ADD CONSTRAINT "large_image_notebooksId_fkey" FOREIGN KEY ("notebooksId") REFERENCES "notebooks"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "side_images" ADD CONSTRAINT "side_images_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "side_images" ADD CONSTRAINT "side_images_notebooksId_fkey" FOREIGN KEY ("notebooksId") REFERENCES "notebooks"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "notebooks" ADD CONSTRAINT "notebooks_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
