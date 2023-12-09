/*
  Warnings:

  - You are about to drop the column `computer_Id` on the `computers_properties` table. All the data in the column will be lost.
  - You are about to drop the column `UserId` on the `drop_packages` table. All the data in the column will be lost.
  - Added the required column `Computer_Id` to the `computers_properties` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "computers_properties" DROP CONSTRAINT "computers_properties_computer_Id_fkey";

-- AlterTable
ALTER TABLE "computers_properties" DROP COLUMN "computer_Id",
ADD COLUMN     "Computer_Id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "drop_packages" DROP COLUMN "UserId";

-- AddForeignKey
ALTER TABLE "computers_properties" ADD CONSTRAINT "computers_properties_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
