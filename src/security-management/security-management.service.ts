import { Injectable } from '@nestjs/common';
import { CreateSecurityManagementDto } from './dto/create-security-management.dto';
import { UpdateSecurityManagementDto } from './dto/update-security-management.dto';
import axios from 'axios';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class SecurityManagementService {
  constructor(private prisma: PrismaService) {}

  async saveInformationWithUserPermission(
    ipAddressUserLayout: string,
    allowed: string,
  ) {
    if (allowed === 'CookiesAllowed') {
      try {
        const saveBasicUserInfoBySecurity =
          await this.prisma.iPAddressWithoutUser.create({
            data: {
              ipAddress: ipAddressUserLayout,
              total_access_by_ip_address: '1',
            },
          });

        const response = await axios.get(
          `https://ipinfo.io/${ipAddressUserLayout}`,
        );
        console.log(response);

        const saveAdvancedUserInfoBySecurity =
          await this.prisma.iPAddressWithUserPermission.create({
            data: {
              city: response.data.city,
              country: response.data.country,
              hostname: response.data.hostname,
              postal: response.data.postal,
              region: response.data.region,
              total_access_by_ip_address: '1',
              ip_address_id: saveBasicUserInfoBySecurity.id,
              ipAddress: ipAddressUserLayout,
            },
          });

        console.log(saveAdvancedUserInfoBySecurity);

        return {
          saveBasicUserInfoBySecurity,
          saveAdvancedUserInfoBySecurity,
        };
      } catch (err) {
        console.log(err);
      }
    } else {
      console.log('rerer');
    }
    if (allowed === 'CookiesNotAllowed') {
      try {
        const saveBasicUserInfoBySecurity =
          await this.prisma.iPAddressWithoutUser.create({
            data: {
              ipAddress: ipAddressUserLayout,
              total_access_by_ip_address: '1',
            },
          });

        return {
          saveBasicUserInfoBySecurity,
        };
      } catch (err) {
        console.log(err);
      }
    }
  }

  async getTotalVisits(id: number) {
    try {
      const trustedQueryUser = await this.prisma.user.findUniqueOrThrow({
        where: {
          id: id,
        },
      });

      if (trustedQueryUser.admin === 'true') {
        const getAllAddress =
          await this.prisma.iPAddressWithUserPermission.findMany({});
        return {
          success: getAllAddress.length,
        };
      }
    } catch (err) {
      return {
        error: 'Not Allowed',
      };
    }
  }

  async findIpAddressBySecurityCheck(ipAddressBySearch: string) {
    try {
      const findIpAddressToSecuritycheck =
        await this.prisma.iPAddressWithoutUser.findMany({
          where: {
            ipAddress: ipAddressBySearch,
          },
        });

      const advancedFindIpAddressToSecuritycheck =
        await this.prisma.iPAddressWithUserPermission.findMany({
          where: {
            ipAddress: ipAddressBySearch,
          },
        });

      if (findIpAddressToSecuritycheck) {
        return {
          Basic: findIpAddressToSecuritycheck,
          Advanced: advancedFindIpAddressToSecuritycheck,
        };
      } else {
        return {
          error: 'Address not found',
        };
      }
    } catch (err) {
      return {
        error: '404',
      };
    }
  }

  update(id: number, updateSecurityManagementDto: UpdateSecurityManagementDto) {
    return `This action updates a #${id} securityManagement`;
  }

  remove(id: number) {
    return `This action removes a #${id} securityManagement`;
  }
}
