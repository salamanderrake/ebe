        module dumpster
            interface dump
                module procedure d_dump, f_dump, i8_dump, i4_dump
                module procedure i2_dump, i1_dump, l8_dump, l4_dump
                module procedure l2_dump, l1_dump
            end interface
        contains
            subroutine d_dump(x)
                implicit none
                real(kind=8) :: x
                integer(kind=1) :: b(8)
                integer :: i
                print '(A)', 'real (kind=8)'
                b = transfer(x,b);
                print '(8(Z2.2,1X))', (b(i),i=1,8)
                return
            end subroutine
            subroutine f_dump(x)
                implicit none
                real(kind=4) :: x
                integer :: i
                integer(kind=1) :: b(4)
                print '(A)', 'real (kind=4)'
                b = transfer(x,b);
                print '(4(Z2.2,1X))', (b(i),i=1,4)
                return
            end subroutine
            subroutine i8_dump(x)
                implicit none
                integer(kind=8) :: x
                integer :: i
                integer(kind=1) :: b(8)
                print '(A)', 'integer (kind=8)'
                b = transfer(x,b);
                print '(8(Z2.2,1X))', (b(i),i=1,8)
                return
            end subroutine
            subroutine i4_dump(x)
                implicit none
                integer(kind=4) :: x
                integer :: i
                integer(kind=1) :: b(4)
                print '(A)', 'integer (kind=4)'
                b = transfer(x,b);
                print '(4(Z2.2,1X))', (b(i),i=1,4)
                return
            end subroutine
            subroutine i2_dump(x)
                implicit none
                integer(kind=2) :: x
                integer :: i
                integer(kind=1) :: b(2)
                print '(A)', 'integer (kind=2)'
                b = transfer(x,b);
                print '(2(Z2.2,1X))', (b(i),i=1,2)
                return
            end subroutine
            subroutine i1_dump(x)
                implicit none
                integer(kind=1) :: x
                integer :: i
                print '(A)', 'integer (kind=1)'
                print '(Z2.2)', x
                return
            end subroutine
            subroutine l8_dump(x)
                implicit none
                logical(kind=8) :: x
                integer :: i
                integer(kind=1) :: b(8)
                print '(A)', 'logical (kind=8)'
                b = transfer(x,b);
                print '(8(Z2.2,1X))', (b(i),i=1,8)
                return
            end subroutine
            subroutine l4_dump(x)
                implicit none
                logical(kind=4) :: x
                integer :: i
                integer(kind=1) :: b(4)
                print '(A)', 'logical (kind=4)'
                b = transfer(x,b);
                print '(4(Z2.2,1X))', (b(i),i=1,4)
                return
            end subroutine
            subroutine l2_dump(x)
                implicit none
                logical(kind=2) :: x
                integer :: i
                integer(kind=1) :: b(2)
                print '(A)', 'logical (kind=2)'
                b = transfer(x,b);
                print '(2(Z2.2,1X))', (b(i),i=1,2)
                return
            end subroutine
            subroutine l1_dump(x)
                implicit none
                logical(kind=1) :: x
                integer :: i
                integer(kind=1) :: b
                print '(A)', 'logical (kind=1)'
                b = transfer(x,b);
                print '(Z2.2)', b
                return
            end subroutine
        end module
        program main
            use dumpster
            implicit none
        real (kind=4) :: a = 12
        call dump(sqrt(a))
            stop
        end program main
