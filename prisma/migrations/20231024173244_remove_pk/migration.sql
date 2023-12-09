/*
  Warnings:

  - You are about to drop the column `acessoriosId` on the `large_image` table. All the data in the column will be lost.
  - You are about to drop the column `hardwareId` on the `large_image` table. All the data in the column will be lost.
  - You are about to drop the column `notebooksId` on the `large_image` table. All the data in the column will be lost.
  - You are about to drop the column `acessoriosId` on the `product_properties` table. All the data in the column will be lost.
  - You are about to drop the column `hardwareId` on the `product_properties` table. All the data in the column will be lost.
  - You are about to drop the column `notebooksId` on the `product_properties` table. All the data in the column will be lost.
  - You are about to drop the column `acessoriosId` on the `side_images` table. All the data in the column will be lost.
  - You are about to drop the column `hardwareId` on the `side_images` table. All the data in the column will be lost.
  - You are about to drop the column `notebooksId` on the `side_images` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "large_image" DROP CONSTRAINT "large_image_Computer_Id_fkey";

-- DropForeignKey
ALTER TABLE "large_image" DROP CONSTRAINT "large_image_acessoriosId_fkey";

-- DropForeignKey
ALTER TABLE "large_image" DROP CONSTRAINT "large_image_hardwareId_fkey";

-- DropForeignKey
ALTER TABLE "large_image" DROP CONSTRAINT "large_image_notebooksId_fkey";

-- DropForeignKey
ALTER TABLE "product_properties" DROP CONSTRAINT "product_properties_Computer_Id_fkey";

-- DropForeignKey
ALTER TABLE "product_properties" DROP CONSTRAINT "product_properties_acessoriosId_fkey";

-- DropForeignKey
ALTER TABLE "product_properties" DROP CONSTRAINT "product_properties_hardwareId_fkey";

-- DropForeignKey
ALTER TABLE "product_properties" DROP CONSTRAINT "product_properties_notebooksId_fkey";

-- DropForeignKey
ALTER TABLE "side_images" DROP CONSTRAINT "side_images_Computer_Id_fkey";

-- DropForeignKey
ALTER TABLE "side_images" DROP CONSTRAINT "side_images_acessoriosId_fkey";

-- DropForeignKey
ALTER TABLE "side_images" DROP CONSTRAINT "side_images_hardwareId_fkey";

-- DropForeignKey
ALTER TABLE "side_images" DROP CONSTRAINT "side_images_notebooksId_fkey";

-- AlterTable
ALTER TABLE "large_image" DROP COLUMN "acessoriosId",
DROP COLUMN "hardwareId",
DROP COLUMN "notebooksId";

-- AlterTable
ALTER TABLE "product_properties" DROP COLUMN "acessoriosId",
DROP COLUMN "hardwareId",
DROP COLUMN "notebooksId";

-- AlterTable
ALTER TABLE "side_images" DROP COLUMN "acessoriosId",
DROP COLUMN "hardwareId",
DROP COLUMN "notebooksId";
