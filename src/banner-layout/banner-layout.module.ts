import { Module } from '@nestjs/common';
import { BannerLayoutService } from './banner-layout.service';
import { BannerLayoutController } from './banner-layout.controller';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';

@Module({
  imports: [
    PassportModule,
    PassportModule.register({ defaultStrategy: 'jwt' }),
    JwtModule.register({
      secret: 'qaweqesdqweqweqwqwe',
      signOptions: {
        expiresIn: '1h',
      },
    }),
  ],
  controllers: [BannerLayoutController],
  providers: [BannerLayoutService],
})
export class BannerLayoutModule {}