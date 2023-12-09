import { Controller, Get, Post, Body, Patch, Param, Delete, UseGuards, Request } from '@nestjs/common';
import { AuthenticateService } from './authenticate.service';
import { CreateAuthenticateDto } from './dto/create-authenticate.dto';
import { UpdateAuthenticateDto } from './dto/update-authenticate.dto';
import { AuthGuard } from './jwt-auth.guard';

@Controller('authenticate')
export class AuthenticateController {
  constructor(private readonly authenticateService: AuthenticateService) { }

  @Post('common-user')
  authenticateCommonUser(@Body() createAuthenticateDto: CreateAuthenticateDto) {
    return this.authenticateService.validateUser(createAuthenticateDto);
  }

  @UseGuards(AuthGuard)
  @Get('token-verify')
  getTokenForValidateContent(@Request() req) {
    return req.user;
  }
}
