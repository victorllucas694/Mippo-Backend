-- CreateTable
CREATE TABLE "Employers" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "Employee_gender" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "admin" TEXT NOT NULL,
    "numberJob" TEXT NOT NULL,
    "position" TEXT NOT NULL,
    "employee_code" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "RG" TEXT NOT NULL,
    "CPF" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "employee_supervisor" TEXT NOT NULL,
    "bank_account" TEXT NOT NULL,
    "agency" TEXT NOT NULL,
    "Bank" TEXT NOT NULL,
    "employer_date" TEXT NOT NULL,
    "workload" TEXT NOT NULL,
    "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Employers_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Employers_email_key" ON "Employers"("email");
