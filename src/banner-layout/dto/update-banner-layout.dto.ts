import { PartialType } from '@nestjs/swagger';
import { CreateBannerLayoutDto } from './create-banner-layout.dto';

export class UpdateBannerLayoutDto extends PartialType(CreateBannerLayoutDto) {}
