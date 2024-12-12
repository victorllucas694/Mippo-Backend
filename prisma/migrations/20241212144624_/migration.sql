/*
  Warnings:

  - Added the required column `retirado` to the `product_order` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `product_order` ADD COLUMN `retirado` VARCHAR(191) NOT NULL;
