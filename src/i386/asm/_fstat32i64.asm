.model	flat



;�±�����_fstati64�Ѿ�����Ϊ_fstat32i64
extern __imp___fstati64:dword


.code

__fstat32i64 PROC
jmp __imp___fstati64
__fstat32i64 ENDP

end