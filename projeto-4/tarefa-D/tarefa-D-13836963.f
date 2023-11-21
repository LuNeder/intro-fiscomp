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
       gamma = 0.05d0
       OMEGAM = 2.0d0/3.0d0  

       omega2 = 0.0d0
       theta2 = (pi/6.0d0) +0.001d0
     
       F0 = 0.5d0
       
       open(unit=7, file="005dtheta-05")

       do while (t.lt.tmax)
         t = t + dt
         theta = theta + (omega * dt)
         omega = omega - (g/al)*dsin(theta)*dt - gamma*omega*dt + F0
     &*dsin(OMEGAM*t)*dt

         theta2 = theta2 + (omega2 * dt)
         omega2 = omega2 - (g/al)*dsin(theta2)*dt - gamma*omega2*dt + F0
     &*dsin(OMEGAM*t)*dt

         write(7,*) t,dlog(abs(omega2-omega))
       end do

       close(7)
       end
       