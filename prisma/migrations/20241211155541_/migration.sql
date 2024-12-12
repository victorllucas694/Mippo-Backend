/*
  Warnings:

  - You are about to alter the column `Quantidade_em_estoque` on the `acessorios` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `Quantidade_em_estoque` on the `computers` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `Quantidade_em_estoque` on the `hardware` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `Quantidade_em_estoque` on the `notebooks` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `acessorios` MODIFY `Quantidade_em_estoque` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `computers` MODIFY `Quantidade_em_estoque` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `hardware` MODIFY `Quantidade_em_estoque` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `notebooks` MODIFY `Quantidade_em_estoque` INTEGER NOT NULL;
