        dimension ia(-1001:1001, -1001:1001)
        ia(-1001:1001, -1001:1001) = 0
        M = 100000 ! num de andarilhos
        N = 10000 ! num de passos
        ! ap = 0.25e0  ! prob cada - probs iguais
        iposx = 0 ! posicao x
        iposy = 0 ! posicao y
        avetr = 0 ! magnetude do vetor posicao r
        sumr = 0
        sumr2 = 0
        open(unit=1, file='saida-1')
        do j=1,M
          iposx = 0
          iposy = 0
          do i=1,N
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
          write (1, *) iposx, iposy
          r2 = iposx**2 + iposy**2
          sx = sx + iposx
          sy = sy + iposy
          sumr2 = sumr2+s
          sumr = sumr + sqrt(r2)
        end do

        close(1)
        write(*,*) '<|r|> = ', (sumr/M)
        write(*,*) 'del² = ', ((sumr2 -((sx**2) + (sy**2)))/M)
        end
        
        

