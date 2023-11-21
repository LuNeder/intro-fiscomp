      implicit real*8(a-h,o-z)
      g = 9.8d0
      al = 9.8d0
      am = 1.0d0

      dt = 0.04d0
      pi = 4.0d0*datan(1.0d0)

      open(unit=7,file="periodo")

      do i=1,30
            theta = 0.1d0*i
            thetz = theta
            omega = 0.0d0

            t = 0.0d0
            oscilacoes = 0

            do while(oscilacoes.lt.100)
                  omegz = omega
                  t = t + dt

                  omega = omega - (g/al)*dsin(theta)*dt
                  theta = theta + omega*dt

                  if(omega*omegz.lt.0.0d0)then
                        oscilacoes = oscilacoes + 1
                  end if
            end do

            if(abs(theta).ge.2.0d0*pi) then
                  write(7,*)t,mod(thetz,2.0d0*pi)
            else
                  write(7,*)t,thetz
            end if
      end do

      close(7)
      end