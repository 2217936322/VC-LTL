.model	flat


;_Exit��Ϊ��_exit��ȫ�ȼ�
extern __imp___exit:dword

.code

__Exit PROC
jmp __imp___exit
__Exit ENDP

end