/*
  Warnings:

  - You are about to drop the column `Codigo` on the `notebooks` table. All the data in the column will be lost.
  - You are about to drop the column `Dimensoes_da_embalagem` on the `notebooks` table. All the data in the column will be lost.
  - You are about to drop the column `Formato` on the `notebooks` table. All the data in the column will be lost.
  - You are about to drop the column `Fornecedor` on the `notebooks` table. All the data in the column will be lost.
  - You are about to drop the column `Peso_do_produto` on the `notebooks` table. All the data in the column will be lost.
  - You are about to drop the column `Quantidade_em_estoque` on the `notebooks` table. All the data in the column will be lost.
  - You are about to drop the column `Tecnologia_de_conexao` on the `notebooks` table. All the data in the column will be lost.
  - Added the required column `Audio_integrado` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Bateria_interna` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Conectividade_sem_fio` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Leitor_de_cartoes_de_memoria` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Tamanho_da_tela` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Teclado_e_touchpad` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Tela_sensivel_ao_toque` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Webcam_embutida` to the `notebooks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "large_image" ADD COLUMN     "acessoriosId" INTEGER,
ADD COLUMN     "hardwareId" INTEGER;

-- AlterTable
ALTER TABLE "notebooks" DROP COLUMN "Codigo",
DROP COLUMN "Dimensoes_da_embalagem",
DROP COLUMN "Formato",
DROP COLUMN "Fornecedor",
DROP COLUMN "Peso_do_produto",
DROP COLUMN "Quantidade_em_estoque",
DROP COLUMN "Tecnologia_de_conexao",
ADD COLUMN     "Audio_integrado" TEXT NOT NULL,
ADD COLUMN     "Bateria_interna" TEXT NOT NULL,
ADD COLUMN     "Conectividade_sem_fio" TEXT NOT NULL,
ADD COLUMN     "Leitor_de_cartoes_de_memoria" BOOLEAN NOT NULL,
ADD COLUMN     "Tamanho_da_tela" TEXT NOT NULL,
ADD COLUMN     "Teclado_e_touchpad" TEXT NOT NULL,
ADD COLUMN     "Tela_sensivel_ao_toque" BOOLEAN NOT NULL,
ADD COLUMN     "Webcam_embutida" BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE "product_properties" ADD COLUMN     "acessoriosId" INTEGER,
ADD COLUMN     "hardwareId" INTEGER;

-- AlterTable
ALTER TABLE "side_images" ADD COLUMN     "acessoriosId" INTEGER,
ADD COLUMN     "hardwareId" INTEGER;

-- CreateTable
CREATE TABLE "acessorios" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Fornecedor" TEXT NOT NULL,
    "montagem_necessaria" TEXT NOT NULL,
    "bateria_pilha" TEXT NOT NULL,
    "bateria_inclusa" TEXT NOT NULL,
    "tipo_da_bateria" TEXT NOT NULL,
    "Tipo_de_soquete_do_processador" TEXT NOT NULL,
    "Peso_do_produto" TEXT NOT NULL,
    "Dimensoes_da_embalagem" TEXT NOT NULL,
    "Codigo" TEXT NOT NULL,
    "Quantidade_em_estoque" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "acessorios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "hardware" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Tipo_de_Hardware" TEXT NOT NULL,
    "Arquitetura" TEXT NOT NULL,
    "Velocidade_do_Clock" TEXT NOT NULL,
    "Nucleos_e_Threads" TEXT NOT NULL,
    "Capacidade_de_Armazenamento" TEXT NOT NULL,
    "Tamanho_da_Memoria_RAM" TEXT NOT NULL,
    "Conectividade" TEXT NOT NULL,
    "Tamanho_Fisico" TEXT NOT NULL,
    "Peso" TEXT NOT NULL,
    "Consumo_de_Energia" TEXT NOT NULL,
    "Compatibilidade" TEXT NOT NULL,
    "Interfaces" TEXT NOT NULL,
    "Drivers" TEXT NOT NULL,
    "Outras_Caracteristicas" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "hardware_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "acessorios_id_key" ON "acessorios"("id");

-- CreateIndex
CREATE UNIQUE INDEX "hardware_id_key" ON "hardware"("id");

-- AddForeignKey
ALTER TABLE "product_properties" ADD CONSTRAINT "product_properties_acessoriosId_fkey" FOREIGN KEY ("acessoriosId") REFERENCES "acessorios"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_properties" ADD CONSTRAINT "product_properties_hardwareId_fkey" FOREIGN KEY ("hardwareId") REFERENCES "hardware"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "large_image" ADD CONSTRAINT "large_image_acessoriosId_fkey" FOREIGN KEY ("acessoriosId") REFERENCES "acessorios"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "large_image" ADD CONSTRAINT "large_image_hardwareId_fkey" FOREIGN KEY ("hardwareId") REFERENCES "hardware"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "side_images" ADD CONSTRAINT "side_images_acessoriosId_fkey" FOREIGN KEY ("acessoriosId") REFERENCES "acessorios"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "side_images" ADD CONSTRAINT "side_images_hardwareId_fkey" FOREIGN KEY ("hardwareId") REFERENCES "hardware"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "acessorios" ADD CONSTRAINT "acessorios_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "hardware" ADD CONSTRAINT "hardware_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
