.model	flat

;�±�����_findnext�Ѿ�����Ϊ_findnext32
extern __imp___findnext:dword

.code

__findnext32 PROC
jmp __imp___findnext
__findnext32 ENDP

end