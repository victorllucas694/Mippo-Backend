/*
  Warnings:

  - You are about to drop the column `Peso` on the `hardware` table. All the data in the column will be lost.
  - Added the required column `Peso_do_produto` to the `hardware` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Quantidade_em_estoque` to the `hardware` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Peso_do_produto` to the `notebooks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Quantidade_em_estoque` to the `notebooks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "hardware" DROP COLUMN "Peso",
ADD COLUMN     "Peso_do_produto" TEXT NOT NULL,
ADD COLUMN     "Quantidade_em_estoque" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "notebooks" ADD COLUMN     "Peso_do_produto" TEXT NOT NULL,
ADD COLUMN     "Quantidade_em_estoque" TEXT NOT NULL;
