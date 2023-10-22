       program c
       implicit real*8 (a-h, o-z)
       character(len = 6) :: title
       r1e = -7
       r2e = 2
       r3e = 9

       do i=0,6
         tmp = buscadireta(1.0d0)
         open(unit=9, file="bd.tmp")
         read(9,*) bd1, bd2, bd3
         close(9)

         write (*,4) bd1, bd2, bd3
4       format( 9('|', f20.10), '|')

       end do




       end program



       real*8 function fx(x)
         implicit real*8 (a-h, o-z)
         fx = (x**3.0d0)-(4.0d0*(x**2.0d0))-(59.0d0*x)+126.0d0
       end function


       real*8 function buscadireta(z)
         implicit real*8 (a-h, o-z)
         open(unit=9, file="bd.tmp")
         x = -10.0d0
         f = -10.0d0
         do while (f.lt.0)
           f = fx(x)
           x = x + 0.1d0    
         end do
         r1 = x - 0.1d0
         f=10.0d0

         do while (f.gt.0)
           f = fx(x)
           x = x + 0.1d0    
         end do
         r2 = x - 0.1d0
         f=-10.0d0

         do while (f.lt.0)
           f = fx(x)
           x = x + 0.1d0    
         end do
         r3 = x - 0.1d0

         write(9,*) r1, r2, r3
         buscadireta = 1.0d0
         close(9)
        end function
