       implicit real*8 (a-h, o-z)
       common x, y, xant, yant, GMs
       pi = 4.0d0 * datan(1.0d0)
       GMs = 4.0d0 * (pi**2.0d0)
       dt = 0.01d0
       tf = 1.0d0
       t = 0.0d0
       v0x = 2.0d0 * pi
       v0y = 0.0d0
       open(file='posicao', unit=7)
       xant = 0.0d0
       yant = 1.0d0
       y = yant + (v0y*dt)
       x = xant + (v0x*dt)
       
       
       
       
       do while (t.lt.tf)
         r = sqrt((x**2.0d0)+(y**2.0d0))**3.0d0
         xp = (2.0d0*x)-xant+((-1.0d0)*((GMs*x)/(r))*(dt**2.0d0))
         yp = (2.0d0*y)-yant+((-1.0d0)*((GMs*y)/(r))*(dt**2.0d0))
         yant = y
         xant = x
         y = yp
         x = xp
         write(7,*) x, y
         t = t + dt
       end do

       end
