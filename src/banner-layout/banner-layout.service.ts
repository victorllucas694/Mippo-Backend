import { Injectable } from '@nestjs/common';
import { CreateBannerLayoutDto } from './dto/create-banner-layout.dto';
import { UpdateBannerLayoutDto } from './dto/update-banner-layout.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class BannerLayoutService {
  constructor(private prisma: PrismaService) {
    
  }

  create(createBannerLayoutDto: CreateBannerLayoutDto) {
    return 'This action adds a new bannerLayout';
  }

  findAll() {
    return `This action returns all bannerLayout`;
  }

  findOne(id: number) {
    return `This action returns a #${id} bannerLayout`;
  }

  update(id: number, updateBannerLayoutDto: UpdateBannerLayoutDto) {
    return `This action updates a #${id} bannerLayout`;
  }

  remove(id: number) {
    return `This action removes a #${id} bannerLayout`;
  }
}
