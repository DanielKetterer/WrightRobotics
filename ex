Example Function
:
function
LED
sOn()
% Dynamixel Hello World
% Light the LED on ID 1
% Defulat setting
DEFAULT_PORTNUM     =3; 
% COM3 change this if it's different in your machine 
DEFAULT_BAUDNUM     =1; 
% 1Mbps
LED_INDEX = 25; 
pause 
on
% setup the dynamixel API
loadlibrary(
'dynamixel'
,
'dynamixel.h'
);
res = 
calllib(
'dynamixel'
,
'dxl_initialize'
,DE
FAULT_PORTNUM,DEFAULT_BAUDNUM);
if
res == 1 
% successfull connection
for
ID=1:4 
calllib(
'dynamixel'
,
'dxl_write_byte'
,ID,LED_INDEX,1); 
% write 1 to 
the LED memory to turn it on
pause(0.5); 
% uncomment the 
following command to know the status of LEDs 
%LEDs(ID) = calllib('dynamixel','dxl_read_byte',ID,LED_INDEX); 
end
else
disp(
'Failed to open USB2Dynamixel!'
); 
% display this message when the 
connection fails
end
% clean up
calllib(
'dynamixel'
,
'dxl_terminate'
);
unloadlibrary(
'dynamixel'
);
end
