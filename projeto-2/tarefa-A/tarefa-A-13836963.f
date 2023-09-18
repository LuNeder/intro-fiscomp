       iN = 1572794658
       write(*,*) 'De n'
       read(*,*) iexp

       soma = 0
       do i = 1, iN
         r = rand()**iexp
         soma = soma + r
       end do

       div = soma/iN

       write(*,*) 'media = ', div
       end

    
