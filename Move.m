function Move()
    %Light LED1

    % Defulat setting
    DEFAULT_PORTNUM		=5; % COM5
    DEFAULT_BAUDNUM		=1; % 1Mbps

    loadlibrary('dynamixel','dynamixel.h');
   
    res = calllib('dynamixel','dxl_initialize',DEFAULT_PORTNUM,DEFAULT_BAUDNUM);
    

    if res == 1 
% successfull connection
     [d,r] = GetAngles();
%      SetSpeed(30);
%      SetAnglesMotor1(90);

     calllib('dynamixel','dxl_write_word',2,32,30);
     calllib('dynamixel','dxl_write_word',2,30,1050);

     calllib('dynamixel','dxl_write_word',4,32,30);
     calllib('dynamixel','dxl_write_word',4,30,3529);
     
      calllib('dynamixel','dxl_write_word',3,32,30);
     calllib('dynamixel','dxl_write_word',3,30,3098);

     calllib('dynamixel','dxl_write_word',1,32,30);
     calllib('dynamixel','dxl_write_word',1,30,3000);
     
    else
        disp('Failed to open USB2Dynamixel!'); 
% display this message when the connection fails
    end
    calllib('dynamixel','dxl_terminate');
    unloadlibrary('dynamixel');
end
