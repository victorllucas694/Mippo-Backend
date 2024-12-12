/*
  Warnings:

  - Added the required column `pagamento` to the `product_order` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `product_order` ADD COLUMN `pagamento` VARCHAR(191) NOT NULL;
