
mb-2:     file format elf64-x86-64


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

0000000000001020 <main>:
    1020:	31 c0                	xor    %eax,%eax
    1022:	c3                   	retq   
    1023:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    102a:	00 00 00 
    102d:	0f 1f 00             	nopl   (%rax)

0000000000001030 <_start>:
    1030:	f3 0f 1e fa          	endbr64 
    1034:	31 ed                	xor    %ebp,%ebp
    1036:	49 89 d1             	mov    %rdx,%r9
    1039:	5e                   	pop    %rsi
    103a:	48 89 e2             	mov    %rsp,%rdx
    103d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1041:	50                   	push   %rax
    1042:	54                   	push   %rsp
    1043:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 11a0 <__libc_csu_fini>
    104a:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 1130 <__libc_csu_init>
    1051:	48 8d 3d c8 ff ff ff 	lea    -0x38(%rip),%rdi        # 1020 <main>
    1058:	ff 15 82 2f 00 00    	callq  *0x2f82(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    105e:	f4                   	hlt    
    105f:	90                   	nop

0000000000001060 <deregister_tm_clones>:
    1060:	48 8d 3d c1 2f 00 00 	lea    0x2fc1(%rip),%rdi        # 4028 <__TMC_END__>
    1067:	48 8d 05 ba 2f 00 00 	lea    0x2fba(%rip),%rax        # 4028 <__TMC_END__>
    106e:	48 39 f8             	cmp    %rdi,%rax
    1071:	74 15                	je     1088 <deregister_tm_clones+0x28>
    1073:	48 8b 05 5e 2f 00 00 	mov    0x2f5e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    107a:	48 85 c0             	test   %rax,%rax
    107d:	74 09                	je     1088 <deregister_tm_clones+0x28>
    107f:	ff e0                	jmpq   *%rax
    1081:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1088:	c3                   	retq   
    1089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001090 <register_tm_clones>:
    1090:	48 8d 3d 91 2f 00 00 	lea    0x2f91(%rip),%rdi        # 4028 <__TMC_END__>
    1097:	48 8d 35 8a 2f 00 00 	lea    0x2f8a(%rip),%rsi        # 4028 <__TMC_END__>
    109e:	48 29 fe             	sub    %rdi,%rsi
    10a1:	48 89 f0             	mov    %rsi,%rax
    10a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10a8:	48 c1 f8 03          	sar    $0x3,%rax
    10ac:	48 01 c6             	add    %rax,%rsi
    10af:	48 d1 fe             	sar    %rsi
    10b2:	74 14                	je     10c8 <register_tm_clones+0x38>
    10b4:	48 8b 05 35 2f 00 00 	mov    0x2f35(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10bb:	48 85 c0             	test   %rax,%rax
    10be:	74 08                	je     10c8 <register_tm_clones+0x38>
    10c0:	ff e0                	jmpq   *%rax
    10c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10c8:	c3                   	retq   
    10c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010d0 <__do_global_dtors_aux>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	80 3d 4d 2f 00 00 00 	cmpb   $0x0,0x2f4d(%rip)        # 4028 <__TMC_END__>
    10db:	75 33                	jne    1110 <__do_global_dtors_aux+0x40>
    10dd:	55                   	push   %rbp
    10de:	48 83 3d 12 2f 00 00 	cmpq   $0x0,0x2f12(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e5:	00 
    10e6:	48 89 e5             	mov    %rsp,%rbp
    10e9:	74 0d                	je     10f8 <__do_global_dtors_aux+0x28>
    10eb:	48 8b 3d 2e 2f 00 00 	mov    0x2f2e(%rip),%rdi        # 4020 <__dso_handle>
    10f2:	ff 15 00 2f 00 00    	callq  *0x2f00(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10f8:	e8 63 ff ff ff       	callq  1060 <deregister_tm_clones>
    10fd:	c6 05 24 2f 00 00 01 	movb   $0x1,0x2f24(%rip)        # 4028 <__TMC_END__>
    1104:	5d                   	pop    %rbp
    1105:	c3                   	retq   
    1106:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	c3                   	retq   
    1111:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1118:	00 00 00 00 
    111c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	e9 67 ff ff ff       	jmpq   1090 <register_tm_clones>
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <__libc_csu_init>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	41 57                	push   %r15
    1136:	4c 8d 3d eb 2c 00 00 	lea    0x2ceb(%rip),%r15        # 3e28 <__frame_dummy_init_array_entry>
    113d:	41 56                	push   %r14
    113f:	49 89 d6             	mov    %rdx,%r14
    1142:	41 55                	push   %r13
    1144:	49 89 f5             	mov    %rsi,%r13
    1147:	41 54                	push   %r12
    1149:	41 89 fc             	mov    %edi,%r12d
    114c:	55                   	push   %rbp
    114d:	48 8d 2d dc 2c 00 00 	lea    0x2cdc(%rip),%rbp        # 3e30 <__init_array_end>
    1154:	53                   	push   %rbx
    1155:	4c 29 fd             	sub    %r15,%rbp
    1158:	48 83 ec 08          	sub    $0x8,%rsp
    115c:	e8 9f fe ff ff       	callq  1000 <_init>
    1161:	48 c1 fd 03          	sar    $0x3,%rbp
    1165:	74 1f                	je     1186 <__libc_csu_init+0x56>
    1167:	31 db                	xor    %ebx,%ebx
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1170:	4c 89 f2             	mov    %r14,%rdx
    1173:	4c 89 ee             	mov    %r13,%rsi
    1176:	44 89 e7             	mov    %r12d,%edi
    1179:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    117d:	48 83 c3 01          	add    $0x1,%rbx
    1181:	48 39 dd             	cmp    %rbx,%rbp
    1184:	75 ea                	jne    1170 <__libc_csu_init+0x40>
    1186:	48 83 c4 08          	add    $0x8,%rsp
    118a:	5b                   	pop    %rbx
    118b:	5d                   	pop    %rbp
    118c:	41 5c                	pop    %r12
    118e:	41 5d                	pop    %r13
    1190:	41 5e                	pop    %r14
    1192:	41 5f                	pop    %r15
    1194:	c3                   	retq   
    1195:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    119c:	00 00 00 00 

00000000000011a0 <__libc_csu_fini>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	c3                   	retq   

Disassembly of section .fini:

00000000000011a8 <_fini>:
    11a8:	f3 0f 1e fa          	endbr64 
    11ac:	48 83 ec 08          	sub    $0x8,%rsp
    11b0:	48 83 c4 08          	add    $0x8,%rsp
    11b4:	c3                   	retq   
