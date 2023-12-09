import { Injectable } from '@nestjs/common';
import { CreateFedexProviderDto } from './dto/create-fedex-provider.dto';
import { UpdateFedexProviderDto } from './dto/update-fedex-provider.dto';

@Injectable()
export class FedexProviderService {
  create(createFedexProviderDto: CreateFedexProviderDto) {
    return 'This action adds a new fedexProvider';
  }

  findAll() {
    return `This action returns all fedexProvider`;
  }

  findOne(id: number) {
    return `This action returns a #${id} fedexProvider`;
  }

  update(id: number, updateFedexProviderDto: UpdateFedexProviderDto) {
    return `This action updates a #${id} fedexProvider`;
  }

  remove(id: number) {
    return `This action removes a #${id} fedexProvider`;
  }
}
