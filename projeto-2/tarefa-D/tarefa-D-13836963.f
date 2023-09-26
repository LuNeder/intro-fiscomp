      dimension mapa(-1000:1000,-1000:1000)
      

      
      open(unit=7, file='grafico-13836963')


      ipdo = 1
      N = 1000 !andarilhos 
      M = 1000 !passos
      do while(ipdo.le.M)
        mapa(-1000:1000,-1000:1000) = 0

       ! tarefa C
        do j=1,N
          iposx = 0
          iposy = 0
          do i=1,ipdo
            ar = rand()
            if (ar .lt. 0.25) then !+x
              iposx = iposx + 1
            else
              if (ar .lt. 0.5) then !-x
                iposx = iposx - 1
              else
                if (ar .lt. 0.75) then !+y
                  iposy = iposy + 1
                else !-y
                  iposy = iposy - 1
                end if
              end if
            end if 
          end do
          mapa(iposx,iposy) = mapa(iposx,iposy) + 1
        end do 
        ! fim tarefa C

        an = n
        iret = 10
        e = 0

        i = 0 - M
        do while(i.lt.M)
          j = 0 - M
          do while(j.lt.M)
            apt = 0
            do k=i,i+iret
              do l=j,j+iret
                apt = apt + mapa(k,l)
              end do
            end do
            if(apt.gt.0) then
                aprob = apt/an
                e = e - aprob*log(aprob)   
            end if
            j = j + iret
          end do
          i = i + iret
        end do

        write(7,*) ipdo, e
        ipdo = ipdo + 1
      end do

      close(7)
      end

