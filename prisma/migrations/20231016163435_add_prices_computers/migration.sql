/*
  Warnings:

  - Added the required column `Valor_a_prazo` to the `Computers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Valor_a_vista` to the `Computers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Computers" ADD COLUMN     "Valor_a_prazo" TEXT NOT NULL,
ADD COLUMN     "Valor_a_vista" TEXT NOT NULL;
