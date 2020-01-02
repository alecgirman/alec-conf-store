
mb-0:     file format elf64-x86-64


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

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <malloc@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <malloc@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	31 ed                	xor    %ebp,%ebp
    1056:	49 89 d1             	mov    %rdx,%r9
    1059:	5e                   	pop    %rsi
    105a:	48 89 e2             	mov    %rsp,%rdx
    105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1061:	50                   	push   %rax
    1062:	54                   	push   %rsp
    1063:	4c 8d 05 96 01 00 00 	lea    0x196(%rip),%r8        # 1200 <__libc_csu_fini>
    106a:	48 8d 0d 1f 01 00 00 	lea    0x11f(%rip),%rcx        # 1190 <__libc_csu_init>
    1071:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1149 <main>
    1078:	ff 15 62 2f 00 00    	callq  *0x2f62(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    107e:	f4                   	hlt    
    107f:	90                   	nop

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d b1 2f 00 00 	lea    0x2fb1(%rip),%rdi        # 4038 <__TMC_END__>
    1087:	48 8d 05 aa 2f 00 00 	lea    0x2faa(%rip),%rax        # 4038 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmpq   *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	retq   
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 81 2f 00 00 	lea    0x2f81(%rip),%rdi        # 4038 <__TMC_END__>
    10b7:	48 8d 35 7a 2f 00 00 	lea    0x2f7a(%rip),%rsi        # 4038 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 15 2f 00 00 	mov    0x2f15(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmpq   *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	retq   
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	80 3d 3d 2f 00 00 00 	cmpb   $0x0,0x2f3d(%rip)        # 4038 <__TMC_END__>
    10fb:	75 33                	jne    1130 <__do_global_dtors_aux+0x40>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d f2 2e 00 00 	cmpq   $0x0,0x2ef2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0d                	je     1118 <__do_global_dtors_aux+0x28>
    110b:	48 8b 3d 1e 2f 00 00 	mov    0x2f1e(%rip),%rdi        # 4030 <__dso_handle>
    1112:	ff 15 e0 2e 00 00    	callq  *0x2ee0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1118:	e8 63 ff ff ff       	callq  1080 <deregister_tm_clones>
    111d:	c6 05 14 2f 00 00 01 	movb   $0x1,0x2f14(%rip)        # 4038 <__TMC_END__>
    1124:	5d                   	pop    %rbp
    1125:	c3                   	retq   
    1126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    112d:	00 00 00 
    1130:	c3                   	retq   
    1131:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1138:	00 00 00 00 
    113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 67 ff ff ff       	jmpq   10b0 <register_tm_clones>

0000000000001149 <main>:
    1149:	55                   	push   %rbp
    114a:	48 89 e5             	mov    %rsp,%rbp
    114d:	48 83 ec 20          	sub    $0x20,%rsp
    1151:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1154:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1158:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    115f:	bf 00 00 80 00       	mov    $0x800000,%edi
    1164:	e8 d7 fe ff ff       	callq  1040 <malloc@plt>
    1169:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    116d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1171:	8b 40 10             	mov    0x10(%rax),%eax
    1174:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1177:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    117b:	48 89 c7             	mov    %rax,%rdi
    117e:	e8 ad fe ff ff       	callq  1030 <free@plt>
    1183:	b8 00 00 00 00       	mov    $0x0,%eax
    1188:	c9                   	leaveq 
    1189:	c3                   	retq   
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001190 <__libc_csu_init>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	41 57                	push   %r15
    1196:	4c 8d 3d 4b 2c 00 00 	lea    0x2c4b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    119d:	41 56                	push   %r14
    119f:	49 89 d6             	mov    %rdx,%r14
    11a2:	41 55                	push   %r13
    11a4:	49 89 f5             	mov    %rsi,%r13
    11a7:	41 54                	push   %r12
    11a9:	41 89 fc             	mov    %edi,%r12d
    11ac:	55                   	push   %rbp
    11ad:	48 8d 2d 3c 2c 00 00 	lea    0x2c3c(%rip),%rbp        # 3df0 <__init_array_end>
    11b4:	53                   	push   %rbx
    11b5:	4c 29 fd             	sub    %r15,%rbp
    11b8:	48 83 ec 08          	sub    $0x8,%rsp
    11bc:	e8 3f fe ff ff       	callq  1000 <_init>
    11c1:	48 c1 fd 03          	sar    $0x3,%rbp
    11c5:	74 1f                	je     11e6 <__libc_csu_init+0x56>
    11c7:	31 db                	xor    %ebx,%ebx
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11d0:	4c 89 f2             	mov    %r14,%rdx
    11d3:	4c 89 ee             	mov    %r13,%rsi
    11d6:	44 89 e7             	mov    %r12d,%edi
    11d9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    11dd:	48 83 c3 01          	add    $0x1,%rbx
    11e1:	48 39 dd             	cmp    %rbx,%rbp
    11e4:	75 ea                	jne    11d0 <__libc_csu_init+0x40>
    11e6:	48 83 c4 08          	add    $0x8,%rsp
    11ea:	5b                   	pop    %rbx
    11eb:	5d                   	pop    %rbp
    11ec:	41 5c                	pop    %r12
    11ee:	41 5d                	pop    %r13
    11f0:	41 5e                	pop    %r14
    11f2:	41 5f                	pop    %r15
    11f4:	c3                   	retq   
    11f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    11fc:	00 00 00 00 

0000000000001200 <__libc_csu_fini>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	c3                   	retq   

Disassembly of section .fini:

0000000000001208 <_fini>:
    1208:	f3 0f 1e fa          	endbr64 
    120c:	48 83 ec 08          	sub    $0x8,%rsp
    1210:	48 83 c4 08          	add    $0x8,%rsp
    1214:	c3                   	retq   
