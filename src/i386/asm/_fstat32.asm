.model	flat


;�±�����_fstat�Ѿ�����Ϊ_fstat32
extern __imp___fstat:dword

.code

__fstat32 PROC
jmp __imp___fstat
__fstat32 ENDP

end