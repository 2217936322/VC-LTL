.model	flat



;_wcstoi64 �� wcstoll��Ϊ��ȫ�ȼ�
extern __imp___wcstoi64:dword

.code

_wcstoll PROC
jmp __imp___wcstoi64
_wcstoll ENDP

end