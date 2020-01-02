
mb-1:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .text:

0000000000001020 <_start>:
    1020:	f3 0f 1e fa          	endbr64 
    1024:	31 ed                	xor    %ebp,%ebp
    1026:	49 89 d1             	mov    %rdx,%r9
    1029:	5e                   	pop    %rsi
    102a:	48 89 e2             	mov    %rsp,%rdx
    102d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1031:	50                   	push   %rax
    1032:	54                   	push   %rsp
    1033:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 1190 <__libc_csu_fini>
    103a:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 1120 <__libc_csu_init>
    1041:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1119 <main>
    1048:	ff 15 92 2f 00 00    	callq  *0x2f92(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    104e:	f4                   	hlt    
    104f:	90                   	nop

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d d1 2f 00 00 	lea    0x2fd1(%rip),%rdi        # 4028 <__TMC_END__>
    1057:	48 8d 05 ca 2f 00 00 	lea    0x2fca(%rip),%rax        # 4028 <__TMC_END__>
    105e:	48 39 f8             	cmp    %rdi,%rax
    1061:	74 15                	je     1078 <deregister_tm_clones+0x28>
    1063:	48 8b 05 6e 2f 00 00 	mov    0x2f6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    106a:	48 85 c0             	test   %rax,%rax
    106d:	74 09                	je     1078 <deregister_tm_clones+0x28>
    106f:	ff e0                	jmpq   *%rax
    1071:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1078:	c3                   	retq   
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d a1 2f 00 00 	lea    0x2fa1(%rip),%rdi        # 4028 <__TMC_END__>
    1087:	48 8d 35 9a 2f 00 00 	lea    0x2f9a(%rip),%rsi        # 4028 <__TMC_END__>
    108e:	48 29 fe             	sub    %rdi,%rsi
    1091:	48 89 f0             	mov    %rsi,%rax
    1094:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1098:	48 c1 f8 03          	sar    $0x3,%rax
    109c:	48 01 c6             	add    %rax,%rsi
    109f:	48 d1 fe             	sar    %rsi
    10a2:	74 14                	je     10b8 <register_tm_clones+0x38>
    10a4:	48 8b 05 45 2f 00 00 	mov    0x2f45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10ab:	48 85 c0             	test   %rax,%rax
    10ae:	74 08                	je     10b8 <register_tm_clones+0x38>
    10b0:	ff e0                	jmpq   *%rax
    10b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10b8:	c3                   	retq   
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <__do_global_dtors_aux>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	80 3d 5d 2f 00 00 00 	cmpb   $0x0,0x2f5d(%rip)        # 4028 <__TMC_END__>
    10cb:	75 33                	jne    1100 <__do_global_dtors_aux+0x40>
    10cd:	55                   	push   %rbp
    10ce:	48 83 3d 22 2f 00 00 	cmpq   $0x0,0x2f22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10d5:	00 
    10d6:	48 89 e5             	mov    %rsp,%rbp
    10d9:	74 0d                	je     10e8 <__do_global_dtors_aux+0x28>
    10db:	48 8b 3d 3e 2f 00 00 	mov    0x2f3e(%rip),%rdi        # 4020 <__dso_handle>
    10e2:	ff 15 10 2f 00 00    	callq  *0x2f10(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e8:	e8 63 ff ff ff       	callq  1050 <deregister_tm_clones>
    10ed:	c6 05 34 2f 00 00 01 	movb   $0x1,0x2f34(%rip)        # 4028 <__TMC_END__>
    10f4:	5d                   	pop    %rbp
    10f5:	c3                   	retq   
    10f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10fd:	00 00 00 
    1100:	c3                   	retq   
    1101:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1108:	00 00 00 00 
    110c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001110 <frame_dummy>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	e9 67 ff ff ff       	jmpq   1080 <register_tm_clones>

0000000000001119 <main>:
    1119:	b8 00 00 00 00       	mov    $0x0,%eax
    111e:	c3                   	retq   
    111f:	90                   	nop

0000000000001120 <__libc_csu_init>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	41 57                	push   %r15
    1126:	4c 8d 3d fb 2c 00 00 	lea    0x2cfb(%rip),%r15        # 3e28 <__frame_dummy_init_array_entry>
    112d:	41 56                	push   %r14
    112f:	49 89 d6             	mov    %rdx,%r14
    1132:	41 55                	push   %r13
    1134:	49 89 f5             	mov    %rsi,%r13
    1137:	41 54                	push   %r12
    1139:	41 89 fc             	mov    %edi,%r12d
    113c:	55                   	push   %rbp
    113d:	48 8d 2d ec 2c 00 00 	lea    0x2cec(%rip),%rbp        # 3e30 <__init_array_end>
    1144:	53                   	push   %rbx
    1145:	4c 29 fd             	sub    %r15,%rbp
    1148:	48 83 ec 08          	sub    $0x8,%rsp
    114c:	e8 af fe ff ff       	callq  1000 <_init>
    1151:	48 c1 fd 03          	sar    $0x3,%rbp
    1155:	74 1f                	je     1176 <__libc_csu_init+0x56>
    1157:	31 db                	xor    %ebx,%ebx
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1160:	4c 89 f2             	mov    %r14,%rdx
    1163:	4c 89 ee             	mov    %r13,%rsi
    1166:	44 89 e7             	mov    %r12d,%edi
    1169:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    116d:	48 83 c3 01          	add    $0x1,%rbx
    1171:	48 39 dd             	cmp    %rbx,%rbp
    1174:	75 ea                	jne    1160 <__libc_csu_init+0x40>
    1176:	48 83 c4 08          	add    $0x8,%rsp
    117a:	5b                   	pop    %rbx
    117b:	5d                   	pop    %rbp
    117c:	41 5c                	pop    %r12
    117e:	41 5d                	pop    %r13
    1180:	41 5e                	pop    %r14
    1182:	41 5f                	pop    %r15
    1184:	c3                   	retq   
    1185:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    118c:	00 00 00 00 

0000000000001190 <__libc_csu_fini>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	c3                   	retq   

Disassembly of section .fini:

0000000000001198 <_fini>:
    1198:	f3 0f 1e fa          	endbr64 
    119c:	48 83 ec 08          	sub    $0x8,%rsp
    11a0:	48 83 c4 08          	add    $0x8,%rsp
    11a4:	c3                   	retq   
