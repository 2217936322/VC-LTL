.model	flat


;_strtoi64 �� strtoll��Ϊ��ȫ�ȼ�
extern __imp___strtoi64:dword

.code

_strtoll PROC
jmp __imp___strtoi64
_strtoll ENDP

end