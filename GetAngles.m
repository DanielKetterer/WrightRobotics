function [degrees radians] = GetAngles()
 REF_POS= [2041,1009,3063,2055];    % Reference 0 position wrt initial
 %motor coordinates
 
    POS = RawPosition();
    POS = mod(POS-REF_POS,4096); % coordinate shift REF_POS to origin
    degrees = .088*POS;
    radians = (2*pi)*degrees/360;
end
