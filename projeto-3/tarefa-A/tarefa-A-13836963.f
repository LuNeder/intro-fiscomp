      program a
      implicit real*8 (a-h, o-z)
      dimension h(14)
      dext1 = 9.796782013838 ! Derivada exata
      dext2 = 64.098324549472 ! Segunda derivada exata
      dext3 = 671.514613457866 ! Terceira derivada exata
      h(1) = 0.5
      h(2) = 0.2
      h(3) = 0.1
      h(4) = 0.05
      h(5) = 0.01
      h(6) = 0.005
      h(7) = 0.001
      h(8) = 0.0005
      h(9) = 0.0001
      h(10) = 0.00005
      h(11) = 0.00001
      h(12) = 0.000001
      h(13) = 0.0000001
      h(14) = 0.00000001
      
      write(*,*) 'h                   | dsim3              | dfr2   ',
     & '            | dtr2               |'
      do i = 1,14
        c0 = h(i)
        c1 = dsim3(h(i))
        c2 = dfr2(h(i))
        c3 = dtr2(h(i))
        c4 = dsim5(h(i))
        c5 = d2sim5(h(i))
        c6 = d3ansim5(h(i))
        
        write(*,4) c0, c1, c2, c3, c4, c5, c6
4       format( 7('|', f20.10), '|')
        
      end do
        
      
      

      
      
      end program
      
      real*8 function dsim3(h)
        implicit real*8 (a-h, o-z)
      end function
      
      real*8 function dfr2(h)
        implicit real*8 (a-h, o-z)
      end function
      
      real*8 function dtr2(h)
        implicit real*8 (a-h, o-z)
      end function
      
      real*8 function dsim5(h)
        implicit real*8 (a-h, o-z)
      end function
      
      real*8 function d2sim5(h)
        implicit real*8 (a-h, o-z)
      end function
      
      real*8 function d3ansim5(h)
        implicit real*8 (a-h, o-z)
      end function
      
      real*8 function fn(n)
        implicit real*8 (a-h, o-z)
      end function

      
