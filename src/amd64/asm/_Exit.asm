
;_Exit��Ϊ��_exit��ȫ�ȼ�
extern __imp__exit:qword

.code

_Exit PROC
jmp __imp__exit
_Exit ENDP

end