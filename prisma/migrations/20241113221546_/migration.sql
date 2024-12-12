-- CreateTable
CREATE TABLE `bannerLayoutdb` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `label` VARCHAR(191) NOT NULL,
    `image_path` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `purchaseUserData` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `details` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `zip_code` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `paymentDataLayout` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `card_holder` VARCHAR(191) NOT NULL,
    `card_number` VARCHAR(191) NOT NULL,
    `expiration_date` VARCHAR(191) NOT NULL,
    `CVV` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProductCommentaries` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `commentary` VARCHAR(191) NOT NULL,
    `product_category` VARCHAR(191) NOT NULL,
    `products_id` INTEGER NOT NULL,
    `User_Id` INTEGER NOT NULL,
    `date_commentary` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `create_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_changed_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Employers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `Employee_gender` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `numberJob` VARCHAR(191) NOT NULL,
    `position` VARCHAR(191) NOT NULL,
    `employee_code` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `RG` VARCHAR(191) NOT NULL,
    `CPF` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `employee_supervisor` VARCHAR(191) NOT NULL,
    `bank_account` VARCHAR(191) NOT NULL,
    `agency` VARCHAR(191) NOT NULL,
    `Bank` VARCHAR(191) NOT NULL,
    `employer_date` VARCHAR(191) NOT NULL,
    `workload` VARCHAR(191) NOT NULL,
    `create_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_changed_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Employers_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `admin` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `disable` VARCHAR(191) NOT NULL,
    `create_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_changed_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `IPAddressWithoutUser` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `ipAddress` VARCHAR(191) NOT NULL,
    `total_access_by_ip_address` VARCHAR(191) NOT NULL,
    `create_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_access_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_changed_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `IPAddressWithUserPermission` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `ipAddress` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `region` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,
    `postal` VARCHAR(191) NOT NULL,
    `hostname` VARCHAR(191) NOT NULL,
    `total_access_by_ip_address` VARCHAR(191) NOT NULL,
    `create_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_access_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_changed_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `ip_address_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `UserAddress` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `address` VARCHAR(191) NOT NULL,
    `address_other` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `CEP` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_order` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_pedido` INTEGER NOT NULL,
    `categoria_pedido` VARCHAR(191) NOT NULL,
    `codigo_do_pedido` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_properties` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `codigo_do_produto` VARCHAR(191) NOT NULL,
    `categoria_do_produto` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `large_image` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `large_image` VARCHAR(191) NOT NULL,
    `codigo_das_imagens` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `side_images` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_image` VARCHAR(191) NOT NULL,
    `second_image` VARCHAR(191) NOT NULL,
    `third_image` VARCHAR(191) NOT NULL,
    `image_code` VARCHAR(191) NOT NULL,
    `fourth_image` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Suppliers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `NIF` VARCHAR(191) NOT NULL,
    `shipping_method` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,

    UNIQUE INDEX `Suppliers_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SuppliersSecretInformation` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `bank_account_holder` VARCHAR(191) NOT NULL,
    `supplier_name` VARCHAR(191) NOT NULL,
    `bank_agency` VARCHAR(191) NOT NULL,
    `bank_name` VARCHAR(191) NOT NULL,
    `bank_account_number` VARCHAR(191) NOT NULL,
    `road` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,
    `CEP` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `SuppliersSecretInformation_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `drop_packages` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(191) NOT NULL,
    `min_price` VARCHAR(191) NOT NULL,
    `model_product` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `categories` VARCHAR(191) NOT NULL,
    `products_state` VARCHAR(191) NOT NULL,
    `supplier_name` VARCHAR(191) NOT NULL,
    `brand` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,

    UNIQUE INDEX `drop_packages_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `address_form` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user_id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `details` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `postal_code` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `address_form_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Computers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Marca` VARCHAR(191) NOT NULL,
    `Fabricante` VARCHAR(191) NOT NULL,
    `Formato` VARCHAR(191) NOT NULL,
    `Marca_do_processador` VARCHAR(191) NOT NULL,
    `Tipo_de_processador` VARCHAR(191) NOT NULL,
    `Velocidade_do_processador` VARCHAR(191) NOT NULL,
    `Tipo_de_soquete_do_processador` VARCHAR(191) NOT NULL,
    `Numero_de_processadores` VARCHAR(191) NOT NULL,
    `Tamanho_da_memoria` VARCHAR(191) NOT NULL,
    `Tecnologia_da_memoria` VARCHAR(191) NOT NULL,
    `Tipo_de_Memoria` VARCHAR(191) NOT NULL,
    `Tamanho_do_HD` VARCHAR(191) NOT NULL,
    `Tecnologia_do_HD` VARCHAR(191) NOT NULL,
    `Interface_do_HD` VARCHAR(191) NOT NULL,
    `Marca_do_chipset_de_video` VARCHAR(191) NOT NULL,
    `Descricao_da_placa_de_video` VARCHAR(191) NOT NULL,
    `Tipo_de_conexao` VARCHAR(191) NOT NULL,
    `Tecnologia_de_conexao` VARCHAR(191) NOT NULL,
    `Plataforma_de_hardware` VARCHAR(191) NOT NULL,
    `Sistema_operacional` VARCHAR(191) NOT NULL,
    `Peso_do_produto` VARCHAR(191) NOT NULL,
    `Dimensoes_da_embalagem` VARCHAR(191) NOT NULL,
    `Codigo` VARCHAR(191) NOT NULL,
    `Fornecedor` VARCHAR(191) NOT NULL,
    `Quantidade_em_estoque` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,
    `Valor_a_vista` VARCHAR(191) NOT NULL,
    `Valor_a_prazo` VARCHAR(191) NOT NULL,
    `Codigo_das_Imagens` VARCHAR(191) NOT NULL,
    `Dimensoes_do_pacote` VARCHAR(191) NOT NULL,
    `Descricao_final_sobre_o_produto` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Computers_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notebooks` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Marca` VARCHAR(191) NOT NULL,
    `Fabricante` VARCHAR(191) NOT NULL,
    `Tamanho_da_tela` VARCHAR(191) NOT NULL,
    `Marca_do_processador` VARCHAR(191) NOT NULL,
    `Tipo_de_processador` VARCHAR(191) NOT NULL,
    `Velocidade_do_processador` VARCHAR(191) NOT NULL,
    `Fornecedor` VARCHAR(191) NOT NULL,
    `Tipo_de_soquete_do_processador` VARCHAR(191) NOT NULL,
    `Numero_de_processadores` VARCHAR(191) NOT NULL,
    `Tamanho_da_memoria` VARCHAR(191) NOT NULL,
    `Tecnologia_da_memoria` VARCHAR(191) NOT NULL,
    `Tipo_de_Memoria` VARCHAR(191) NOT NULL,
    `Tamanho_do_HD` VARCHAR(191) NOT NULL,
    `Tecnologia_do_HD` VARCHAR(191) NOT NULL,
    `Peso_do_produto` VARCHAR(191) NOT NULL,
    `Interface_do_HD` VARCHAR(191) NOT NULL,
    `Marca_do_chipset_de_video` VARCHAR(191) NOT NULL,
    `Descricao_da_placa_de_video` VARCHAR(191) NOT NULL,
    `Plataforma_de_hardware` VARCHAR(191) NOT NULL,
    `Sistema_operacional` VARCHAR(191) NOT NULL,
    `Tipo_de_conexao` VARCHAR(191) NOT NULL,
    `Quantidade_em_estoque` VARCHAR(191) NOT NULL,
    `Bateria_interna` VARCHAR(191) NOT NULL,
    `Teclado_e_touchpad` VARCHAR(191) NOT NULL,
    `Codigo` VARCHAR(191) NOT NULL,
    `Conectividade_sem_fio` VARCHAR(191) NOT NULL,
    `Tela_sensivel_ao_toque` VARCHAR(191) NOT NULL,
    `Webcam_embutida` VARCHAR(191) NOT NULL,
    `Audio_integrado` VARCHAR(191) NOT NULL,
    `Leitor_de_cartoes_de_memoria` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,
    `Valor_a_vista` VARCHAR(191) NOT NULL,
    `Valor_a_prazo` VARCHAR(191) NOT NULL,
    `Codigo_das_Imagens` VARCHAR(191) NOT NULL,
    `Dimensoes_do_pacote` VARCHAR(191) NOT NULL,
    `Descricao_final_sobre_o_produto` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `notebooks_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acessorios` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Marca` VARCHAR(191) NOT NULL,
    `Fabricante` VARCHAR(191) NOT NULL,
    `Fornecedor` VARCHAR(191) NOT NULL,
    `montagem_necessaria` VARCHAR(191) NOT NULL,
    `bateria_pilha` VARCHAR(191) NOT NULL,
    `bateria_inclusa` VARCHAR(191) NOT NULL,
    `tipo_da_bateria` VARCHAR(191) NOT NULL,
    `Tipo_de_soquete_do_processador` VARCHAR(191) NOT NULL,
    `Peso_do_produto` VARCHAR(191) NOT NULL,
    `Dimensoes_da_embalagem` VARCHAR(191) NOT NULL,
    `Codigo` VARCHAR(191) NOT NULL,
    `Quantidade_em_estoque` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,
    `Valor_a_vista` VARCHAR(191) NOT NULL,
    `Valor_a_prazo` VARCHAR(191) NOT NULL,
    `Codigo_das_Imagens` VARCHAR(191) NOT NULL,
    `Dimensoes_do_pacote` VARCHAR(191) NOT NULL,
    `Descricao_final_sobre_o_produto` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `acessorios_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `hardware` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `Marca` VARCHAR(191) NOT NULL,
    `Fabricante` VARCHAR(191) NOT NULL,
    `Arquitetura` VARCHAR(191) NOT NULL,
    `Velocidade_do_Clock` VARCHAR(191) NOT NULL,
    `Nucleos_e_Threads` VARCHAR(191) NOT NULL,
    `Capacidade_de_Armazenamento` VARCHAR(191) NOT NULL,
    `Tamanho_da_Memoria_RAM` VARCHAR(191) NOT NULL,
    `Conectividade` VARCHAR(191) NOT NULL,
    `Tamanho_Fisico` VARCHAR(191) NOT NULL,
    `Quantidade_em_estoque` VARCHAR(191) NOT NULL,
    `Peso_do_produto` VARCHAR(191) NOT NULL,
    `Consumo_de_Energia` VARCHAR(191) NOT NULL,
    `Compatibilidade` VARCHAR(191) NOT NULL,
    `Interfaces` VARCHAR(191) NOT NULL,
    `Drivers` VARCHAR(191) NOT NULL,
    `Fornecedor` VARCHAR(191) NOT NULL,
    `Outras_Caracteristicas` VARCHAR(191) NOT NULL,
    `User_Id` INTEGER NOT NULL,
    `Valor_a_vista` VARCHAR(191) NOT NULL,
    `Codigo` VARCHAR(191) NOT NULL,
    `Valor_a_prazo` VARCHAR(191) NOT NULL,
    `Codigo_das_Imagens` VARCHAR(191) NOT NULL,
    `Dimensoes_do_pacote` VARCHAR(191) NOT NULL,
    `Descricao_final_sobre_o_produto` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `hardware_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `CardholderName` VARCHAR(191) NOT NULL,
    `cardNumber` VARCHAR(191) NOT NULL,
    `ExpirationMonth` VARCHAR(191) NOT NULL,
    `ExpirationYear` VARCHAR(191) NOT NULL,
    `CVC` VARCHAR(191) NOT NULL,
    `OfferCode` VARCHAR(191) NOT NULL,
    `ipAddress` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `region` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,
    `postal` VARCHAR(191) NOT NULL,
    `hostname` VARCHAR(191) NOT NULL,
    `total_access_by_ip_address` VARCHAR(191) NOT NULL,
    `create_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_access_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `last_changed_date_time` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `ip_address_id` INTEGER NOT NULL,

    UNIQUE INDEX `payment_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `ProductCommentaries` ADD CONSTRAINT `ProductCommentaries_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `IPAddressWithUserPermission` ADD CONSTRAINT `IPAddressWithUserPermission_ip_address_id_fkey` FOREIGN KEY (`ip_address_id`) REFERENCES `IPAddressWithoutUser`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `UserAddress` ADD CONSTRAINT `UserAddress_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_order` ADD CONSTRAINT `product_order_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Suppliers` ADD CONSTRAINT `Suppliers_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SuppliersSecretInformation` ADD CONSTRAINT `SuppliersSecretInformation_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `drop_packages` ADD CONSTRAINT `drop_packages_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Computers` ADD CONSTRAINT `Computers_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `notebooks` ADD CONSTRAINT `notebooks_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `acessorios` ADD CONSTRAINT `acessorios_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `hardware` ADD CONSTRAINT `hardware_User_Id_fkey` FOREIGN KEY (`User_Id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `payment` ADD CONSTRAINT `payment_ip_address_id_fkey` FOREIGN KEY (`ip_address_id`) REFERENCES `IPAddressWithoutUser`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
