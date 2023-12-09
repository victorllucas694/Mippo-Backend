-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "createDateTime" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "lastChangedDateTime" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "computers_properties" (
    "id" SERIAL NOT NULL,
    "Codigo_do_produto" TEXT NOT NULL,
    "Categoria_do_produto" TEXT NOT NULL,
    "Computer_Id" INTEGER NOT NULL,

    CONSTRAINT "computers_properties_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "computer_large_image" (
    "id" SERIAL NOT NULL,
    "LargeImage" TEXT NOT NULL,
    "Computer_Id" INTEGER NOT NULL,
    "Codigo_das_imagens" TEXT NOT NULL,

    CONSTRAINT "computer_large_image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "computers_side_images" (
    "id" SERIAL NOT NULL,
    "firstImage" TEXT NOT NULL,
    "secondImage" TEXT NOT NULL,
    "thirdImage" TEXT NOT NULL,
    "Codigo_das_imagens" TEXT NOT NULL,
    "fourthImage" TEXT NOT NULL,
    "Computer_Id" INTEGER NOT NULL,

    CONSTRAINT "computers_side_images_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Suppliers" (
    "id" SERIAL NOT NULL,
    "Name" TEXT NOT NULL,
    "Phone" TEXT NOT NULL,
    "NIF" TEXT NOT NULL,
    "ShippingMethod" TEXT NOT NULL,
    "BankAccount" TEXT NOT NULL,

    CONSTRAINT "Suppliers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "drop_packages" (
    "id" SERIAL NOT NULL,
    "product_name" TEXT NOT NULL,
    "min_price" TEXT NOT NULL,
    "model_product" TEXT NOT NULL,
    "drop_code" TEXT NOT NULL,
    "drop_description" TEXT NOT NULL,
    "drop_categories" TEXT NOT NULL,
    "drop_products_state" TEXT NOT NULL,
    "drop_seller" TEXT NOT NULL,
    "drop_brand" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "supplierId" INTEGER NOT NULL,

    CONSTRAINT "drop_packages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Computers" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Formato" TEXT NOT NULL,
    "Marca_do_processador" TEXT NOT NULL,
    "Tipo_de_processador" TEXT NOT NULL,
    "Velocidade_do_processador" TEXT NOT NULL,
    "Tipo_de_soquete_do_processador" TEXT NOT NULL,
    "Numero_de_processadores" TEXT NOT NULL,
    "Tamanho_da_memoria" TEXT NOT NULL,
    "Tecnologia_da_memoria" TEXT NOT NULL,
    "Tipo_de_Memoria" TEXT NOT NULL,
    "Tamanho_do_HD" TEXT NOT NULL,
    "Tecnologia_do_HD" TEXT NOT NULL,
    "Interface_do_HD" TEXT NOT NULL,
    "Marca_do_chipset_de_video" TEXT NOT NULL,
    "Descricao_da_placa_de_video" TEXT NOT NULL,
    "Tipo_de_conexao" TEXT NOT NULL,
    "Tecnologia_de_conexao" TEXT NOT NULL,
    "Plataforma_de_hardware" TEXT NOT NULL,
    "Sistema_operacional" TEXT NOT NULL,
    "Peso_do_produto" TEXT NOT NULL,
    "Dimensoes_da_embalagem" TEXT NOT NULL,
    "Codigo" TEXT NOT NULL,
    "Quantidade_em_estoque" INTEGER NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,

    CONSTRAINT "Computers_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Suppliers_id_key" ON "Suppliers"("id");

-- CreateIndex
CREATE UNIQUE INDEX "drop_packages_id_key" ON "drop_packages"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Computers_id_key" ON "Computers"("id");

-- AddForeignKey
ALTER TABLE "computers_properties" ADD CONSTRAINT "computers_properties_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "computer_large_image" ADD CONSTRAINT "computer_large_image_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "computers_side_images" ADD CONSTRAINT "computers_side_images_Computer_Id_fkey" FOREIGN KEY ("Computer_Id") REFERENCES "Computers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "drop_packages" ADD CONSTRAINT "drop_packages_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "drop_packages" ADD CONSTRAINT "drop_packages_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES "Suppliers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Computers" ADD CONSTRAINT "Computers_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
