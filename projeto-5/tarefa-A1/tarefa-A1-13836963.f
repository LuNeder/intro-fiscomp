       implicit real*8 (a-h, o-z)
       common x, y, xant, yant, GMs
       dimension pos0plans(9)

       pi = 4.0d0 * datan(1.0d0)
       GMs = 4.0d0 * (pi**2.0d0)
       dt = 0.001d0
       tf = 1.0d0
C      v0x = 2.0d0 * pi Vai ser 2.0d0 * pi / dsqrt(pos0plans(i)) p/ circular
       v0y = 0.0d0
       open(file='posicao', unit=7)
       xant = 0.0d0
       dv = 0.1d0
       dv = 0.1d0

       pos0plans(1) = 0.39d0
       pos0plans(2) = 0.72d0
       pos0plans(3) = 1.0d0
       pos0plans(4) = 1.52d0
       pos0plans(5) = 5.2d0
       pos0plans(6) = 9.24d0
       pos0plans(7) = 19.19d0
       pos0plans(8) = 30.06d0
       pos0plans(9) = 39.53d0

C      yant = 1.0d0


      do i = 1,2
         yant0 = pos0plans(i)
         yant = yant0
         v0x = 2.0d0 * pi
         vte = 2.0d0 * pi / dsqrt(pos0plans(i))
         
         ess = 10.0d0
         do while (ess.gt.(8.0d0*10.0d0**(-3.0d0)))
           y = yant + (v0y*dt)
           x = xant + (v0x*dt)
           ymax = 0.0d0
           xmax = 0.0d0
           t = 0.0d0
       
           do while (t.lt.tf)
             r = dsqrt((x**2.0d0)+(y**2.0d0))**3.0d0
             xp = (2.0d0*x)-xant+((-1.0d0)*((GMs*x)/(r))*(dt**2.0d0))
             yp = (2.0d0*y)-yant+((-1.0d0)*((GMs*y)/(r))*(dt**2.0d0))
             yant = y
             xant = x
             y = yp
             x = xp
             
             write(7,*) x, y
             if (y.gt.ymax) then
               ymax = y
             end if
             if (x.gt.xmax) then
               xmax = x
             end if
C             write(*,*) xmax, ymax, t
             t = t + dt
             
           end do
           yant = yant0
           xant = 0.0d0
           write(*,*) 'aqui'
C          excentricidade
           if (ymax.gt.xmax) then
             aux = ymax
             ymax = xmax
             xmax = aux
           end if
           
C           write(*,*) xmax, ymax
           ess = dsqrt(abs((xmax**2.0d0)-(ymax**2.0d0)))/xmax  
           v0x = v0x - dv
           write(*,*) i, ess
         end do
         write(*,*) i, ess
         write(*,*) i, v0x, vte
       end do
       end