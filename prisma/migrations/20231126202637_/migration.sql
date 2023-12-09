-- CreateTable
CREATE TABLE "ProductCommentaries" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "commentary" TEXT NOT NULL,
    "product_category" TEXT NOT NULL,
    "products_id" INTEGER NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "date_commentary" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ProductCommentaries_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ProductCommentaries" ADD CONSTRAINT "ProductCommentaries_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
