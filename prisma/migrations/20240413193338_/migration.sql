/*
  Warnings:

  - You are about to drop the column `cardHolder` on the `paymentDataLayout` table. All the data in the column will be lost.
  - You are about to drop the column `cardNumber` on the `paymentDataLayout` table. All the data in the column will be lost.
  - Added the required column `card_holder` to the `paymentDataLayout` table without a default value. This is not possible if the table is not empty.
  - Added the required column `card_number` to the `paymentDataLayout` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "paymentDataLayout" DROP COLUMN "cardHolder",
DROP COLUMN "cardNumber",
ADD COLUMN     "card_holder" TEXT NOT NULL,
ADD COLUMN     "card_number" TEXT NOT NULL;
