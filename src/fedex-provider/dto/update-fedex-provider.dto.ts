import { PartialType } from '@nestjs/swagger';
import { CreateFedexProviderDto } from './create-fedex-provider.dto';

export class UpdateFedexProviderDto extends PartialType(CreateFedexProviderDto) {}
