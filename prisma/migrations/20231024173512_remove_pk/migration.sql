/*
  Warnings:

  - You are about to drop the column `Computer_Id` on the `large_image` table. All the data in the column will be lost.
  - You are about to drop the column `Computer_Id` on the `product_properties` table. All the data in the column will be lost.
  - You are about to drop the column `Computer_Id` on the `side_images` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "large_image" DROP COLUMN "Computer_Id";

-- AlterTable
ALTER TABLE "product_properties" DROP COLUMN "Computer_Id";

-- AlterTable
ALTER TABLE "side_images" DROP COLUMN "Computer_Id";
