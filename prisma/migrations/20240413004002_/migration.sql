-- CreateTable
CREATE TABLE "purchaseUserData" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "details" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "zip_Code" TEXT NOT NULL,
    "country" TEXT NOT NULL,

    CONSTRAINT "purchaseUserData_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "paymentDataLayout" (
    "id" SERIAL NOT NULL,
    "cardHolder" TEXT NOT NULL,
    "cardNumber" TEXT NOT NULL,
    "expiration_date" TEXT NOT NULL,
    "CVV" TEXT NOT NULL,

    CONSTRAINT "paymentDataLayout_pkey" PRIMARY KEY ("id")
);
