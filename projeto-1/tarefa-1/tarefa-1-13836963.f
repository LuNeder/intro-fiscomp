       !
      implicit real (a-h, o-z)
      write(*, *) 'De a, b e c da equacao'
      read(*, *) a, b, c
      delta = (b**2) - (4.0*a*c)
      if (delta < 0.0) then
        write(*,*) 'sem raizes'
        stop
      end if
      sdelta = sqrt(delta)

      r1 = (-b-sdelta)/(2*a)
      r2 = (-b+sdelta)/(2*a)
      write(*,*) 'As raízes são', r1, 'e', r2
      end 
