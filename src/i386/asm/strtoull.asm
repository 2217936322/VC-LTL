.model	flat

;_strtoui64 �� strtoull��Ϊ��ȫ�ȼ�

extern __imp___strtoui64:dword

.code

_strtoull PROC
jmp __imp___strtoui64
_strtoull ENDP

end