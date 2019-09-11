function [] = SetSpeed(speed)
     calllib('dynamixel','dxl_write_byte',1,32,speed);
end
