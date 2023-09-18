       iNum = 10000000
       write(*,*) 'De n'
       read(*,*) exp

       soma = 0
       do i =0,iNum
         soma = soma + rand()**exp
       end do

       div = soma/iNum

       write(*,*) 'media = ', div
       end

    
