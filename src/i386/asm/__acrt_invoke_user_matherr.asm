.model	flat


;_matherr �� __acrt_invoke_user_matherr��Ϊ��ȫ�ȼ�
extern __matherr:dword

.code

___acrt_invoke_user_matherr PROC
jmp __matherr
___acrt_invoke_user_matherr ENDP

end
