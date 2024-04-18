program mpi_hello
    use mpi
    implicit none
    integer :: ierr, rank, size

    call MPI_Init(ierr)
    call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)
    call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)

    print *, 'Hello from rank', rank, 'of', size, 'processors'
    call MPI_Finalize(ierr)
end program mpi_hello
