.model	flat


;�±�����_wfindfirsti64�Ѿ�����Ϊ_wfindfirst32i64
extern __imp___wfindfirsti64:dword


.code

__wfindfirst32i64 PROC
jmp __imp___wfindfirsti64
__wfindfirst32i64 ENDP

end