

;_strtoi64 �� strtoll��Ϊ��ȫ�ȼ�
extern __imp__strtoi64:qword

.code

strtoll PROC
jmp __imp__strtoi64
strtoll ENDP

end