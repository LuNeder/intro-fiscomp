        dimension ia(-1001:1001)
        dimension ib(0:1)
        ia(-1001:1001) = 0
        ib(0) = 1
        ib(1) = -1
        M = 100000 ! num de andarilhos
        N = 1000 ! num de passos
        ap = 0.5e0  ! prob dir
        itot = 0 ! total de passos
        iposx = 0 ! posicao
        open(unit=1, file='saida-1')
        do j=1,M
          iposx = 0
          do i=1,N
            ir = rand()/ap ! 0 = dir 1 = esq.
C            write(*,*) ir
            iposx = iposx + ib(ir)           
          end do
C          write(*,*) 'iposx-final = ', iposx
          ia(iposx) = ia(iposx) + 1
        end do
        do k = 0-N, N
          write(1,*) k, ia(k)
        end do
        close(1)
        end
        
        
        
        
