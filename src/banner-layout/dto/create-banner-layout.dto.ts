import { IsNotEmpty, IsString } from "class-validator";

export class CreateBannerLayoutDto {
  @IsNotEmpty()
  @IsString()
  title: string;
  
  @IsNotEmpty()
  @IsString()
  label: string;

  @IsNotEmpty()
  @IsString()
  image_path: string;
}
