      write(*,*) 'De d'
      read(*,*) d
      M = 100
      identro = 0
      itotal = 0
      do i = 1,M
        r1 = rand(0)
        r2 = rand(0)
        norma = sqrt((r1**2.)+(r2**2.))
        if (norma .LE. 1) then
          identro = identro +1
        end if
        itotal = itotal +1
      end do

      volume = ((identro+0.0d0)/(itotal+0.0d0))*(2**d)
      write(*,*) 'O Volume é', volume

      end