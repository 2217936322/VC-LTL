

;_matherr �� __acrt_invoke_user_matherr��Ϊ��ȫ�ȼ�
extern _matherr:qword


.code

__acrt_invoke_user_matherr PROC
jmp _matherr
__acrt_invoke_user_matherr ENDP

end