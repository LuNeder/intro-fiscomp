      write(*,*) 'De N'
      read(*,*) iN
      k=0
      pi = 4.*atan(1.0)

      rho = 3. ** (1./iN)

      do k = 1,iN
        alpha = (2.*k*pi)/iN
        a = (rho * cos(alpha)) + 2.
        b = rho * sin(alpha)
        write(*,1) 'z', ' = ', a, ', ', b, 'i'
1       format(a1, a3, f10.6, a2, f10.6, a1) 
      end do



      end