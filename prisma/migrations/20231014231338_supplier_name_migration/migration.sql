/*
  Warnings:

  - Added the required column `SupplierName` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "SuppliersSecretInformation" DROP CONSTRAINT "SuppliersSecretInformation_Supplier_Id_fkey";

-- AlterTable
ALTER TABLE "SuppliersSecretInformation" ADD COLUMN     "SupplierName" TEXT NOT NULL;
