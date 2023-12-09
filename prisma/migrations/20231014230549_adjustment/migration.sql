/*
  Warnings:

  - You are about to drop the column `supplierId` on the `drop_packages` table. All the data in the column will be lost.
  - Added the required column `Supplier_Id` to the `drop_packages` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "drop_packages" DROP CONSTRAINT "drop_packages_supplierId_fkey";

-- AlterTable
ALTER TABLE "drop_packages" DROP COLUMN "supplierId",
ADD COLUMN     "Supplier_Id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "drop_packages" ADD CONSTRAINT "drop_packages_Supplier_Id_fkey" FOREIGN KEY ("Supplier_Id") REFERENCES "Suppliers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
