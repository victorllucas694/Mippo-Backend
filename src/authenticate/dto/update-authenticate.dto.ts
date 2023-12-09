import { PartialType } from '@nestjs/swagger';
import { CreateAuthenticateDto } from './create-authenticate.dto';

export class UpdateAuthenticateDto extends PartialType(CreateAuthenticateDto) {}
