.model	flat


;����˺�������Ϊ�°汾��set_terminate �淶�����C���˴������ڽ��set_terminate ������ͻ����

extern __imp_?set_terminate@@YAP6AXXZP6AXXZ@Z:dword

.code

_set_terminate PROC
jmp __imp_?set_terminate@@YAP6AXXZP6AXXZ@Z
_set_terminate ENDP

end