.model	flat


;�±�����_wfindnexti64�Ѿ�����Ϊ_wfindnext32i64
extern __imp___wfindnexti64:dword


.code

__wfindnext32i64 PROC
jmp __imp___wfindnexti64
__wfindnext32i64 ENDP

end