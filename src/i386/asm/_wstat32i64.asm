.model	flat


;�±�����_wstati64�Ѿ�����Ϊ_wstat32i64
extern __imp___wstati64:dword


.code

__wstat32i64 PROC
jmp __imp___wstati64
__wstat32i64 ENDP

end