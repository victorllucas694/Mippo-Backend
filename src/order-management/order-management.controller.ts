import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
} from '@nestjs/common';
import { OrderManagementService } from './order-management.service';
import { CreateOrderManagementDto } from './dto/create-order-management.dto';
import { UpdateOrderManagementDto } from './dto/update-order-management.dto';
import { AuthGuard } from 'src/authenticate/jwt-auth.guard';
interface order {
  id: number;
  id_pedido: number;
  categoria_pedido: string;
  codigo_do_pedido: string;
  User_Id: number;
}

interface user {
  id: number;
  name: string;
  last_name: string;
  email: string;
  password: string;
  admin: string;
  phone: string;
  create_date_time: Date;
  last_changed_date_time: Date;
}

interface IRelationTicket {
  order: order;
  user: user;
}

@Controller('order-management')
export class OrderManagementController {
  constructor(
    private readonly orderManagementService: OrderManagementService,
  ) {}

  @UseGuards(AuthGuard)
  @Post('add/new/order/:id/:category')
  addOrders(
    @Body() createOrderManagementDto: CreateOrderManagementDto,
    @Param('category') category: string,
    @Param('id') id: string,
  ) {
    return this.orderManagementService.addNewOrder(
      createOrderManagementDto,
      id,
      category,
    );
  }

  @UseGuards(AuthGuard)
  @Get('get/all/orders/:id')
  findAll(@Param('id') id: string): Promise<IRelationTicket[]> {
    return this.orderManagementService.findAllOrders(id);
  }

  @UseGuards(AuthGuard)
  @Get('order-management/get/all/user/orders/:id')
  getTotalAmount(@Param('id') id: string): Promise<IRelationTicket[]> {
    return this.orderManagementService.findTotalPriceByShippingCart(+id);
  }

  @UseGuards(AuthGuard)
  @Get('get-all-orders/:id')
  GetOrderById(@Param('id') id: string) {
    return this.orderManagementService.getOrdersProducts(+id);
  }

  @UseGuards(AuthGuard)
  @Get('get/alert/total/stock/:id')
  findProductsWithLowerStock(@Param('id') id: string) {
    return this.orderManagementService.findProductsWithLowerStock(+id);
  }


  @UseGuards(AuthGuard)
  @Get('get/all/user/orders/:id')
  findOrderProductsData(@Param('id') id: string) {
    return this.orderManagementService.findUserOrder(+id);
  }

  @UseGuards(AuthGuard)
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.orderManagementService.findOne(+id);
  }

  @UseGuards(AuthGuard)
  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateOrderManagementDto: UpdateOrderManagementDto,
  ) {
    return this.orderManagementService.update(+id, updateOrderManagementDto);
  }

  @UseGuards(AuthGuard)
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.orderManagementService.remove(+id);
  }
}
