/*
  Warnings:

  - Added the required column `User_Id` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `User_Id` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `UserId` to the `drop_packages` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Suppliers" ADD COLUMN     "User_Id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "SuppliersSecretInformation" ADD COLUMN     "User_Id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "drop_packages" ADD COLUMN     "UserId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Suppliers" ADD CONSTRAINT "Suppliers_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SuppliersSecretInformation" ADD CONSTRAINT "SuppliersSecretInformation_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
