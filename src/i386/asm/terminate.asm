.model	flat


;����˺�������Ϊ�°汾��terminate�淶�����C���˴������ڽ��terminate������ͻ����
extern __imp_?terminate@@YAXXZ:dword

.code

_terminate PROC
jmp __imp_?terminate@@YAXXZ
_terminate ENDP

end
