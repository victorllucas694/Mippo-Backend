/*
  Warnings:

  - You are about to drop the column `last_name` on the `UserAddress` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `UserAddress` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "UserAddress" DROP COLUMN "last_name",
DROP COLUMN "name";
