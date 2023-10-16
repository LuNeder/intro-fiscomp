
      program a
      implicit real*8 (a-h, o-z)
      dimension h(14)
      dext1 = 9.796782013838 ! Derivada exata
      dext2 = 64.098324549472 ! Segunda derivada exata
      dext3 = 671.514613457866 ! Terceira derivada exata
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
        c1 = dsim3(h(i))
        c2 = dfr2(h(i))
        c3 = dtr2(h(i))
        c4 = dsim5(h(i))
        c5 = d2sim5(h(i))
        c6 = d3ansim5(h(i))
        
        write(2,4) c0, c1, c2, c3, c4, c5, c6
4       format( 7('|', f20.10), '|')
        
      end do
        
      
      

      
      
      end program
      
      real*8 function dsim3(h)
        implicit real*8 (a-h, o-z)
        dsim3 = dext1 - ((fn(1, h) - fn(-1, h))/(2*h)) ! + O(h**2)
      end function
      
      real*8 function dfr2(h)
        implicit real*8 (a-h, o-z)
        dfr2 = dext1 - ((fn(1, h)-fn(0, h))/h)
      end function
      
      real*8 function dtr2(h)
        implicit real*8 (a-h, o-z)
        dtr2 = dext1 - ((fn(0, h)-fn(-1, h))/h)
      end function
      
      real*8 function dsim5(h)
        implicit real*8 (a-h, o-z)
        dsim5 = dext1 - ( (fn(-2, h)- (8*fn(-1, h)) + (8*fn(1, h)) - fn(2, h) )/(12*h) )
      end function
      
      real*8 function d2sim5(h)
        implicit real*8 (a-h, o-z)
        d2sim5num = (0 - fn(-2, h)) + (16*fn(-1, h)) - (30*fn(0, h)) + (16*fn(1, h)) - fn(2, h)
        d2sim5 = dext2 - ( d2sim5num/(12*(h**2)) )
      end function
      
      real*8 function d3ansim5(h)
        implicit real*8 (a-h, o-z)
        d3ansim5num = (0-fn(-2, h)) + (2*fn(-1, h)) - (2*fn(1, h)) + fn(2, h)
        d3ansim5 = dext3 - ( d3ansim5num/(2*(h**3)) )
      end function
      
      real*8 function fn(n, h)
        implicit real*8 (a-h, o-z)
        fn = f((1/2)+(n*h))
      end function
      
      real*8 function f(x)
        implicit real*8 (a-h, o-z)
        f = exp(x/2)*tan(2*x)
      end function

      
