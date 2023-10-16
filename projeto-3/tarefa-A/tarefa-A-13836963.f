
      program a
      implicit real*8 (a-h, o-z)
      dimension h(14)
      dext1 = 9.796782013838d0 ! Derivada exata
      dext2 = 64.098324549472d0 ! Segunda derivada exata
      dext3 = 671.514613457866d0 ! Terceira derivada exata
      h(1) = 0.5d0
      h(2) = 0.2d0
      h(3) = 0.1d0
      h(4) = 0.05d0
      h(5) = 0.01d0
      h(6) = 0.005d0
      h(7) = 0.001d0
      h(8) = 0.0005d0
      h(9) = 0.0001d0
      h(10) = 0.00005d0
      h(11) = 0.00001d0
      h(12) = 0.000001d0
      h(13) = 0.0000001d0
      h(14) = 0.00000001d0
      
      open(file='saida-1',unit=2)
      write(2,*) 'h                   | dsim3              | dfr2   ',
     & '            | dtr2               | dsim5              | ',
     & 'd2sim5             | d3ansim5           |'
      do i = 1,14
        c0 = h(i)
        c1 = dext1 - dsim3(h(i))
        c2 = dext1 - dfr2(h(i))
        c3 = dext1 - dtr2(h(i))
        c4 = dext1- dsim5(h(i))
        c5 = dext2 - d2sim5(h(i))
        c6 = dext3 - d3ansim5(h(i))
        
        write(2,4) c0, c1, c2, c3, c4, c5, c6
4       format( 7('|', f20.10), '|')
        
      end do
        
      
      write(2,70) dext1, dext1, dext1, dext1, dext2, dext3
70    format('| EXATO              ', 6('|', f20.10), '|')

      
      
      end program
      
      
      real*8 function fn(an,h)
        implicit real*8 (a-h, o-z)
        fn = f((0.5d0)+(an*h))
      end function
      
      real*8 function f(x)
        implicit real*8 (a-h, o-z)
        f = dexp(x/2.0d0)*dtan(2.0d0*x)
      end function
      
      real*8 function dsim3(h)
        implicit real*8 (a-h, o-z)
        dsim3 = ((fn(1.0d0,h) - fn(-1.0d0,h))/(2.0d0*h)) 
      end function
      
      real*8 function dfr2(h)
        implicit real*8 (a-h, o-z)
        dfr2 = ((fn(1.0d0,h)-fn(0.0d0,h))/h)
      end function
      
      real*8 function dtr2(h)
        implicit real*8 (a-h, o-z)
        dtr2 = ((fn(0.0d0,h)-fn(-1.0d0,h))/h)
      end function
      
      real*8 function dsim5(h)
        implicit real*8 (a-h, o-z)
        dsim5 = ( (fn(-2.0d0,h)- (8.0d0*fn(-1.0d0,h)) + 
     &  (8.0d0*fn(1.0d0,h))  - fn(2.0d0,h) )/(12*h) )
      end function
      
      real*8 function d2sim5(h)
        implicit real*8 (a-h, o-z)
        d2sim5num = ((0.0d0 - fn(-2.0d0,h)) + (16.0d0*fn(-1.0d0,h)) 
     &   - (30.0d0*fn(0.0d0,h)) + (16.0d0*fn(1.0d0,h)) - fn(2.0d0,h))
        d2sim5 = ( d2sim5num/(12.0d0*(h**2.0d0)) )
      end function
      
      real*8 function d3ansim5(h)
        implicit real*8 (a-h, o-z)
        d3ansim5num = ((0.0d0-fn(-2.0d0,h)) + (2.0d0*fn(-1.0d0,h)) - 
     &  (2.0d0*fn(1.0d0,h)) +  fn(2.0d0,h))
        d3ansim5 = ( d3ansim5num/(2.0d0*(h**3.0d0)) )
      end function
      


      
