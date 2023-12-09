import { PartialType } from '@nestjs/swagger';
import { CreateRenderImageDto } from './create-render-image.dto';

export class UpdateRenderImageDto extends PartialType(CreateRenderImageDto) {}
