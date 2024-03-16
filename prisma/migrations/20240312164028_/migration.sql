-- CreateTable
CREATE TABLE "bannerLayoutdb" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "image_path" TEXT NOT NULL,

    CONSTRAINT "bannerLayoutdb_pkey" PRIMARY KEY ("id")
);
