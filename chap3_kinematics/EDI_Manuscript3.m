%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\
%������ת����
syms theta phi psi
%    phi   = x(7);      % roll angle (degrees)   
%    theta = x(8);      % pitch angle (degrees)
%    psi   = x(9);      % yaw angle (degrees)
%�ȣ������� picth  theta
%�ջ���r������� roll  phi
%�ף������yaw  psi
C11=cos(theta)*cos(psi);
C12=sin(phi)*sin(theta)*cos(psi) - cos(phi)*sin(psi);
C13=cos(phi)*sin(theta)*cos(psi) + sin(phi)*sin(psi);

C21=cos(theta)*sin(psi);
C22=sin(phi)*sin(theta)*sin(psi) + cos(phi)*cos(psi);
C23=cos(phi)*sin(theta)*sin(psi) - sin(phi)*cos(psi);

C31=-sin(theta);
C32=sin(phi)*cos(theta);
C33=cos(phi)*cos(theta);

%����ϵ-������ϵ
Cnb=[C11,C12,C13;C21,C22,C23;C31,C32,C33]
%% ������µ��ٶȵ�����ϵ�±任
syms u v w 
P = Cnb*[u v w]'



conj(w)*(sin(phi)*sin(psi) + cos(phi)*cos(psi)*sin(theta)) - conj(v)*(cos(phi)*sin(psi) - cos(psi)*sin(phi)*sin(theta)) + cos(psi)*cos(theta)*conj(u)
 conj(v)*(cos(phi)*cos(psi) + sin(phi)*sin(psi)*sin(theta)) - conj(w)*(cos(psi)*sin(phi) - cos(phi)*sin(psi)*sin(theta)) + cos(theta)*conj(u)*sin(psi)
                                                                        cos(phi)*cos(theta)*conj(w) - conj(u)*sin(theta) + cos(theta)*conj(v)*sin(phi)

