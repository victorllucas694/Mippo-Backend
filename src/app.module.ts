import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { RegisterUserModule } from './register-user/register-user.module';
import { AuthenticateModule } from './authenticate/authenticate.module';
import { ProductsManagementModule } from './products-management/products-management.module';
import { SuppliersManagementModule } from './suppliers-management/suppliers-management.module';
import { ProductsManagementWithoutAuthModule } from './products-management-without-auth/products-management-without-auth.module';
import { OrderManagementModule } from './order-management/order-management.module';
import { PaymentShippingCartModule } from './payment-shipping-cart/payment-shipping-cart.module';
import { CommonUsersManagementModule } from './common-users-management/common-users-management.module';
import { RenderImagesModule } from './render-images/render-images.module';
import { UserAddressModule } from './user-address/user-address.module';
import { FedexProviderModule } from './fedex-provider/fedex-provider.module';
import { AdminCustomerManagerModule } from './admin-customer-manager/admin-customer-manager.module';
import { InventaryManagementModule } from './inventary-management/inventary-management.module';
import { SecurityManagementModule } from './security-management/security-management.module';
import { EmployerManagementModule } from './employer-management/employer-management.module';
import { PaymentModule } from './payment/payment.module';
import { NfeModule } from './nfe/nfe.module';
import { BannerLayoutModule } from './banner-layout/banner-layout.module';

@Module({
  imports: [RegisterUserModule, AuthenticateModule, ProductsManagementModule, SuppliersManagementModule, ProductsManagementWithoutAuthModule, OrderManagementModule, PaymentShippingCartModule, CommonUsersManagementModule, RenderImagesModule, UserAddressModule, FedexProviderModule, AdminCustomerManagerModule, InventaryManagementModule, SecurityManagementModule, EmployerManagementModule, PaymentModule, NfeModule, BannerLayoutModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
