        real, dimension(:), allocatable :: a
        
        write(*,*) 'De o numero N para ver se ele'
        write(*,*) 'e os numeros inferiores a ele sao primos'
        read(*,*) n
        allocate(a(n))
        i = n
        k=1

        
        do while (i .GE. 1)
          j = n
          idivs=0
        !  write(*,*) i
          do while (j .GE. 1)
            if (mod(i, j) .eq. 0) then
              
              idivs = idivs+1
            !  write(*,*) i, j, idivs
              
            
            end if
            j=j-1
          end do
          if (idivs .eq. 2) then
         ! write(*,*) 'aqui'
            a(k) = i
            k = k+1
          end if
          i=i-1
        end do

        write(*,*) a(1:k-1)
             



          
        
        end