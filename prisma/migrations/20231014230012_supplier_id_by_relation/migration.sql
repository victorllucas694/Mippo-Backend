/*
  Warnings:

  - Added the required column `Supplier_Id` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "SuppliersSecretInformation" ADD COLUMN     "Supplier_Id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "SuppliersSecretInformation" ADD CONSTRAINT "SuppliersSecretInformation_Supplier_Id_fkey" FOREIGN KEY ("Supplier_Id") REFERENCES "Suppliers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
