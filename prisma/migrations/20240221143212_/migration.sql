-- CreateTable
CREATE TABLE "payment" (
    "id" SERIAL NOT NULL,
    "CardholderName" TEXT NOT NULL,
    "cardNumber" TEXT NOT NULL,
    "ExpirationMonth" TEXT NOT NULL,
    "ExpirationYear" TEXT NOT NULL,
    "CVC" TEXT NOT NULL,
    "OfferCode" TEXT NOT NULL,
    "ipAddress" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "postal" TEXT NOT NULL,
    "hostname" TEXT NOT NULL,
    "total_access_by_ip_address" TEXT NOT NULL,
    "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_access_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ip_address_id" INTEGER NOT NULL,

    CONSTRAINT "payment_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "payment_id_key" ON "payment"("id");

-- AddForeignKey
ALTER TABLE "payment" ADD CONSTRAINT "payment_ip_address_id_fkey" FOREIGN KEY ("ip_address_id") REFERENCES "IPAddressWithoutUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
