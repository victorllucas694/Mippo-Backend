-- CreateTable
CREATE TABLE "SuppliersSecretInformation" (
    "id" SERIAL NOT NULL,
    "BankAccountHolder" TEXT NOT NULL,
    "BankAgency" TEXT NOT NULL,
    "BankName" TEXT NOT NULL,
    "BankAccountNumber" TEXT NOT NULL,
    "Road" TEXT NOT NULL,
    "City" TEXT NOT NULL,
    "CEP" TEXT NOT NULL,

    CONSTRAINT "SuppliersSecretInformation_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "SuppliersSecretInformation_id_key" ON "SuppliersSecretInformation"("id");
