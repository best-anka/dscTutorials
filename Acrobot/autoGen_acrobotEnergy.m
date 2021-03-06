function [U,T] = autoGen_acrobotEnergy(q1,q2,dq1,dq2,m1,m2,g,l1,l2)
%AUTOGEN_ACROBOTENERGY
%    [U,T] = AUTOGEN_ACROBOTENERGY(Q1,Q2,DQ1,DQ2,M1,M2,G,L1,L2)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    12-Jun-2015 16:56:48

t2 = cos(q1);
t3 = dq1.^2;
t4 = l1.^2;
t5 = sin(q1);
t6 = cos(q2);
U = -g.*m2.*(l1.*t2+l2.*t6)-g.*l1.*m1.*t2;
if nargout > 1
    t7 = dq1.*l1.*t2+dq2.*l2.*t6;
    t8 = dq2.*l2.*sin(q2)+dq1.*l1.*t5;
    T = m1.*(t2.^2.*t3.*t4+t3.*t4.*t5.^2).*(1.0./2.0)+m2.*(t7.^2+t8.^2).*(1.0./2.0);
end
