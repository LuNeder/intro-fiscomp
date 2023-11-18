       program a
       implicit real*8 (a-h, o-z)
       g = 9.8d0
       al = 9.8d0
       am = 1.0d0

       tmax = 80.0d0
       t = 0.0d0
       dt = 0.01d0

       omega = 0.0d0
       theta = 0.0d0
       pi = 4.0d0*datan(1.0d0)

       open(unit=7, file="theta")
       open(unit=9, file="energia")

       do while (t.lt.tmax)
         t = t + dt
         thetz = theta
         theta = theta + (omega * dt)
         omega = omega - ((g/al)*thetz*dt)
         e =  l * am * ((((omega**2)*l)/2.0d0) + (g*(1-dcos(theta))))

         if(abs(theta).ge.2.0d0*pi) then
           write(7,*) t,mod(theta,2.0d0*pi)
         else
           write(7,*) t,theta
         end if

         write(9,*) t, e

       end do

       close(9)
       close(7)
       
       end program
       