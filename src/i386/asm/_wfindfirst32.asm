.model	flat

;�±�����_wfindfirst�Ѿ�����Ϊ_wfindfirst32
extern __imp___wfindfirst:dword

.code

__wfindfirst32 PROC
jmp __imp___wfindfirst
__wfindfirst32 ENDP

end