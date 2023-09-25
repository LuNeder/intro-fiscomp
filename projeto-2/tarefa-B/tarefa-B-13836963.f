        dimension a(-1000:1000)
        dimension b(0:1)
        a(-1000:1000) = 0
        b(0) = -1
        b(1) = 1
        M = 1000 ! num de andarilhos
        N = 1000 ! num de passos
        ap = 0.5  ! prob dir
        itot = 0 ! total de passos
        iposx = 0 ! posicao
        open(unit=1, file='saida-1')
        do j=1,M
          do i=1,N
            ir = rand()/ap ! 0 = dir 1 = esq.
C            write(*,*) ir
            iposx = iposx + b(ir)           
          end do
C          write(*,*) 'iposx-final = ', iposx
          a(iposx) = a(iposx) + 1
        end do
        do k = 0-N, N
          write(1,*) k, a(k)
        end do
        close(1)
        end









