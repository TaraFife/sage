"""
Dense Matrix Template for C/C++ Library Interfaces
"""

from sage.ext.mod_int cimport *

cimport matrix_dense

cdef class Matrix_modn_dense_template(matrix_dense.Matrix_dense):
    cdef celement **_matrix
    cdef celement *_entries
    cdef mod_int p
    cdef xgcd_eliminate (self, celement * row1, celement* row2, Py_ssize_t start_col)
    cdef set_unsafe_int(self, Py_ssize_t i, Py_ssize_t j, int value)
    cpdef _export_as_string(self)
    cdef int _copy_row_to_mod_int_array(self, mod_int *to, Py_ssize_t i)
