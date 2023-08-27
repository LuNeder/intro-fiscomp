        real, dimension(:), allocatable :: a
        
        write(*,*) 'De o numero N para ver se ele'
        write(*,*) 'e os numeros inferiores a ele sao primos'
        read(*,*) n
        allocate(a(n))
        i = n
        do while (i .GE. 1)
          j = n
          do while (j .GE. 1)
            if (mod(i, j) .eq. 0) then
              a(j) = j ! TA ERRADO EH O OPOSTO DISSO
              
            
            end if
            j=j-1
          end do
          i=i-1
        end do

        write (*,*) a
             



          
        
        end