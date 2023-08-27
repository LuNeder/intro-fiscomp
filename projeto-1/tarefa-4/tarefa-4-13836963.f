        real, dimension(:), allocatable :: a
        
        write(*,*) 'De o numero N para ver se ele'
        write(*,*) 'e os numeros inferiores a ele sao primos'
        read(*,*) n
        allocate(a(n))
        i = n
        k=1
        do while (i .GE. 1)
          j = n
          do while (j .GE. 1)
            if (mod(i, j) .eq. 0) then
              continue
            else
              a(k) = j ! TA ERRADO, É O !OPOSTO DISSO
              k = k+1
              
            
            end if
            j=j-1
          end do
          i=i-1
        end do

        write (*,*) a
             



          
        
        end