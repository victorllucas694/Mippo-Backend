import { Module } from '@nestjs/common';
import { FedexProviderService } from './fedex-provider.service';
import { FedexProviderController } from './fedex-provider.controller';

@Module({
  controllers: [FedexProviderController],
  providers: [FedexProviderService],
})
export class FedexProviderModule {}
