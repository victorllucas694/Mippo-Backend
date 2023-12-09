/*
  Warnings:

  - You are about to drop the column `Name` on the `Suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `Phone` on the `Suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `ShippingMethod` on the `Suppliers` table. All the data in the column will be lost.
  - You are about to drop the column `BankAccountHolder` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `BankAccountNumber` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `BankAgency` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `BankName` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `City` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `Road` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `SupplierName` on the `SuppliersSecretInformation` table. All the data in the column will be lost.
  - You are about to drop the column `createDateTime` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastChangedDateTime` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `Codigo_das_imagens` on the `computer_large_image` table. All the data in the column will be lost.
  - You are about to drop the column `LargeImage` on the `computer_large_image` table. All the data in the column will be lost.
  - You are about to drop the column `Categoria_do_produto` on the `computers_properties` table. All the data in the column will be lost.
  - You are about to drop the column `Codigo_do_produto` on the `computers_properties` table. All the data in the column will be lost.
  - You are about to drop the column `Computer_Id` on the `computers_properties` table. All the data in the column will be lost.
  - You are about to drop the column `Codigo_das_imagens` on the `computers_side_images` table. All the data in the column will be lost.
  - You are about to drop the column `firstImage` on the `computers_side_images` table. All the data in the column will be lost.
  - You are about to drop the column `fourthImage` on the `computers_side_images` table. All the data in the column will be lost.
  - You are about to drop the column `secondImage` on the `computers_side_images` table. All the data in the column will be lost.
  - You are about to drop the column `thirdImage` on the `computers_side_images` table. All the data in the column will be lost.
  - You are about to drop the column `drop_brand` on the `drop_packages` table. All the data in the column will be lost.
  - You are about to drop the column `drop_categories` on the `drop_packages` table. All the data in the column will be lost.
  - You are about to drop the column `drop_code` on the `drop_packages` table. All the data in the column will be lost.
  - You are about to drop the column `drop_description` on the `drop_packages` table. All the data in the column will be lost.
  - You are about to drop the column `drop_products_state` on the `drop_packages` table. All the data in the column will be lost.
  - You are about to drop the column `drop_seller` on the `drop_packages` table. All the data in the column will be lost.
  - Added the required column `name` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `shipping_method` to the `Suppliers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bank_account_holder` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bank_account_number` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bank_agency` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bank_name` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `city` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `road` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `supplier_name` to the `SuppliersSecretInformation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_name` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `codigo_das_imagens` to the `computer_large_image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `large_image` to the `computer_large_image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `categoria_do_produto` to the `computers_properties` table without a default value. This is not possible if the table is not empty.
  - Added the required column `codigo_do_produto` to the `computers_properties` table without a default value. This is not possible if the table is not empty.
  - Added the required column `computer_Id` to the `computers_properties` table without a default value. This is not possible if the table is not empty.
  - Added the required column `first_image` to the `computers_side_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fourth_image` to the `computers_side_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `image_code` to the `computers_side_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `second_image` to the `computers_side_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `third_image` to the `computers_side_images` table without a default value. This is not possible if the table is not empty.
  - Added the required column `brand` to the `drop_packages` table without a default value. This is not possible if the table is not empty.
  - Added the required column `categories` to the `drop_packages` table without a default value. This is not possible if the table is not empty.
  - Added the required column `code` to the `drop_packages` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `drop_packages` table without a default value. This is not possible if the table is not empty.
  - Added the required column `products_state` to the `drop_packages` table without a default value. This is not possible if the table is not empty.
  - Added the required column `supplier_name` to the `drop_packages` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "computers_properties" DROP CONSTRAINT "computers_properties_Computer_Id_fkey";

-- AlterTable
ALTER TABLE "Suppliers" DROP COLUMN "Name",
DROP COLUMN "Phone",
DROP COLUMN "ShippingMethod",
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "phone" TEXT NOT NULL,
ADD COLUMN     "shipping_method" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "SuppliersSecretInformation" DROP COLUMN "BankAccountHolder",
DROP COLUMN "BankAccountNumber",
DROP COLUMN "BankAgency",
DROP COLUMN "BankName",
DROP COLUMN "City",
DROP COLUMN "Road",
DROP COLUMN "SupplierName",
ADD COLUMN     "bank_account_holder" TEXT NOT NULL,
ADD COLUMN     "bank_account_number" TEXT NOT NULL,
ADD COLUMN     "bank_agency" TEXT NOT NULL,
ADD COLUMN     "bank_name" TEXT NOT NULL,
ADD COLUMN     "city" TEXT NOT NULL,
ADD COLUMN     "road" TEXT NOT NULL,
ADD COLUMN     "supplier_name" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "createDateTime",
DROP COLUMN "lastChangedDateTime",
DROP COLUMN "lastName",
ADD COLUMN     "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "last_name" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "computer_large_image" DROP COLUMN "Codigo_das_imagens",
DROP COLUMN "LargeImage",
ADD COLUMN     "codigo_das_imagens" TEXT NOT NULL,
ADD COLUMN     "large_image" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "computers_properties" DROP COLUMN "Categoria_do_produto",
DROP COLUMN "Codigo_do_produto",
DROP COLUMN "Computer_Id",
ADD COLUMN     "categoria_do_produto" TEXT NOT NULL,
ADD COLUMN     "codigo_do_produto" TEXT NOT NULL,
ADD COLUMN     "computer_Id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "computers_side_images" DROP COLUMN "Codigo_das_imagens",
DROP COLUMN "firstImage",
DROP COLUMN "fourthImage",
DROP COLUMN "secondImage",
DROP COLUMN "thirdImage",
ADD COLUMN     "first_image" TEXT NOT NULL,
ADD COLUMN     "fourth_image" TEXT NOT NULL,
ADD COLUMN     "image_code" TEXT NOT NULL,
ADD COLUMN     "second_image" TEXT NOT NULL,
ADD COLUMN     "third_image" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "drop_packages" DROP COLUMN "drop_brand",
DROP COLUMN "drop_categories",
DROP COLUMN "drop_code",
DROP COLUMN "drop_description",
DROP COLUMN "drop_products_state",
DROP COLUMN "drop_seller",
ADD COLUMN     "brand" TEXT NOT NULL,
ADD COLUMN     "categories" TEXT NOT NULL,
ADD COLUMN     "code" TEXT NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "products_state" TEXT NOT NULL,
ADD COLUMN     "supplier_name" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "computers_properties" ADD CONSTRAINT "computers_properties_computer_Id_fkey" FOREIGN KEY ("computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
