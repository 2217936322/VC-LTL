.model	flat


;�±�����_findfirsti64�Ѿ�����Ϊ_findfirst32i64
extern __imp___findfirsti64:dword


.code

__findfirst32i64 PROC
jmp __imp___findfirsti64
__findfirst32i64 ENDP

end