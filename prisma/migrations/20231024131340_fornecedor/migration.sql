/*
  Warnings:

  - Added the required column `Fornecedor` to the `hardware` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Fornecedor` to the `notebooks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "hardware" ADD COLUMN     "Fornecedor" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "notebooks" ADD COLUMN     "Fornecedor" TEXT NOT NULL;
