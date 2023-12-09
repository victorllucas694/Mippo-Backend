-- CreateTable
CREATE TABLE "IPAddressWithoutUser" (
    "id" SERIAL NOT NULL,
    "ipAddress" TEXT NOT NULL,
    "total_access_by_ip_address" TEXT NOT NULL,
    "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_access_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "IPAddressWithoutUser_pkey" PRIMARY KEY ("id")
);
