

.model	flat

;_wcstoui64 �� wcstoull��Ϊ��ȫ�ȼ�

extern __imp___wcstoui64:PROC

.code

_wcstoull PROC
jmp __imp___wcstoui64
_wcstoull ENDP


END