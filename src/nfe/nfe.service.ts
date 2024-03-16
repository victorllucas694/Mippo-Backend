import { Injectable } from '@nestjs/common';
import { CreateNfeDto } from './dto/create-nfe.dto';
import { UpdateNfeDto } from './dto/update-nfe.dto';

@Injectable()
export class NfeService {
  create(createNfeDto: CreateNfeDto) {
    return 'This action adds a new nfe';
  }

  findAll() {
    return `This action returns all nfe`;
  }

  findOne(id: number) {
    return `This action returns a #${id} nfe`;
  }

  update(id: number, updateNfeDto: UpdateNfeDto) {
    return `This action updates a #${id} nfe`;
  }

  remove(id: number) {
    return `This action removes a #${id} nfe`;
  }
}
