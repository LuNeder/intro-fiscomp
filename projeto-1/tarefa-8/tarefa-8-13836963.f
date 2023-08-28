      write(*,*) 'De R e d, respectivamente'
      read(*,*) R, d
      pi = 4.*atan(1.0)
      open(unit=2, file='dimensoes-esferas')

      do dim = 2,d
        volume = ((pi**(d/2))/gamma((d/2)+1.0))*(R**d)
        write(*,*)
      
      


      end