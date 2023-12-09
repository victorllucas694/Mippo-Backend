import { Injectable, CanActivate, ExecutionContext } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private jwtService: JwtService) { }

  canActivate(context: ExecutionContext): boolean {
    const request = context.switchToHttp().getRequest();

    try {
      const token = request.headers.authorization.split(' ')[1];
      const decoded = this.jwtService.verify(token);

      request.user = decoded;
      
      return true;
    } catch (error) {
      return false;
    }
  }
}

