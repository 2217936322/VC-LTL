.model	flat


;�±�����_findfirst�Ѿ�����Ϊ_findfirst32
extern __imp___findfirst:dword

.code

__findfirst32 PROC
jmp __imp___findfirst
__findfirst32 ENDP

end