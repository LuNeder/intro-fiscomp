       program b
       implicit real*8 (a-h, o-z)

       end program


       real*8 function f(x)
        implicit real*8 (a-h, o-z)
        pi = 4.0d0*atan(1.0d0)
        f = dexp(-x)*dcos(2.0d0*x*pi)
       end function