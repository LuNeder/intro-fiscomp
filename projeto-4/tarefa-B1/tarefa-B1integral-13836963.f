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
        write(7,*)t,thetz
      end do

      close(7)
      end program


      real*8 function f(theta,thetz,h)
        implicit real*8 (a-h,o-z)
        f = 1.0d0/dsqrt(dcos(theta+h)-dcos(thetz))
      end function

      real*8 function b(x,x0,h)
        implicit real*8 (a-h,o-z)

        b = 2.0d0*h/45.0d0*(7.0d0*f(x,x0,0.0d0)+32.0d0*f(x,x0,h*1.0d0)
     &+12.0d0*f(x,x0,h*2.0d0)+32.0d0*f(x,x0,3.0d0*h)+7.0d0*f(x,x
     &0,4.0d0*h))

      end function