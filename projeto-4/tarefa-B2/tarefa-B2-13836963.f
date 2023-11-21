      program b1i
      implicit real*8(a-h,o-z)
      g = 9.8d0
      al = 9.8d0
      am = 1.0d0

      dt = 0.04d0
      pi = 4.0d0*datan(1.0d0)

      open(unit=7,file="integral-periodo")
      do i=1,30
        theta = 0.1d0*i
        thetz = theta
        omega = 0.0d0

        t = 0.0d0

        erro = thetz*0.01d0
        h = 1/10000.0d0
        hi = h

        do while(h.le.(thetz-erro))
          valor = b(h-hi,thetz,hi)
          t = t + valor
          h = h + 4*hi
        end do

        t = 2.0d0*dsqrt(2.0d0*al/g)*(t+2.0d0*
     &dsqrt(erro/dsin(thetz)))
        write(7,*)Periodo(g,al,pi,thetz),thetz
      end do

      close(7)
      end program


      real*8 function Periodo(g,al,pi,theta0)
        implicit real*8 (a-h,o-z)
        T=2.0d0*pi*sqrt(al/g)*(1.0d0+((theta0**2.0d0)/16.0d0))
      end function

