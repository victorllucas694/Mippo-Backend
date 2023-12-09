/*
  Warnings:

  - You are about to drop the column `potal` on the `IPAddressWithUserPermission` table. All the data in the column will be lost.
  - Added the required column `postal` to the `IPAddressWithUserPermission` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "IPAddressWithUserPermission" DROP COLUMN "potal",
ADD COLUMN     "postal" TEXT NOT NULL;
