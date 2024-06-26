import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Req,
  createParamDecorator,
} from '@nestjs/common';
import { SecurityManagementService } from './security-management.service';
import { CreateSecurityManagementDto } from './dto/create-security-management.dto';
import { UpdateSecurityManagementDto } from './dto/update-security-management.dto';
import * as requestIp from 'request-ip';
import axios from 'axios';

@Controller('security-management')
export class SecurityManagementController {
  constructor(
    private readonly securityManagementService: SecurityManagementService,
  ) {}

  @Get('security/check/:address')
  async securityCheckByIpAddress(@Param('address') address: string) {
    return this.securityManagementService.findIpAddressBySecurityCheck(address);
  }

  @Get('/cookies/:allowed')
  async getterUserInformationBySecurityManagement(
    @Param('allowed') allowed: string,
  ) {
    try {
      const response = await axios.get('https://ipinfo.io');
      if (response.status === 200) {
        const data = response.data;
        const ipExtern = data.ip;
        return this.securityManagementService.saveInformationWithUserPermission(
          ipExtern,
          allowed,
        );
      } else {
        throw new Error('Erro ao obter o endereço IP externo');
      }
    } catch (error) {
      throw new Error('Erro ao processar a solicitação');
    }
  }

  @Get('search/all/visits/:id')
  async getTotalVisitsByCountIpAddressAccessData(@Param('id') id: string) {
    return this.securityManagementService.getTotalVisits(
      +id
    );
  }
}
