       implicit real*8 (a-h, o-z)
       g = 9.8d0
       al = 9.8d0
       am = 1.0d0

       tmax = 80.0d0
       t = 0.0d0
       dt = 0.04d0

       pi = 4.0d0*datan(1.0d0)
       omega = 0.0d0
       theta = pi/6.0d0
       gamma = 0.5d0
       OMEGAM = 2.0d0/3.0d0  
     
       F0 = 0.0d0
       
       open(unit=7, file="theta-0")
       open(unit=9, file="omega-0")

       do while (t.lt.tmax)
         t = t + dt
         theta = theta + (omega * dt)
         omega = omega - (g/al)*dsin(theta)*dt - gamma*omega*dt + F0
     &*dsin(OMEGAM*t)*dt

         write(9,*) t,omega
         if(abs(theta).ge.2.0d0*pi) then
           write(7,*) t,mod(theta,2.0d0*pi)
         else
           write(7,*) t,theta
         end if
       end do

       close(9)
       close(7)
       end
       