#include "biio.h"

int main(int * argc, char *argv[]){
    int row;
    int col;
    int nnz;
    int *row_ptr;
    int *col_idx;
    double *val;
    char *filename = "add20.mtx";
    read_Dmatrix(&row, &col, &nnz, &row_ptr, &col_idx, &val, filename);
    return 0;
}