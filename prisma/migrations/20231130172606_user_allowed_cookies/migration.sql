-- CreateTable
CREATE TABLE "IPAddressWithUserPermission" (
    "id" SERIAL NOT NULL,
    "ipAddress" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "potal" TEXT NOT NULL,
    "hostname" TEXT NOT NULL,
    "total_access_by_ip_address" TEXT NOT NULL,
    "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_access_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ip_address_id" INTEGER NOT NULL,

    CONSTRAINT "IPAddressWithUserPermission_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "IPAddressWithUserPermission" ADD CONSTRAINT "IPAddressWithUserPermission_ip_address_id_fkey" FOREIGN KEY ("ip_address_id") REFERENCES "IPAddressWithoutUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
