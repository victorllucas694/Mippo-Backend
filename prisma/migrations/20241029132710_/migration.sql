-- CreateTable
CREATE TABLE "bannerLayoutdb" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "label" TEXT NOT NULL,
    "image_path" TEXT NOT NULL,

    CONSTRAINT "bannerLayoutdb_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "purchaseUserData" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "details" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "zip_code" TEXT NOT NULL,
    "country" TEXT NOT NULL,

    CONSTRAINT "purchaseUserData_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "paymentDataLayout" (
    "id" SERIAL NOT NULL,
    "card_holder" TEXT NOT NULL,
    "card_number" TEXT NOT NULL,
    "expiration_date" TEXT NOT NULL,
    "CVV" TEXT NOT NULL,

    CONSTRAINT "paymentDataLayout_pkey" PRIMARY KEY ("id")
);

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

-- CreateTable
CREATE TABLE "Employers" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "Employee_gender" TEXT NOT NULL,
    "password" TEXT NOT NULL,
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

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "admin" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "disable" TEXT NOT NULL,
    "create_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "last_changed_date_time" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

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

-- CreateTable
CREATE TABLE "IPAddressWithUserPermission" (
    "id" SERIAL NOT NULL,
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

    CONSTRAINT "IPAddressWithUserPermission_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserAddress" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "address_other" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "CEP" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,

    CONSTRAINT "UserAddress_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_order" (
    "id" SERIAL NOT NULL,
    "id_pedido" INTEGER NOT NULL,
    "categoria_pedido" TEXT NOT NULL,
    "codigo_do_pedido" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,

    CONSTRAINT "product_order_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "product_properties" (
    "id" SERIAL NOT NULL,
    "codigo_do_produto" TEXT NOT NULL,
    "categoria_do_produto" TEXT NOT NULL,

    CONSTRAINT "product_properties_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "large_image" (
    "id" SERIAL NOT NULL,
    "large_image" TEXT NOT NULL,
    "codigo_das_imagens" TEXT NOT NULL,

    CONSTRAINT "large_image_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "side_images" (
    "id" SERIAL NOT NULL,
    "first_image" TEXT NOT NULL,
    "second_image" TEXT NOT NULL,
    "third_image" TEXT NOT NULL,
    "image_code" TEXT NOT NULL,
    "fourth_image" TEXT NOT NULL,

    CONSTRAINT "side_images_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Suppliers" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "NIF" TEXT NOT NULL,
    "shipping_method" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,

    CONSTRAINT "Suppliers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SuppliersSecretInformation" (
    "id" SERIAL NOT NULL,
    "bank_account_holder" TEXT NOT NULL,
    "supplier_name" TEXT NOT NULL,
    "bank_agency" TEXT NOT NULL,
    "bank_name" TEXT NOT NULL,
    "bank_account_number" TEXT NOT NULL,
    "road" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "CEP" TEXT NOT NULL,

    CONSTRAINT "SuppliersSecretInformation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "drop_packages" (
    "id" SERIAL NOT NULL,
    "product_name" TEXT NOT NULL,
    "min_price" TEXT NOT NULL,
    "model_product" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "categories" TEXT NOT NULL,
    "products_state" TEXT NOT NULL,
    "supplier_name" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,

    CONSTRAINT "drop_packages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "address_form" (
    "id" SERIAL NOT NULL,
    "user_id" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "details" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "postal_code" TEXT NOT NULL,
    "country" TEXT NOT NULL,

    CONSTRAINT "address_form_pkey" PRIMARY KEY ("id")
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
    "Fornecedor" TEXT NOT NULL,
    "Quantidade_em_estoque" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "Computers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "notebooks" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Tamanho_da_tela" TEXT NOT NULL,
    "Marca_do_processador" TEXT NOT NULL,
    "Tipo_de_processador" TEXT NOT NULL,
    "Velocidade_do_processador" TEXT NOT NULL,
    "Fornecedor" TEXT NOT NULL,
    "Tipo_de_soquete_do_processador" TEXT NOT NULL,
    "Numero_de_processadores" TEXT NOT NULL,
    "Tamanho_da_memoria" TEXT NOT NULL,
    "Tecnologia_da_memoria" TEXT NOT NULL,
    "Tipo_de_Memoria" TEXT NOT NULL,
    "Tamanho_do_HD" TEXT NOT NULL,
    "Tecnologia_do_HD" TEXT NOT NULL,
    "Peso_do_produto" TEXT NOT NULL,
    "Interface_do_HD" TEXT NOT NULL,
    "Marca_do_chipset_de_video" TEXT NOT NULL,
    "Descricao_da_placa_de_video" TEXT NOT NULL,
    "Plataforma_de_hardware" TEXT NOT NULL,
    "Sistema_operacional" TEXT NOT NULL,
    "Tipo_de_conexao" TEXT NOT NULL,
    "Quantidade_em_estoque" TEXT NOT NULL,
    "Bateria_interna" TEXT NOT NULL,
    "Teclado_e_touchpad" TEXT NOT NULL,
    "Codigo" TEXT NOT NULL,
    "Conectividade_sem_fio" TEXT NOT NULL,
    "Tela_sensivel_ao_toque" TEXT NOT NULL,
    "Webcam_embutida" TEXT NOT NULL,
    "Audio_integrado" TEXT NOT NULL,
    "Leitor_de_cartoes_de_memoria" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "notebooks_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "acessorios" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Fornecedor" TEXT NOT NULL,
    "montagem_necessaria" TEXT NOT NULL,
    "bateria_pilha" TEXT NOT NULL,
    "bateria_inclusa" TEXT NOT NULL,
    "tipo_da_bateria" TEXT NOT NULL,
    "Tipo_de_soquete_do_processador" TEXT NOT NULL,
    "Peso_do_produto" TEXT NOT NULL,
    "Dimensoes_da_embalagem" TEXT NOT NULL,
    "Codigo" TEXT NOT NULL,
    "Quantidade_em_estoque" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "acessorios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "hardware" (
    "id" SERIAL NOT NULL,
    "Marca" TEXT NOT NULL,
    "Fabricante" TEXT NOT NULL,
    "Tipo_de_Hardware" TEXT NOT NULL,
    "Arquitetura" TEXT NOT NULL,
    "Velocidade_do_Clock" TEXT NOT NULL,
    "Nucleos_e_Threads" TEXT NOT NULL,
    "Capacidade_de_Armazenamento" TEXT NOT NULL,
    "Tamanho_da_Memoria_RAM" TEXT NOT NULL,
    "Conectividade" TEXT NOT NULL,
    "Tamanho_Fisico" TEXT NOT NULL,
    "Quantidade_em_estoque" TEXT NOT NULL,
    "Peso_do_produto" TEXT NOT NULL,
    "Consumo_de_Energia" TEXT NOT NULL,
    "Compatibilidade" TEXT NOT NULL,
    "Interfaces" TEXT NOT NULL,
    "Drivers" TEXT NOT NULL,
    "Fornecedor" TEXT NOT NULL,
    "Outras_Caracteristicas" TEXT NOT NULL,
    "User_Id" INTEGER NOT NULL,
    "Valor_a_vista" TEXT NOT NULL,
    "Codigo" TEXT NOT NULL,
    "Valor_a_prazo" TEXT NOT NULL,
    "Codigo_das_Imagens" TEXT NOT NULL,
    "Dimensoes_do_pacote" TEXT NOT NULL,
    "Descricao_final_sobre_o_produto" TEXT NOT NULL,

    CONSTRAINT "hardware_pkey" PRIMARY KEY ("id")
);

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
CREATE UNIQUE INDEX "Employers_email_key" ON "Employers"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Suppliers_id_key" ON "Suppliers"("id");

-- CreateIndex
CREATE UNIQUE INDEX "SuppliersSecretInformation_id_key" ON "SuppliersSecretInformation"("id");

-- CreateIndex
CREATE UNIQUE INDEX "drop_packages_id_key" ON "drop_packages"("id");

-- CreateIndex
CREATE UNIQUE INDEX "address_form_id_key" ON "address_form"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Computers_id_key" ON "Computers"("id");

-- CreateIndex
CREATE UNIQUE INDEX "notebooks_id_key" ON "notebooks"("id");

-- CreateIndex
CREATE UNIQUE INDEX "acessorios_id_key" ON "acessorios"("id");

-- CreateIndex
CREATE UNIQUE INDEX "hardware_id_key" ON "hardware"("id");

-- CreateIndex
CREATE UNIQUE INDEX "payment_id_key" ON "payment"("id");

-- AddForeignKey
ALTER TABLE "ProductCommentaries" ADD CONSTRAINT "ProductCommentaries_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "IPAddressWithUserPermission" ADD CONSTRAINT "IPAddressWithUserPermission_ip_address_id_fkey" FOREIGN KEY ("ip_address_id") REFERENCES "IPAddressWithoutUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserAddress" ADD CONSTRAINT "UserAddress_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "product_order" ADD CONSTRAINT "product_order_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Suppliers" ADD CONSTRAINT "Suppliers_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SuppliersSecretInformation" ADD CONSTRAINT "SuppliersSecretInformation_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "drop_packages" ADD CONSTRAINT "drop_packages_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Computers" ADD CONSTRAINT "Computers_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "notebooks" ADD CONSTRAINT "notebooks_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "acessorios" ADD CONSTRAINT "acessorios_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "hardware" ADD CONSTRAINT "hardware_User_Id_fkey" FOREIGN KEY ("User_Id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "payment" ADD CONSTRAINT "payment_ip_address_id_fkey" FOREIGN KEY ("ip_address_id") REFERENCES "IPAddressWithoutUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
