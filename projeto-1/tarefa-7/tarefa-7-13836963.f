      integer d
      write(*,*) 'De d'
      read(*,*) d
      M = 999999
      dentro = 0
      total = 0
      do i = 1,M
      anorma = 0
        do j = 1,d
          anorma = anorma + rand(0)**2
        end do
               

        anorma = sqrt(anorma)
        if (anorma .LE. 1) then
          dentro = dentro +1
        end if
        total = total +1
      end do
      volume = (dentro)/(total)*(2.0d0**d)
      write(*,*) 'O Volume é', volume

      end