      program
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

      
