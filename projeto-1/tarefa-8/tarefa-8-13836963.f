      program tarefa8
      integer d
      write(*,*) 'De R e d, respectivamente'
      read(*,*) R, d
      pi = 4.*atan(1.0)
      open(unit=2, file='dimensoes-esferas')

      do idim = 2,d
        volume = 0
        exp = real(idim)
        volume = ((pi**(exp/2))/gamma((exp/2)+1.0))*(R**exp)
        write(2,*) idim, volume
      end do
      
      close(2)

      end program

