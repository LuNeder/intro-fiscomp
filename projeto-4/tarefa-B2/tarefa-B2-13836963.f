      implicit real*8(a-h,o-z)
      g = 9.8d0

      al = 9.8d0



      am = 1.0d0


      dt = 0.04d0
      pi = 4.0d0*datan(1.0d0)

      open(unit=7,file="pequeno-periodo")
      do i=1,30
        theta = 0.1d0*i
        write(7,*) (2.0d0*pi*sqrt(al/g)*(1.0d0+((theta**2.0d0)
     &/16.0d0))),theta



      end do

      
      close(7)
      end


