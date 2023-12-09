import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { join } from 'path';
import { ServeStaticModule } from '@nestjs/serve-static';
import * as express from 'express';
import * as requestIp from 'request-ip';

async function bootstrap() {
  const app = await NestFactory.create(AppModule, { cors: true });
  app.use('/uploads', express.static('uploads'));
  app.use(requestIp.mw());
  await app.listen(3000);
}
bootstrap();
