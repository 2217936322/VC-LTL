.model	flat


;�±�����_wfindnext�Ѿ�����Ϊ_wfindnext32
extern __imp___wfindnext:dword


.code

__wfindnext32 PROC
jmp __imp___wfindnext
__wfindnext32 ENDP

end