      real, dimension(:), allocatable :: a


      write(*,*) 'De N e M, respectivamente, tal que o programa ira ler'
      write(*,*) 'N numeros reais (em um arquivo) e ordenara '
      write(*,*) 'os M primeiros menores numeros'
      read(*,*) n, m

      allocate(a(n))
      open(unit=1, file='entrada-1-13836963')
      read(1,*) a


      do i = 1, m
          do j = i+1, n
              if (a(j) .LT. a(i)) then
                  aux = a(i)
                  a(i) = a(j)
                  a(j) = aux
              end if
          end do
      end do

      open(unit=2, file='saida-1-13836963')
      do i = 1, m
          write(2,*) a(i)
      end do

      write(2,*) m



      close(1)
      close(2)
      end
