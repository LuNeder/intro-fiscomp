       program c
       implicit real*8 (a-h, o-z)
       ! character(len = 6) :: title
       r1e = -7
       r2e = 2
       r3e = 9
       x0 = -10.0d0
       
       xi1 = x0
       xi2 = -0
       xi3 = 7

       do i=0,6
         
          	 	
        ! write (*,*) i
         tmp = buscadireta(x0)
        ! write (*,*) i
         open(unit=9, file="bd.tmp")
         read(9,*) bd1, bd2, bd3
         close(9)
         
         
         
         xi1 = anr(xi1)
         xi2 = anr(xi2)
         xi3 = anr(xi3)

         write (*,4) i, bd1, bd2, bd3, xi1, xi2, xi3
4       format( i2, 9('|', f20.10), '|')

       end do




       end program



       real*8 function fx(x)
         implicit real*8 (a-h, o-z)
         fx = (x**3.0d0)-(4.0d0*(x**2.0d0))-(59.0d0*x)+126.0d0
       end function
       
       real*8 function dfx(x)
         implicit real*8 (a-h, o-z)
         dfx = (3.0d0*(x**2.0d0))-(8.0d0*x)-59.0d0
       end function
       


       real*8 function buscadireta(x)
         implicit real*8 (a-h, o-z)
       !  write(*,*) "bd"
         open(unit=9, file="bd.tmp")
       !  write(*,*) "bdab"
         x = -10.0d0
         f = -10.0d0
         do while (f.lt.0)
           f = fx(x)
           x = x + 0.1d0    
         end do
         r1 = x - 0.2d0
         f=10.0d0

         do while (f.gt.0)
           f = fx(x)
           x = x + 0.1d0    
         end do
         r2 = x - 0.2d0
         f=-10.0d0

         do while (f.lt.0)
           f = fx(x)
           x = x + 0.1d0    
         end do
         r3 = x - 0.2d0

         write(9,*) r1, r2, r3
       !  write(*,*) "bdac"
         close(9)
       !  write(*,*) "bdfc"
        end function
        
        real*8 function anr(x)
          implicit real*8 (a-h, o-z)
       !   write(*,*) "aqui"
          anr = x - (fx(x)/dfx(x))
        end function
        
        real*8 function sec(x0)
          implicit real*8 (a-h, o-z)
          
          
        end function
