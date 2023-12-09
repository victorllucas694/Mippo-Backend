/*
  Warnings:

  - Added the required column `Codigo` to the `hardware` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Codigo` to the `notebooks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "hardware" ADD COLUMN     "Codigo" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "notebooks" ADD COLUMN     "Codigo" TEXT NOT NULL;
