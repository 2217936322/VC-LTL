

;_wcstoi64 �� wcstoll��Ϊ��ȫ�ȼ�
extern __imp__wcstoi64:qword

.code

wcstoll PROC
jmp __imp__wcstoi64
wcstoll ENDP

end