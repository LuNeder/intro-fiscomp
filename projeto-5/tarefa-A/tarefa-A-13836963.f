       program palavra
       implicit real*8 (a-h, o-z)
       common x, y, xant, yant, GMs
       pi = 4.0d0 * datan(1.0d0)
       GMs = 4.0d0 * (pi**2)
       r = sqrt((x**2.0d0)+(y**2.0d0))**3.0d0
       dt = 1.0d0

       end program

       real*8 function xi(m)
         implicit real*8 (a-h, o-z)
         common x, y, xant, yant, GMs
         
         x = (2.0d0*x)-xant+((-1.0d0)*((GMs*x)/(r))*(dt**2.0d0))
       end function

       real*8 function yi(m)
         implicit real*8 (a-h, o-z)
         common x, y, xant, yant, GMs

       end function

