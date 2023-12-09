/*
  Warnings:

  - You are about to drop the column `admin` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "admin";

-- CreateTable
CREATE TABLE "product_order" (
    "id" SERIAL NOT NULL,
    "id_pedido" INTEGER NOT NULL,
    "categoria_pedido" TEXT NOT NULL,
    "codigo_do_pedido" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,

    CONSTRAINT "product_order_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "product_order" ADD CONSTRAINT "product_order_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
