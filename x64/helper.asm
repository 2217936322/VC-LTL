;VC-LTL amd64��ಿ��



_TEXT	SEGMENT

;����˺�������Ϊ�°汾��terminate�淶�����C���˴������ڽ��terminate������ͻ����
extern __imp_?terminate@@YAXXZ:qword
terminate PROC
jmp __imp_?terminate@@YAXXZ
terminate ENDP

;__std_terminate -> C++ void terminate()
__std_terminate PROC
jmp __imp_?terminate@@YAXXZ
__std_terminate ENDP

;_wcstoui64 �� wcstoull��Ϊ��ȫ�ȼ�
extern __imp__wcstoui64:qword
wcstoull PROC
jmp __imp__wcstoui64
wcstoull ENDP

;_wcstoi64 �� wcstoll��Ϊ��ȫ�ȼ�
extern __imp__wcstoi64:qword
wcstoll PROC
jmp __imp__wcstoi64
wcstoll ENDP

;_strtoi64 �� strtoll��Ϊ��ȫ�ȼ�
extern __imp__strtoi64:qword
strtoll PROC
jmp __imp__strtoi64
strtoll ENDP

;_strtoui64 �� strtoull��Ϊ��ȫ�ȼ�
extern __imp__strtoui64:qword
strtoull PROC
jmp __imp__strtoui64
strtoull ENDP

;_matherr �� __acrt_invoke_user_matherr��Ϊ��ȫ�ȼ�
extern _matherr:qword
__acrt_invoke_user_matherr PROC
jmp _matherr
__acrt_invoke_user_matherr ENDP


;�±�����_fstat�Ѿ�����Ϊ_fstat32
extern __imp__fstat:qword
_fstat32 PROC
jmp __imp__fstat
_fstat32 ENDP


;�±�����_fstati64�Ѿ�����Ϊ_fstat32i64
extern __imp__fstati64:qword
_fstat32i64 PROC
jmp __imp__fstati64
_fstat32i64 ENDP


;�±�����_stat�Ѿ�����Ϊ_stat32
extern __imp__stat:qword
_stat32 PROC
jmp __imp__stat
_stat32 ENDP


;�±�����_stati64�Ѿ�����Ϊ_stat32i64
extern __imp__stati64:qword
_stat32i64 PROC
jmp __imp__stati64
_stat32i64 ENDP

;�±�����_wstat�Ѿ�����Ϊ_wstat32
extern __imp__wstat:qword
_wstat32 PROC
jmp __imp__wstat
_wstat32 ENDP

;�±�����_wstati64�Ѿ�����Ϊ_wstat32i64
extern __imp__wstati64:qword
_wstat32i64 PROC
jmp __imp__wstati64
_wstat32i64 ENDP

;�±�����_findfirst�Ѿ�����Ϊ_findfirst32
extern __imp__findfirst:qword
_findfirst32 PROC
jmp __imp__findfirst
_findfirst32 ENDP

;�±�����_findnext�Ѿ�����Ϊ_findnext32
extern __imp__findnext:qword
_findnext32 PROC
jmp __imp__findnext
_findnext32 ENDP

;�±�����_findfirsti64�Ѿ�����Ϊ_findfirst32i64
extern __imp__findfirsti64:qword
_findfirst32i64 PROC
jmp __imp__findfirsti64
_findfirst32i64 ENDP

;�±�����_findnexti64�Ѿ�����Ϊ_findnext32i64
extern __imp__findnexti64:qword
_findnext32i64 PROC
jmp __imp__findnexti64
_findnext32i64 ENDP

;�±�����_wfindfirst�Ѿ�����Ϊ_wfindfirst32
extern __imp__wfindfirst:qword
_wfindfirst32 PROC
jmp __imp__wfindfirst
_wfindfirst32 ENDP

;�±�����_wfindnext�Ѿ�����Ϊ_wfindnext32
extern __imp__wfindnext:qword
_wfindnext32 PROC
jmp __imp__wfindnext
_wfindnext32 ENDP

;�±�����_wfindfirsti64�Ѿ�����Ϊ_wfindfirst32i64
extern __imp__wfindfirsti64:qword
_wfindfirst32i64 PROC
jmp __imp__wfindfirsti64
_wfindfirst32i64 ENDP


;�±�����_wfindnexti64�Ѿ�����Ϊ_wfindnext32i64
extern __imp__wfindnexti64:qword
_wfindnext32i64 PROC
jmp __imp__wfindnexti64
_wfindnext32i64 ENDP

_TEXT	ENDS

END