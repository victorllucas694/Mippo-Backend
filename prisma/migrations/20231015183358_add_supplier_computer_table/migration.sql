/*
  Warnings:

  - You are about to drop the column `Supplier_Id` on the `drop_packages` table. All the data in the column will be lost.
  - Added the required column `Fornecedor` to the `Computers` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "drop_packages" DROP CONSTRAINT "drop_packages_Supplier_Id_fkey";

-- AlterTable
ALTER TABLE "Computers" ADD COLUMN     "Fornecedor" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "drop_packages" DROP COLUMN "Supplier_Id";
