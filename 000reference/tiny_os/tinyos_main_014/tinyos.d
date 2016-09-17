
tinyos.app:     file format binary


Disassembly of section .data:

0000001b <.data+0x1b>:
      1b:	e9 10 11 01 00       	jmp    0x30
      20:	a0 11 31 00 00       	mov    al,ds:0x3111
	...
      2d:	00 00                	add    BYTE PTR [eax],al
      2f:	00 55 89             	add    BYTE PTR [ebp-0x77],dl
      32:	e5 53                	in     eax,0x53
      34:	81 ec 04 02 00 00    	sub    esp,0x204
      3a:	c7 45 f4 f0 0f 00 00 	mov    DWORD PTR [ebp-0xc],0xff0
      41:	e8 9e 0b 00 00       	call   0xbe4
      46:	e8 dd 0d 00 00       	call   0xe28
      4b:	e8 e4 03 00 00       	call   0x434
      50:	8d 85 a0 fe ff ff    	lea    eax,[ebp-0x160]
      56:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
      5a:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
      61:	00 
      62:	c7 04 24 70 11 31 00 	mov    DWORD PTR [esp],0x311170
      69:	e8 62 0f 00 00       	call   0xfd0
      6e:	8d 85 20 fe ff ff    	lea    eax,[ebp-0x1e0]
      74:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
      78:	c7 44 24 04 80 00 00 	mov    DWORD PTR [esp+0x4],0x80
      7f:	00 
      80:	c7 04 24 88 11 31 00 	mov    DWORD PTR [esp],0x311188
      87:	e8 44 0f 00 00       	call   0xfd0
      8c:	c7 44 24 04 f9 00 00 	mov    DWORD PTR [esp+0x4],0xf9
      93:	00 
      94:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
      9b:	e8 b6 03 00 00       	call   0x456
      a0:	c7 44 24 04 ef 00 00 	mov    DWORD PTR [esp+0x4],0xef
      a7:	00 
      a8:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
      af:	e8 a2 03 00 00       	call   0x456
      b4:	e8 fa 02 00 00       	call   0x3b3
      b9:	e8 26 04 00 00       	call   0x4e4
      be:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
      c1:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
      c5:	0f bf c8             	movsx  ecx,ax
      c8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
      cb:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
      cf:	0f bf d0             	movsx  edx,ax
      d2:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
      d5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
      d8:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
      dc:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
      e0:	89 04 24             	mov    DWORD PTR [esp],eax
      e3:	e8 0e 05 00 00       	call   0x5f6
      e8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
      eb:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
      ef:	98                   	cwde   
      f0:	83 e8 10             	sub    eax,0x10
      f3:	89 c2                	mov    edx,eax
      f5:	c1 ea 1f             	shr    edx,0x1f
      f8:	01 d0                	add    eax,edx
      fa:	d1 f8                	sar    eax,1
      fc:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
      ff:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     102:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
     106:	98                   	cwde   
     107:	83 e8 2c             	sub    eax,0x2c
     10a:	89 c2                	mov    edx,eax
     10c:	c1 ea 1f             	shr    edx,0x1f
     10f:	01 d0                	add    eax,edx
     111:	d1 f8                	sar    eax,1
     113:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
     116:	c7 44 24 04 0e 00 00 	mov    DWORD PTR [esp+0x4],0xe
     11d:	00 
     11e:	8d 85 c0 fe ff ff    	lea    eax,[ebp-0x140]
     124:	89 04 24             	mov    DWORD PTR [esp],eax
     127:	e8 ae 09 00 00       	call   0xada
     12c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     12f:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
     133:	0f bf d0             	movsx  edx,ax
     136:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     139:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     13c:	c7 44 24 1c 10 00 00 	mov    DWORD PTR [esp+0x1c],0x10
     143:	00 
     144:	8d 8d c0 fe ff ff    	lea    ecx,[ebp-0x140]
     14a:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
     14e:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
     151:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     155:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
     158:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
     15c:	c7 44 24 0c 10 00 00 	mov    DWORD PTR [esp+0xc],0x10
     163:	00 
     164:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
     16b:	00 
     16c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     170:	89 04 24             	mov    DWORD PTR [esp],eax
     173:	e8 0c 0a 00 00       	call   0xb84
     178:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
     17b:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     17f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
     182:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     186:	c7 44 24 04 00 00 31 	mov    DWORD PTR [esp+0x4],0x310000
     18d:	00 
     18e:	8d 45 c0             	lea    eax,[ebp-0x40]
     191:	89 04 24             	mov    DWORD PTR [esp],eax
     194:	e8 7b 0f 00 00       	call   0x1114
     199:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     19c:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
     1a0:	0f bf d0             	movsx  edx,ax
     1a3:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     1a6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     1a9:	8d 4d c0             	lea    ecx,[ebp-0x40]
     1ac:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     1b0:	c7 44 24 10 07 00 00 	mov    DWORD PTR [esp+0x10],0x7
     1b7:	00 
     1b8:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     1bf:	00 
     1c0:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     1c7:	00 
     1c8:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     1cc:	89 04 24             	mov    DWORD PTR [esp],eax
     1cf:	e8 a6 08 00 00       	call   0xa7a
     1d4:	e8 14 02 00 00       	call   0x3ed
     1d9:	eb 01                	jmp    0x1dc
     1db:	90                   	nop
     1dc:	e8 51 02 00 00       	call   0x432
     1e1:	c7 04 24 70 11 31 00 	mov    DWORD PTR [esp],0x311170
     1e8:	e8 10 0f 00 00       	call   0x10fd
     1ed:	89 c3                	mov    ebx,eax
     1ef:	c7 04 24 88 11 31 00 	mov    DWORD PTR [esp],0x311188
     1f6:	e8 02 0f 00 00       	call   0x10fd
     1fb:	01 d8                	add    eax,ebx
     1fd:	85 c0                	test   eax,eax
     1ff:	75 07                	jne    0x208
     201:	e8 30 02 00 00       	call   0x436
     206:	eb d3                	jmp    0x1db
     208:	c7 04 24 70 11 31 00 	mov    DWORD PTR [esp],0x311170
     20f:	e8 e9 0e 00 00       	call   0x10fd
     214:	85 c0                	test   eax,eax
     216:	0f 84 b2 00 00 00    	je     0x2ce
     21c:	c7 04 24 70 11 31 00 	mov    DWORD PTR [esp],0x311170
     223:	e8 65 0e 00 00       	call   0x108d
     228:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
     22b:	e8 04 02 00 00       	call   0x434
     230:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
     233:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     237:	c7 44 24 04 09 00 31 	mov    DWORD PTR [esp+0x4],0x310009
     23e:	00 
     23f:	8d 45 c0             	lea    eax,[ebp-0x40]
     242:	89 04 24             	mov    DWORD PTR [esp],eax
     245:	e8 ca 0e 00 00       	call   0x1114
     24a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     24d:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
     251:	0f bf d0             	movsx  edx,ax
     254:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     257:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     25a:	c7 44 24 18 1f 00 00 	mov    DWORD PTR [esp+0x18],0x1f
     261:	00 
     262:	c7 44 24 14 0f 00 00 	mov    DWORD PTR [esp+0x14],0xf
     269:	00 
     26a:	c7 44 24 10 10 00 00 	mov    DWORD PTR [esp+0x10],0x10
     271:	00 
     272:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     279:	00 
     27a:	c7 44 24 08 0e 00 00 	mov    DWORD PTR [esp+0x8],0xe
     281:	00 
     282:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     286:	89 04 24             	mov    DWORD PTR [esp],eax
     289:	e8 1f 03 00 00       	call   0x5ad
     28e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     291:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
     295:	0f bf d0             	movsx  edx,ax
     298:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     29b:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     29e:	8d 4d c0             	lea    ecx,[ebp-0x40]
     2a1:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     2a5:	c7 44 24 10 07 00 00 	mov    DWORD PTR [esp+0x10],0x7
     2ac:	00 
     2ad:	c7 44 24 0c 10 00 00 	mov    DWORD PTR [esp+0xc],0x10
     2b4:	00 
     2b5:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     2bc:	00 
     2bd:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     2c1:	89 04 24             	mov    DWORD PTR [esp],eax
     2c4:	e8 b1 07 00 00       	call   0xa7a
     2c9:	e9 0d ff ff ff       	jmp    0x1db
     2ce:	c7 04 24 88 11 31 00 	mov    DWORD PTR [esp],0x311188
     2d5:	e8 23 0e 00 00       	call   0x10fd
     2da:	85 c0                	test   eax,eax
     2dc:	0f 84 f9 fe ff ff    	je     0x1db
     2e2:	c7 04 24 88 11 31 00 	mov    DWORD PTR [esp],0x311188
     2e9:	e8 9f 0d 00 00       	call   0x108d
     2ee:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
     2f1:	e8 3e 01 00 00       	call   0x434
     2f6:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
     2f9:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     2fd:	c7 44 24 04 09 00 31 	mov    DWORD PTR [esp+0x4],0x310009
     304:	00 
     305:	8d 45 c0             	lea    eax,[ebp-0x40]
     308:	89 04 24             	mov    DWORD PTR [esp],eax
     30b:	e8 04 0e 00 00       	call   0x1114
     310:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     313:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
     317:	0f bf d0             	movsx  edx,ax
     31a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     31d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     320:	c7 44 24 18 1f 00 00 	mov    DWORD PTR [esp+0x18],0x1f
     327:	00 
     328:	c7 44 24 14 2f 00 00 	mov    DWORD PTR [esp+0x14],0x2f
     32f:	00 
     330:	c7 44 24 10 10 00 00 	mov    DWORD PTR [esp+0x10],0x10
     337:	00 
     338:	c7 44 24 0c 20 00 00 	mov    DWORD PTR [esp+0xc],0x20
     33f:	00 
     340:	c7 44 24 08 0e 00 00 	mov    DWORD PTR [esp+0x8],0xe
     347:	00 
     348:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     34c:	89 04 24             	mov    DWORD PTR [esp],eax
     34f:	e8 59 02 00 00       	call   0x5ad
     354:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     357:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
     35b:	0f bf d0             	movsx  edx,ax
     35e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     361:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
     364:	8d 4d c0             	lea    ecx,[ebp-0x40]
     367:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     36b:	c7 44 24 10 07 00 00 	mov    DWORD PTR [esp+0x10],0x7
     372:	00 
     373:	c7 44 24 0c 10 00 00 	mov    DWORD PTR [esp+0xc],0x10
     37a:	00 
     37b:	c7 44 24 08 20 00 00 	mov    DWORD PTR [esp+0x8],0x20
     382:	00 
     383:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
     387:	89 04 24             	mov    DWORD PTR [esp],eax
     38a:	e8 eb 06 00 00       	call   0xa7a
     38f:	e9 47 fe ff ff       	jmp    0x1db
     394:	55                   	push   ebp
     395:	89 e5                	mov    ebp,esp
     397:	83 ec 18             	sub    esp,0x18
     39a:	eb 01                	jmp    0x39d
     39c:	90                   	nop
     39d:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
     3a4:	e8 90 00 00 00       	call   0x439
     3a9:	83 e0 02             	and    eax,0x2
     3ac:	85 c0                	test   eax,eax
     3ae:	75 ec                	jne    0x39c
     3b0:	90                   	nop
     3b1:	c9                   	leave  
     3b2:	c3                   	ret    
     3b3:	55                   	push   ebp
     3b4:	89 e5                	mov    ebp,esp
     3b6:	83 ec 18             	sub    esp,0x18
     3b9:	e8 d6 ff ff ff       	call   0x394
     3be:	c7 44 24 04 60 00 00 	mov    DWORD PTR [esp+0x4],0x60
     3c5:	00 
     3c6:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
     3cd:	e8 84 00 00 00       	call   0x456
     3d2:	e8 bd ff ff ff       	call   0x394
     3d7:	c7 44 24 04 47 00 00 	mov    DWORD PTR [esp+0x4],0x47
     3de:	00 
     3df:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
     3e6:	e8 6b 00 00 00       	call   0x456
     3eb:	c9                   	leave  
     3ec:	c3                   	ret    
     3ed:	55                   	push   ebp
     3ee:	89 e5                	mov    ebp,esp
     3f0:	83 ec 18             	sub    esp,0x18
     3f3:	e8 9c ff ff ff       	call   0x394
     3f8:	c7 44 24 04 d4 00 00 	mov    DWORD PTR [esp+0x4],0xd4
     3ff:	00 
     400:	c7 04 24 64 00 00 00 	mov    DWORD PTR [esp],0x64
     407:	e8 4a 00 00 00       	call   0x456
     40c:	e8 83 ff ff ff       	call   0x394
     411:	c7 44 24 04 f4 00 00 	mov    DWORD PTR [esp+0x4],0xf4
     418:	00 
     419:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
     420:	e8 31 00 00 00       	call   0x456
     425:	c9                   	leave  
     426:	c3                   	ret    
	...
     42f:	00 f4                	add    ah,dh
     431:	c3                   	ret    
     432:	fa                   	cli    
     433:	c3                   	ret    
     434:	fb                   	sti    
     435:	c3                   	ret    
     436:	fb                   	sti    
     437:	f4                   	hlt    
     438:	c3                   	ret    
     439:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     43d:	b8 00 00 00 00       	mov    eax,0x0
     442:	ec                   	in     al,dx
     443:	c3                   	ret    
     444:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     448:	b8 00 00 00 00       	mov    eax,0x0
     44d:	66 ed                	in     ax,dx
     44f:	c3                   	ret    
     450:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     454:	ed                   	in     eax,dx
     455:	c3                   	ret    
     456:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     45a:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
     45e:	ee                   	out    dx,al
     45f:	c3                   	ret    
     460:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     464:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
     468:	66 ef                	out    dx,ax
     46a:	c3                   	ret    
     46b:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
     46f:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
     473:	ef                   	out    dx,eax
     474:	c3                   	ret    
     475:	9c                   	pushf  
     476:	58                   	pop    eax
     477:	c3                   	ret    
     478:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
     47c:	50                   	push   eax
     47d:	9d                   	popf   
     47e:	c3                   	ret    
     47f:	66 8b 44 24 04       	mov    ax,WORD PTR [esp+0x4]
     484:	66 89 44 24 06       	mov    WORD PTR [esp+0x6],ax
     489:	0f 01 54 24 06       	lgdtd  [esp+0x6]
     48e:	c3                   	ret    
     48f:	66 8b 44 24 04       	mov    ax,WORD PTR [esp+0x4]
     494:	66 89 44 24 06       	mov    WORD PTR [esp+0x6],ax
     499:	0f 01 5c 24 06       	lidtd  [esp+0x6]
     49e:	c3                   	ret    
     49f:	06                   	push   es
     4a0:	1e                   	push   ds
     4a1:	60                   	pusha  
     4a2:	89 e0                	mov    eax,esp
     4a4:	50                   	push   eax
     4a5:	66 8c d0             	mov    ax,ss
     4a8:	8e d8                	mov    ds,eax
     4aa:	8e c0                	mov    es,eax
     4ac:	e8 6f 0a 00 00       	call   0xf20
     4b1:	58                   	pop    eax
     4b2:	61                   	popa   
     4b3:	1f                   	pop    ds
     4b4:	07                   	pop    es
     4b5:	cf                   	iret   
     4b6:	06                   	push   es
     4b7:	1e                   	push   ds
     4b8:	60                   	pusha  
     4b9:	89 e0                	mov    eax,esp
     4bb:	50                   	push   eax
     4bc:	66 8c d0             	mov    ax,ss
     4bf:	8e d8                	mov    ds,eax
     4c1:	8e c0                	mov    es,eax
     4c3:	e8 ea 0a 00 00       	call   0xfb2
     4c8:	58                   	pop    eax
     4c9:	61                   	popa   
     4ca:	1f                   	pop    ds
     4cb:	07                   	pop    es
     4cc:	cf                   	iret   
     4cd:	06                   	push   es
     4ce:	1e                   	push   ds
     4cf:	60                   	pusha  
     4d0:	89 e0                	mov    eax,esp
     4d2:	50                   	push   eax
     4d3:	66 8c d0             	mov    ax,ss
     4d6:	8e d8                	mov    ds,eax
     4d8:	8e c0                	mov    es,eax
     4da:	e8 80 0a 00 00       	call   0xf5f
     4df:	58                   	pop    eax
     4e0:	61                   	popa   
     4e1:	1f                   	pop    ds
     4e2:	07                   	pop    es
     4e3:	cf                   	iret   
     4e4:	55                   	push   ebp
     4e5:	89 e5                	mov    ebp,esp
     4e7:	83 ec 18             	sub    esp,0x18
     4ea:	c7 44 24 08 20 11 31 	mov    DWORD PTR [esp+0x8],0x311120
     4f1:	00 
     4f2:	c7 44 24 04 0f 00 00 	mov    DWORD PTR [esp+0x4],0xf
     4f9:	00 
     4fa:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
     501:	e8 02 00 00 00       	call   0x508
     506:	c9                   	leave  
     507:	c3                   	ret    
     508:	55                   	push   ebp
     509:	89 e5                	mov    ebp,esp
     50b:	83 ec 28             	sub    esp,0x28
     50e:	e8 62 ff ff ff       	call   0x475
     513:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
     516:	e8 17 ff ff ff       	call   0x432
     51b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     51e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     522:	c7 04 24 c8 03 00 00 	mov    DWORD PTR [esp],0x3c8
     529:	e8 28 ff ff ff       	call   0x456
     52e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     531:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
     534:	eb 62                	jmp    0x598
     536:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     539:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     53c:	c0 e8 02             	shr    al,0x2
     53f:	0f b6 c0             	movzx  eax,al
     542:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     546:	c7 04 24 c9 03 00 00 	mov    DWORD PTR [esp],0x3c9
     54d:	e8 04 ff ff ff       	call   0x456
     552:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     555:	83 c0 01             	add    eax,0x1
     558:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     55b:	c0 e8 02             	shr    al,0x2
     55e:	0f b6 c0             	movzx  eax,al
     561:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     565:	c7 04 24 c9 03 00 00 	mov    DWORD PTR [esp],0x3c9
     56c:	e8 e5 fe ff ff       	call   0x456
     571:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     574:	83 c0 02             	add    eax,0x2
     577:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     57a:	c0 e8 02             	shr    al,0x2
     57d:	0f b6 c0             	movzx  eax,al
     580:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     584:	c7 04 24 c9 03 00 00 	mov    DWORD PTR [esp],0x3c9
     58b:	e8 c6 fe ff ff       	call   0x456
     590:	83 45 10 03          	add    DWORD PTR [ebp+0x10],0x3
     594:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
     598:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     59b:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
     59e:	7e 96                	jle    0x536
     5a0:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
     5a3:	89 04 24             	mov    DWORD PTR [esp],eax
     5a6:	e8 cd fe ff ff       	call   0x478
     5ab:	c9                   	leave  
     5ac:	c3                   	ret    
     5ad:	55                   	push   ebp
     5ae:	89 e5                	mov    ebp,esp
     5b0:	83 ec 14             	sub    esp,0x14
     5b3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     5b6:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
     5b9:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
     5bc:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
     5bf:	eb 2b                	jmp    0x5ec
     5c1:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
     5c4:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
     5c7:	eb 17                	jmp    0x5e0
     5c9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     5cc:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
     5d0:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     5d3:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
     5d6:	0f b6 55 ec          	movzx  edx,BYTE PTR [ebp-0x14]
     5da:	88 10                	mov    BYTE PTR [eax],dl
     5dc:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
     5e0:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
     5e3:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
     5e6:	7e e1                	jle    0x5c9
     5e8:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
     5ec:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     5ef:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
     5f2:	7e cd                	jle    0x5c1
     5f4:	c9                   	leave  
     5f5:	c3                   	ret    
     5f6:	55                   	push   ebp
     5f7:	89 e5                	mov    ebp,esp
     5f9:	53                   	push   ebx
     5fa:	83 ec 1c             	sub    esp,0x1c
     5fd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     600:	8d 50 e3             	lea    edx,[eax-0x1d]
     603:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     606:	83 e8 01             	sub    eax,0x1
     609:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     60d:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
     611:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
     618:	00 
     619:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     620:	00 
     621:	c7 44 24 08 0e 00 00 	mov    DWORD PTR [esp+0x8],0xe
     628:	00 
     629:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     62c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     630:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     633:	89 04 24             	mov    DWORD PTR [esp],eax
     636:	e8 72 ff ff ff       	call   0x5ad
     63b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     63e:	8d 48 e4             	lea    ecx,[eax-0x1c]
     641:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     644:	8d 50 ff             	lea    edx,[eax-0x1]
     647:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     64a:	83 e8 1c             	sub    eax,0x1c
     64d:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
     651:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     655:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     659:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     660:	00 
     661:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
     668:	00 
     669:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     66c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     670:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     673:	89 04 24             	mov    DWORD PTR [esp],eax
     676:	e8 32 ff ff ff       	call   0x5ad
     67b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     67e:	8d 48 e5             	lea    ecx,[eax-0x1b]
     681:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     684:	8d 50 ff             	lea    edx,[eax-0x1]
     687:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     68a:	83 e8 1b             	sub    eax,0x1b
     68d:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
     691:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     695:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     699:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     6a0:	00 
     6a1:	c7 44 24 08 07 00 00 	mov    DWORD PTR [esp+0x8],0x7
     6a8:	00 
     6a9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     6ac:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     6b0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     6b3:	89 04 24             	mov    DWORD PTR [esp],eax
     6b6:	e8 f2 fe ff ff       	call   0x5ad
     6bb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     6be:	8d 48 ff             	lea    ecx,[eax-0x1]
     6c1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     6c4:	8d 50 ff             	lea    edx,[eax-0x1]
     6c7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     6ca:	83 e8 1a             	sub    eax,0x1a
     6cd:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
     6d1:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     6d5:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     6d9:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     6e0:	00 
     6e1:	c7 44 24 08 08 00 00 	mov    DWORD PTR [esp+0x8],0x8
     6e8:	00 
     6e9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     6ec:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     6f0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     6f3:	89 04 24             	mov    DWORD PTR [esp],eax
     6f6:	e8 b2 fe ff ff       	call   0x5ad
     6fb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     6fe:	8d 50 e8             	lea    edx,[eax-0x18]
     701:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     704:	83 e8 18             	sub    eax,0x18
     707:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     70b:	c7 44 24 14 3b 00 00 	mov    DWORD PTR [esp+0x14],0x3b
     712:	00 
     713:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     717:	c7 44 24 0c 03 00 00 	mov    DWORD PTR [esp+0xc],0x3
     71e:	00 
     71f:	c7 44 24 08 07 00 00 	mov    DWORD PTR [esp+0x8],0x7
     726:	00 
     727:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     72a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     72e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     731:	89 04 24             	mov    DWORD PTR [esp],eax
     734:	e8 74 fe ff ff       	call   0x5ad
     739:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     73c:	8d 50 fc             	lea    edx,[eax-0x4]
     73f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     742:	83 e8 18             	sub    eax,0x18
     745:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     749:	c7 44 24 14 02 00 00 	mov    DWORD PTR [esp+0x14],0x2
     750:	00 
     751:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     755:	c7 44 24 0c 02 00 00 	mov    DWORD PTR [esp+0xc],0x2
     75c:	00 
     75d:	c7 44 24 08 07 00 00 	mov    DWORD PTR [esp+0x8],0x7
     764:	00 
     765:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     768:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     76c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     76f:	89 04 24             	mov    DWORD PTR [esp],eax
     772:	e8 36 fe ff ff       	call   0x5ad
     777:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     77a:	8d 50 fc             	lea    edx,[eax-0x4]
     77d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     780:	83 e8 04             	sub    eax,0x4
     783:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     787:	c7 44 24 14 3b 00 00 	mov    DWORD PTR [esp+0x14],0x3b
     78e:	00 
     78f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     793:	c7 44 24 0c 03 00 00 	mov    DWORD PTR [esp+0xc],0x3
     79a:	00 
     79b:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
     7a2:	00 
     7a3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     7a6:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     7aa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     7ad:	89 04 24             	mov    DWORD PTR [esp],eax
     7b0:	e8 f8 fd ff ff       	call   0x5ad
     7b5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     7b8:	8d 50 fb             	lea    edx,[eax-0x5]
     7bb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     7be:	83 e8 17             	sub    eax,0x17
     7c1:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     7c5:	c7 44 24 14 3b 00 00 	mov    DWORD PTR [esp+0x14],0x3b
     7cc:	00 
     7cd:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     7d1:	c7 44 24 0c 3b 00 00 	mov    DWORD PTR [esp+0xc],0x3b
     7d8:	00 
     7d9:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
     7e0:	00 
     7e1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     7e4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     7e8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     7eb:	89 04 24             	mov    DWORD PTR [esp],eax
     7ee:	e8 ba fd ff ff       	call   0x5ad
     7f3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     7f6:	8d 50 fd             	lea    edx,[eax-0x3]
     7f9:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     7fc:	83 e8 03             	sub    eax,0x3
     7ff:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     803:	c7 44 24 14 3b 00 00 	mov    DWORD PTR [esp+0x14],0x3b
     80a:	00 
     80b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     80f:	c7 44 24 0c 02 00 00 	mov    DWORD PTR [esp+0xc],0x2
     816:	00 
     817:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     81e:	00 
     81f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     822:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     826:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     829:	89 04 24             	mov    DWORD PTR [esp],eax
     82c:	e8 7c fd ff ff       	call   0x5ad
     831:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     834:	8d 50 fd             	lea    edx,[eax-0x3]
     837:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     83a:	83 e8 18             	sub    eax,0x18
     83d:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
     841:	c7 44 24 14 3c 00 00 	mov    DWORD PTR [esp+0x14],0x3c
     848:	00 
     849:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     84d:	c7 44 24 0c 3c 00 00 	mov    DWORD PTR [esp+0xc],0x3c
     854:	00 
     855:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     85c:	00 
     85d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     860:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     864:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     867:	89 04 24             	mov    DWORD PTR [esp],eax
     86a:	e8 3e fd ff ff       	call   0x5ad
     86f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     872:	8d 58 e8             	lea    ebx,[eax-0x18]
     875:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     878:	8d 48 fc             	lea    ecx,[eax-0x4]
     87b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     87e:	8d 50 e8             	lea    edx,[eax-0x18]
     881:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     884:	83 e8 2f             	sub    eax,0x2f
     887:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
     88b:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     88f:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
     893:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     897:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
     89e:	00 
     89f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     8a2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     8a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     8a9:	89 04 24             	mov    DWORD PTR [esp],eax
     8ac:	e8 fc fc ff ff       	call   0x5ad
     8b1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     8b4:	8d 58 fc             	lea    ebx,[eax-0x4]
     8b7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     8ba:	8d 48 d1             	lea    ecx,[eax-0x2f]
     8bd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     8c0:	8d 50 e9             	lea    edx,[eax-0x17]
     8c3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     8c6:	83 e8 2f             	sub    eax,0x2f
     8c9:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
     8cd:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     8d1:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
     8d5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     8d9:	c7 44 24 08 0f 00 00 	mov    DWORD PTR [esp+0x8],0xf
     8e0:	00 
     8e1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     8e4:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     8e8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     8eb:	89 04 24             	mov    DWORD PTR [esp],eax
     8ee:	e8 ba fc ff ff       	call   0x5ad
     8f3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     8f6:	8d 58 fd             	lea    ebx,[eax-0x3]
     8f9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     8fc:	8d 48 fc             	lea    ecx,[eax-0x4]
     8ff:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     902:	8d 50 fd             	lea    edx,[eax-0x3]
     905:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     908:	83 e8 2f             	sub    eax,0x2f
     90b:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
     90f:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     913:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
     917:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     91b:	c7 44 24 08 07 00 00 	mov    DWORD PTR [esp+0x8],0x7
     922:	00 
     923:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     926:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     92a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     92d:	89 04 24             	mov    DWORD PTR [esp],eax
     930:	e8 78 fc ff ff       	call   0x5ad
     935:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     938:	8d 58 fd             	lea    ebx,[eax-0x3]
     93b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     93e:	8d 48 fd             	lea    ecx,[eax-0x3]
     941:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     944:	8d 50 e8             	lea    edx,[eax-0x18]
     947:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     94a:	83 e8 03             	sub    eax,0x3
     94d:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
     951:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
     955:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
     959:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     95d:	c7 44 24 08 07 00 00 	mov    DWORD PTR [esp+0x8],0x7
     964:	00 
     965:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     968:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     96c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     96f:	89 04 24             	mov    DWORD PTR [esp],eax
     972:	e8 36 fc ff ff       	call   0x5ad
     977:	83 c4 1c             	add    esp,0x1c
     97a:	5b                   	pop    ebx
     97b:	5d                   	pop    ebp
     97c:	c3                   	ret    
     97d:	55                   	push   ebp
     97e:	89 e5                	mov    ebp,esp
     980:	83 ec 14             	sub    esp,0x14
     983:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
     986:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
     989:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
     990:	e9 d9 00 00 00       	jmp    0xa6e
     995:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
     998:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
     99b:	01 d0                	add    eax,edx
     99d:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
     9a1:	89 c2                	mov    edx,eax
     9a3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     9a6:	01 d0                	add    eax,edx
     9a8:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
     9ab:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
     9ae:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
     9b1:	03 45 1c             	add    eax,DWORD PTR [ebp+0x1c]
     9b4:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     9b7:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
     9ba:	80 7d f7 00          	cmp    BYTE PTR [ebp-0x9],0x0
     9be:	79 09                	jns    0x9c9
     9c0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     9c3:	0f b6 55 ec          	movzx  edx,BYTE PTR [ebp-0x14]
     9c7:	88 10                	mov    BYTE PTR [eax],dl
     9c9:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     9cd:	83 e0 40             	and    eax,0x40
     9d0:	85 c0                	test   eax,eax
     9d2:	74 0c                	je     0x9e0
     9d4:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     9d7:	8d 50 01             	lea    edx,[eax+0x1]
     9da:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     9de:	88 02                	mov    BYTE PTR [edx],al
     9e0:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     9e4:	83 e0 20             	and    eax,0x20
     9e7:	85 c0                	test   eax,eax
     9e9:	74 0c                	je     0x9f7
     9eb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     9ee:	8d 50 02             	lea    edx,[eax+0x2]
     9f1:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     9f5:	88 02                	mov    BYTE PTR [edx],al
     9f7:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     9fb:	83 e0 10             	and    eax,0x10
     9fe:	85 c0                	test   eax,eax
     a00:	74 0c                	je     0xa0e
     a02:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     a05:	8d 50 03             	lea    edx,[eax+0x3]
     a08:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     a0c:	88 02                	mov    BYTE PTR [edx],al
     a0e:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     a12:	83 e0 08             	and    eax,0x8
     a15:	85 c0                	test   eax,eax
     a17:	74 0c                	je     0xa25
     a19:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     a1c:	8d 50 04             	lea    edx,[eax+0x4]
     a1f:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     a23:	88 02                	mov    BYTE PTR [edx],al
     a25:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     a29:	83 e0 04             	and    eax,0x4
     a2c:	85 c0                	test   eax,eax
     a2e:	74 0c                	je     0xa3c
     a30:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     a33:	8d 50 05             	lea    edx,[eax+0x5]
     a36:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     a3a:	88 02                	mov    BYTE PTR [edx],al
     a3c:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     a40:	83 e0 02             	and    eax,0x2
     a43:	85 c0                	test   eax,eax
     a45:	74 0c                	je     0xa53
     a47:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     a4a:	8d 50 06             	lea    edx,[eax+0x6]
     a4d:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     a51:	88 02                	mov    BYTE PTR [edx],al
     a53:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
     a57:	83 e0 01             	and    eax,0x1
     a5a:	84 c0                	test   al,al
     a5c:	74 0c                	je     0xa6a
     a5e:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     a61:	8d 50 07             	lea    edx,[eax+0x7]
     a64:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
     a68:	88 02                	mov    BYTE PTR [edx],al
     a6a:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
     a6e:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
     a72:	0f 8e 1d ff ff ff    	jle    0x995
     a78:	c9                   	leave  
     a79:	c3                   	ret    
     a7a:	55                   	push   ebp
     a7b:	89 e5                	mov    ebp,esp
     a7d:	83 ec 1c             	sub    esp,0x1c
     a80:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
     a83:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
     a86:	eb 46                	jmp    0xace
     a88:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
     a8b:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     a8e:	0f b6 c0             	movzx  eax,al
     a91:	c1 e0 04             	shl    eax,0x4
     a94:	8d 90 20 00 31 00    	lea    edx,[eax+0x310020]
     a9a:	0f be 45 fc          	movsx  eax,BYTE PTR [ebp-0x4]
     a9e:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
     aa2:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
     aa6:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
     aa9:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
     aad:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     ab0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
     ab4:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     ab7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     abb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     abe:	89 04 24             	mov    DWORD PTR [esp],eax
     ac1:	e8 b7 fe ff ff       	call   0x97d
     ac6:	83 45 10 08          	add    DWORD PTR [ebp+0x10],0x8
     aca:	83 45 1c 01          	add    DWORD PTR [ebp+0x1c],0x1
     ace:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
     ad1:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     ad4:	84 c0                	test   al,al
     ad6:	75 b0                	jne    0xa88
     ad8:	c9                   	leave  
     ad9:	c3                   	ret    
     ada:	55                   	push   ebp
     adb:	89 e5                	mov    ebp,esp
     add:	83 ec 14             	sub    esp,0x14
     ae0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     ae3:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
     ae6:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
     aed:	e9 86 00 00 00       	jmp    0xb78
     af2:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
     af9:	eb 73                	jmp    0xb6e
     afb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     afe:	c1 e0 04             	shl    eax,0x4
     b01:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     b04:	05 20 10 31 00       	add    eax,0x311020
     b09:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     b0c:	3c 2a                	cmp    al,0x2a
     b0e:	75 0f                	jne    0xb1f
     b10:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     b13:	c1 e0 04             	shl    eax,0x4
     b16:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     b19:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
     b1c:	c6 00 00             	mov    BYTE PTR [eax],0x0
     b1f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     b22:	c1 e0 04             	shl    eax,0x4
     b25:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     b28:	05 20 10 31 00       	add    eax,0x311020
     b2d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     b30:	3c 4f                	cmp    al,0x4f
     b32:	75 0f                	jne    0xb43
     b34:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     b37:	c1 e0 04             	shl    eax,0x4
     b3a:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     b3d:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
     b40:	c6 00 07             	mov    BYTE PTR [eax],0x7
     b43:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     b46:	c1 e0 04             	shl    eax,0x4
     b49:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     b4c:	05 20 10 31 00       	add    eax,0x311020
     b51:	0f b6 00             	movzx  eax,BYTE PTR [eax]
     b54:	3c 2e                	cmp    al,0x2e
     b56:	75 12                	jne    0xb6a
     b58:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     b5b:	c1 e0 04             	shl    eax,0x4
     b5e:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
     b61:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
     b64:	0f b6 55 ec          	movzx  edx,BYTE PTR [ebp-0x14]
     b68:	88 10                	mov    BYTE PTR [eax],dl
     b6a:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
     b6e:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
     b72:	7e 87                	jle    0xafb
     b74:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
     b78:	83 7d f8 0f          	cmp    DWORD PTR [ebp-0x8],0xf
     b7c:	0f 8e 70 ff ff ff    	jle    0xaf2
     b82:	c9                   	leave  
     b83:	c3                   	ret    
     b84:	55                   	push   ebp
     b85:	89 e5                	mov    ebp,esp
     b87:	83 ec 10             	sub    esp,0x10
     b8a:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
     b91:	eb 44                	jmp    0xbd7
     b93:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
     b9a:	eb 2f                	jmp    0xbcb
     b9c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     b9f:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
     ba2:	01 d0                	add    eax,edx
     ba4:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
     ba8:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
     bab:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
     bae:	01 ca                	add    edx,ecx
     bb0:	01 d0                	add    eax,edx
     bb2:	03 45 08             	add    eax,DWORD PTR [ebp+0x8]
     bb5:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
     bb8:	0f af 55 24          	imul   edx,DWORD PTR [ebp+0x24]
     bbc:	03 55 fc             	add    edx,DWORD PTR [ebp-0x4]
     bbf:	03 55 20             	add    edx,DWORD PTR [ebp+0x20]
     bc2:	0f b6 12             	movzx  edx,BYTE PTR [edx]
     bc5:	88 10                	mov    BYTE PTR [eax],dl
     bc7:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
     bcb:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
     bce:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
     bd1:	7c c9                	jl     0xb9c
     bd3:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
     bd7:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
     bda:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
     bdd:	7c b4                	jl     0xb93
     bdf:	c9                   	leave  
     be0:	c3                   	ret    
     be1:	00 00                	add    BYTE PTR [eax],al
     be3:	00 55 89             	add    BYTE PTR [ebp-0x77],dl
     be6:	e5 83                	in     eax,0x83
     be8:	ec                   	in     al,dx
     be9:	28 c7                	sub    bh,al
     beb:	45                   	inc    ebp
     bec:	f0 00 00             	lock add BYTE PTR [eax],al
     bef:	27                   	daa    
     bf0:	00 c7                	add    bh,al
     bf2:	45                   	inc    ebp
     bf3:	ec                   	in     al,dx
     bf4:	00 f8                	add    al,bh
     bf6:	26                   	es
     bf7:	00 c7                	add    bh,al
     bf9:	45                   	inc    ebp
     bfa:	f4                   	hlt    
     bfb:	00 00                	add    BYTE PTR [eax],al
     bfd:	00 00                	add    BYTE PTR [eax],al
     bff:	eb 2d                	jmp    0xc2e
     c01:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     c04:	c1 e0 03             	shl    eax,0x3
     c07:	03 45 f0             	add    eax,DWORD PTR [ebp-0x10]
     c0a:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     c11:	00 
     c12:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     c19:	00 
     c1a:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
     c21:	00 
     c22:	89 04 24             	mov    DWORD PTR [esp],eax
     c25:	e8 40 01 00 00       	call   0xd6a
     c2a:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
     c2e:	81 7d f4 ff 1f 00 00 	cmp    DWORD PTR [ebp-0xc],0x1fff
     c35:	7e ca                	jle    0xc01
     c37:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
     c3a:	83 c0 08             	add    eax,0x8
     c3d:	c7 44 24 0c 92 40 00 	mov    DWORD PTR [esp+0xc],0x4092
     c44:	00 
     c45:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     c4c:	00 
     c4d:	c7 44 24 04 ff ff ff 	mov    DWORD PTR [esp+0x4],0xffffffff
     c54:	ff 
     c55:	89 04 24             	mov    DWORD PTR [esp],eax
     c58:	e8 0d 01 00 00       	call   0xd6a
     c5d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
     c60:	83 c0 10             	add    eax,0x10
     c63:	c7 44 24 0c 9a 40 00 	mov    DWORD PTR [esp+0xc],0x409a
     c6a:	00 
     c6b:	c7 44 24 08 00 00 28 	mov    DWORD PTR [esp+0x8],0x280000
     c72:	00 
     c73:	c7 44 24 04 ff ff 07 	mov    DWORD PTR [esp+0x4],0x7ffff
     c7a:	00 
     c7b:	89 04 24             	mov    DWORD PTR [esp],eax
     c7e:	e8 e7 00 00 00       	call   0xd6a
     c83:	c7 44 24 04 00 00 27 	mov    DWORD PTR [esp+0x4],0x270000
     c8a:	00 
     c8b:	c7 04 24 ff ff 00 00 	mov    DWORD PTR [esp],0xffff
     c92:	e8 e8 f7 ff ff       	call   0x47f
     c97:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
     c9e:	eb 2d                	jmp    0xccd
     ca0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
     ca3:	c1 e0 03             	shl    eax,0x3
     ca6:	03 45 ec             	add    eax,DWORD PTR [ebp-0x14]
     ca9:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
     cb0:	00 
     cb1:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
     cb8:	00 
     cb9:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
     cc0:	00 
     cc1:	89 04 24             	mov    DWORD PTR [esp],eax
     cc4:	e8 1b 01 00 00       	call   0xde4
     cc9:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
     ccd:	81 7d f4 ff 00 00 00 	cmp    DWORD PTR [ebp-0xc],0xff
     cd4:	7e ca                	jle    0xca0
     cd6:	c7 44 24 04 00 f8 26 	mov    DWORD PTR [esp+0x4],0x26f800
     cdd:	00 
     cde:	c7 04 24 ff 07 00 00 	mov    DWORD PTR [esp],0x7ff
     ce5:	e8 a5 f7 ff ff       	call   0x48f
     cea:	b8 9f 04 00 00       	mov    eax,0x49f
     cef:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
     cf2:	81 c2 08 01 00 00    	add    edx,0x108
     cf8:	c7 44 24 0c 8e 00 00 	mov    DWORD PTR [esp+0xc],0x8e
     cff:	00 
     d00:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
     d07:	00 
     d08:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     d0c:	89 14 24             	mov    DWORD PTR [esp],edx
     d0f:	e8 d0 00 00 00       	call   0xde4
     d14:	b8 b6 04 00 00       	mov    eax,0x4b6
     d19:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
     d1c:	81 c2 38 01 00 00    	add    edx,0x138
     d22:	c7 44 24 0c 8e 00 00 	mov    DWORD PTR [esp+0xc],0x8e
     d29:	00 
     d2a:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
     d31:	00 
     d32:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     d36:	89 14 24             	mov    DWORD PTR [esp],edx
     d39:	e8 a6 00 00 00       	call   0xde4
     d3e:	b8 cd 04 00 00       	mov    eax,0x4cd
     d43:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
     d46:	81 c2 60 01 00 00    	add    edx,0x160
     d4c:	c7 44 24 0c 8e 00 00 	mov    DWORD PTR [esp+0xc],0x8e
     d53:	00 
     d54:	c7 44 24 08 10 00 00 	mov    DWORD PTR [esp+0x8],0x10
     d5b:	00 
     d5c:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     d60:	89 14 24             	mov    DWORD PTR [esp],edx
     d63:	e8 7c 00 00 00       	call   0xde4
     d68:	c9                   	leave  
     d69:	c3                   	ret    
     d6a:	55                   	push   ebp
     d6b:	89 e5                	mov    ebp,esp
     d6d:	81 7d 0c ff ff 0f 00 	cmp    DWORD PTR [ebp+0xc],0xfffff
     d74:	76 10                	jbe    0xd86
     d76:	81 4d 14 00 80 00 00 	or     DWORD PTR [ebp+0x14],0x8000
     d7d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     d80:	c1 e8 0c             	shr    eax,0xc
     d83:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
     d86:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     d89:	89 c2                	mov    edx,eax
     d8b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     d8e:	66 89 10             	mov    WORD PTR [eax],dx
     d91:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     d94:	89 c2                	mov    edx,eax
     d96:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     d99:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
     d9d:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     da0:	c1 f8 10             	sar    eax,0x10
     da3:	89 c2                	mov    edx,eax
     da5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     da8:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
     dab:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
     dae:	89 c2                	mov    edx,eax
     db0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     db3:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
     db6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     db9:	c1 e8 10             	shr    eax,0x10
     dbc:	89 c2                	mov    edx,eax
     dbe:	83 e2 0f             	and    edx,0xf
     dc1:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
     dc4:	c1 f8 08             	sar    eax,0x8
     dc7:	83 e0 f0             	and    eax,0xfffffff0
     dca:	09 d0                	or     eax,edx
     dcc:	89 c2                	mov    edx,eax
     dce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     dd1:	88 50 06             	mov    BYTE PTR [eax+0x6],dl
     dd4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     dd7:	c1 e8 18             	shr    eax,0x18
     dda:	89 c2                	mov    edx,eax
     ddc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     ddf:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
     de2:	5d                   	pop    ebp
     de3:	c3                   	ret    
     de4:	55                   	push   ebp
     de5:	89 e5                	mov    ebp,esp
     de7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     dea:	89 c2                	mov    edx,eax
     dec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     def:	66 89 10             	mov    WORD PTR [eax],dx
     df2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
     df5:	89 c2                	mov    edx,eax
     df7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     dfa:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
     dfe:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
     e01:	c1 f8 08             	sar    eax,0x8
     e04:	89 c2                	mov    edx,eax
     e06:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     e09:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
     e0c:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
     e0f:	89 c2                	mov    edx,eax
     e11:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     e14:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
     e17:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
     e1a:	c1 e8 10             	shr    eax,0x10
     e1d:	89 c2                	mov    edx,eax
     e1f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     e22:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
     e26:	5d                   	pop    ebp
     e27:	c3                   	ret    
     e28:	55                   	push   ebp
     e29:	89 e5                	mov    ebp,esp
     e2b:	83 ec 18             	sub    esp,0x18
     e2e:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
     e35:	00 
     e36:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
     e3d:	e8 14 f6 ff ff       	call   0x456
     e42:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
     e49:	00 
     e4a:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
     e51:	e8 00 f6 ff ff       	call   0x456
     e56:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
     e5d:	00 
     e5e:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
     e65:	e8 ec f5 ff ff       	call   0x456
     e6a:	c7 44 24 04 20 00 00 	mov    DWORD PTR [esp+0x4],0x20
     e71:	00 
     e72:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
     e79:	e8 d8 f5 ff ff       	call   0x456
     e7e:	c7 44 24 04 04 00 00 	mov    DWORD PTR [esp+0x4],0x4
     e85:	00 
     e86:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
     e8d:	e8 c4 f5 ff ff       	call   0x456
     e92:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
     e99:	00 
     e9a:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
     ea1:	e8 b0 f5 ff ff       	call   0x456
     ea6:	c7 44 24 04 11 00 00 	mov    DWORD PTR [esp+0x4],0x11
     ead:	00 
     eae:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
     eb5:	e8 9c f5 ff ff       	call   0x456
     eba:	c7 44 24 04 28 00 00 	mov    DWORD PTR [esp+0x4],0x28
     ec1:	00 
     ec2:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
     ec9:	e8 88 f5 ff ff       	call   0x456
     ece:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
     ed5:	00 
     ed6:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
     edd:	e8 74 f5 ff ff       	call   0x456
     ee2:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
     ee9:	00 
     eea:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
     ef1:	e8 60 f5 ff ff       	call   0x456
     ef6:	c7 44 24 04 fb 00 00 	mov    DWORD PTR [esp+0x4],0xfb
     efd:	00 
     efe:	c7 04 24 21 00 00 00 	mov    DWORD PTR [esp],0x21
     f05:	e8 4c f5 ff ff       	call   0x456
     f0a:	c7 44 24 04 ff 00 00 	mov    DWORD PTR [esp+0x4],0xff
     f11:	00 
     f12:	c7 04 24 a1 00 00 00 	mov    DWORD PTR [esp],0xa1
     f19:	e8 38 f5 ff ff       	call   0x456
     f1e:	c9                   	leave  
     f1f:	c3                   	ret    
     f20:	55                   	push   ebp
     f21:	89 e5                	mov    ebp,esp
     f23:	83 ec 28             	sub    esp,0x28
     f26:	c7 44 24 04 61 00 00 	mov    DWORD PTR [esp+0x4],0x61
     f2d:	00 
     f2e:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
     f35:	e8 1c f5 ff ff       	call   0x456
     f3a:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
     f41:	e8 f3 f4 ff ff       	call   0x439
     f46:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
     f49:	0f b6 45 f7          	movzx  eax,BYTE PTR [ebp-0x9]
     f4d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     f51:	c7 04 24 70 11 31 00 	mov    DWORD PTR [esp],0x311170
     f58:	e8 b0 00 00 00       	call   0x100d
     f5d:	c9                   	leave  
     f5e:	c3                   	ret    
     f5f:	55                   	push   ebp
     f60:	89 e5                	mov    ebp,esp
     f62:	83 ec 28             	sub    esp,0x28
     f65:	c7 44 24 04 64 00 00 	mov    DWORD PTR [esp+0x4],0x64
     f6c:	00 
     f6d:	c7 04 24 a0 00 00 00 	mov    DWORD PTR [esp],0xa0
     f74:	e8 dd f4 ff ff       	call   0x456
     f79:	c7 44 24 04 62 00 00 	mov    DWORD PTR [esp+0x4],0x62
     f80:	00 
     f81:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
     f88:	e8 c9 f4 ff ff       	call   0x456
     f8d:	c7 04 24 60 00 00 00 	mov    DWORD PTR [esp],0x60
     f94:	e8 a0 f4 ff ff       	call   0x439
     f99:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
     f9c:	0f b6 45 f7          	movzx  eax,BYTE PTR [ebp-0x9]
     fa0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
     fa4:	c7 04 24 88 11 31 00 	mov    DWORD PTR [esp],0x311188
     fab:	e8 5d 00 00 00       	call   0x100d
     fb0:	c9                   	leave  
     fb1:	c3                   	ret    
     fb2:	55                   	push   ebp
     fb3:	89 e5                	mov    ebp,esp
     fb5:	83 ec 18             	sub    esp,0x18
     fb8:	c7 44 24 04 67 00 00 	mov    DWORD PTR [esp+0x4],0x67
     fbf:	00 
     fc0:	c7 04 24 20 00 00 00 	mov    DWORD PTR [esp],0x20
     fc7:	e8 8a f4 ff ff       	call   0x456
     fcc:	c9                   	leave  
     fcd:	c3                   	ret    
     fce:	00 00                	add    BYTE PTR [eax],al
     fd0:	55                   	push   ebp
     fd1:	89 e5                	mov    ebp,esp
     fd3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     fd6:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
     fd9:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
     fdc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     fdf:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
     fe2:	89 10                	mov    DWORD PTR [eax],edx
     fe4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     fe7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
     fea:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
     fed:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     ff0:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
     ff7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
     ffa:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    1001:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1004:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    100b:	5d                   	pop    ebp
    100c:	c3                   	ret    
    100d:	55                   	push   ebp
    100e:	89 e5                	mov    ebp,esp
    1010:	83 ec 04             	sub    esp,0x4
    1013:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    1016:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
    1019:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    101c:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    101f:	85 c0                	test   eax,eax
    1021:	75 18                	jne    0x103b
    1023:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1026:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
    1029:	89 c2                	mov    edx,eax
    102b:	83 ca 01             	or     edx,0x1
    102e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1031:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
    1034:	b8 ff ff ff ff       	mov    eax,0xffffffff
    1039:	eb 50                	jmp    0x108b
    103b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    103e:	8b 10                	mov    edx,DWORD PTR [eax]
    1040:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1043:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    1046:	01 c2                	add    edx,eax
    1048:	0f b6 45 fc          	movzx  eax,BYTE PTR [ebp-0x4]
    104c:	88 02                	mov    BYTE PTR [edx],al
    104e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1051:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    1054:	8d 50 01             	lea    edx,[eax+0x1]
    1057:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    105a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    105d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1060:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    1063:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1066:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    1069:	39 c2                	cmp    edx,eax
    106b:	75 0a                	jne    0x1077
    106d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1070:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    1077:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    107a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    107d:	8d 50 ff             	lea    edx,[eax-0x1]
    1080:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1083:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    1086:	b8 00 00 00 00       	mov    eax,0x0
    108b:	c9                   	leave  
    108c:	c3                   	ret    
    108d:	55                   	push   ebp
    108e:	89 e5                	mov    ebp,esp
    1090:	83 ec 10             	sub    esp,0x10
    1093:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1096:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    1099:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    109c:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    109f:	39 c2                	cmp    edx,eax
    10a1:	75 07                	jne    0x10aa
    10a3:	b8 ff ff ff ff       	mov    eax,0xffffffff
    10a8:	eb 51                	jmp    0x10fb
    10aa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10ad:	8b 10                	mov    edx,DWORD PTR [eax]
    10af:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10b2:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    10b5:	01 d0                	add    eax,edx
    10b7:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    10ba:	0f b6 c0             	movzx  eax,al
    10bd:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    10c0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10c3:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    10c6:	8d 50 01             	lea    edx,[eax+0x1]
    10c9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10cc:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    10cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10d2:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
    10d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10d8:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    10db:	39 c2                	cmp    edx,eax
    10dd:	75 0a                	jne    0x10e9
    10df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10e2:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    10e9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10ec:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    10ef:	8d 50 01             	lea    edx,[eax+0x1]
    10f2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    10f5:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    10f8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    10fb:	c9                   	leave  
    10fc:	c3                   	ret    
    10fd:	55                   	push   ebp
    10fe:	89 e5                	mov    ebp,esp
    1100:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1103:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    1106:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    1109:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    110c:	89 d1                	mov    ecx,edx
    110e:	29 c1                	sub    ecx,eax
    1110:	89 c8                	mov    eax,ecx
    1112:	5d                   	pop    ebp
    1113:	c3                   	ret    
    1114:	55                   	push   ebp
    1115:	89 e5                	mov    ebp,esp
    1117:	83 ec 0c             	sub    esp,0xc
    111a:	8d 45 10             	lea    eax,[ebp+0x10]
    111d:	50                   	push   eax
    111e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    1121:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    1124:	e8 03 00 00 00       	call   0x112c
    1129:	c9                   	leave  
    112a:	c3                   	ret    
    112b:	00 55 89             	add    BYTE PTR [ebp-0x77],dl
    112e:	e5 57                	in     eax,0x57
    1130:	56                   	push   esi
    1131:	53                   	push   ebx
    1132:	83 ec 5c             	sub    esp,0x5c
    1135:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
    1138:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
    113b:	8d 5d e6             	lea    ebx,[ebp-0x1a]
    113e:	c6 45 e6 00          	mov    BYTE PTR [ebp-0x1a],0x0
    1142:	89 5d b4             	mov    DWORD PTR [ebp-0x4c],ebx
    1145:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    1148:	8a 10                	mov    dl,BYTE PTR [eax]
    114a:	8d 48 01             	lea    ecx,[eax+0x1]
    114d:	89 4d 0c             	mov    DWORD PTR [ebp+0xc],ecx
    1150:	80 fa 25             	cmp    dl,0x25
    1153:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    1156:	74 18                	je     0x1170
    1158:	8a 45 e7             	mov    al,BYTE PTR [ebp-0x19]
    115b:	88 06                	mov    BYTE PTR [esi],al
    115d:	46                   	inc    esi
    115e:	84 c0                	test   al,al
    1160:	75 e3                	jne    0x1145
    1162:	2b 75 08             	sub    esi,DWORD PTR [ebp+0x8]
    1165:	8d 65 f4             	lea    esp,[ebp-0xc]
    1168:	5b                   	pop    ebx
    1169:	8d 46 ff             	lea    eax,[esi-0x1]
    116c:	5e                   	pop    esi
    116d:	5f                   	pop    edi
    116e:	5d                   	pop    ebp
    116f:	c3                   	ret    
    1170:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
    1173:	83 c0 02             	add    eax,0x2
    1176:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    1179:	c6 45 ae 00          	mov    BYTE PTR [ebp-0x52],0x0
    117d:	c6 45 af 00          	mov    BYTE PTR [ebp-0x51],0x0
    1181:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    1184:	8a 45 e7             	mov    al,BYTE PTR [ebp-0x19]
    1187:	3c 2d                	cmp    al,0x2d
    1189:	74 0a                	je     0x1195
    118b:	3c 30                	cmp    al,0x30
    118d:	75 18                	jne    0x11a7
    118f:	c6 45 ae 01          	mov    BYTE PTR [ebp-0x52],0x1
    1193:	eb 04                	jmp    0x1199
    1195:	c6 45 af 01          	mov    BYTE PTR [ebp-0x51],0x1
    1199:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    119c:	8a 10                	mov    dl,BYTE PTR [eax]
    119e:	40                   	inc    eax
    119f:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    11a2:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    11a5:	eb dd                	jmp    0x1184
    11a7:	8d 50 cf             	lea    edx,[eax-0x31]
    11aa:	80 fa 08             	cmp    dl,0x8
    11ad:	77 26                	ja     0x11d5
    11af:	8d 45 e7             	lea    eax,[ebp-0x19]
    11b2:	52                   	push   edx
    11b3:	50                   	push   eax
    11b4:	6a 0a                	push   0xa
    11b6:	8d 45 0c             	lea    eax,[ebp+0xc]
    11b9:	50                   	push   eax
    11ba:	ff 4d 0c             	dec    DWORD PTR [ebp+0xc]
    11bd:	e8 9d 02 00 00       	call   0x145f
    11c2:	83 c4 10             	add    esp,0x10
    11c5:	89 c3                	mov    ebx,eax
    11c7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    11ca:	8a 10                	mov    dl,BYTE PTR [eax]
    11cc:	40                   	inc    eax
    11cd:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    11d0:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    11d3:	eb 17                	jmp    0x11ec
    11d5:	31 db                	xor    ebx,ebx
    11d7:	3c 2a                	cmp    al,0x2a
    11d9:	75 11                	jne    0x11ec
    11db:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    11de:	8b 1f                	mov    ebx,DWORD PTR [edi]
    11e0:	83 c7 04             	add    edi,0x4
    11e3:	8a 10                	mov    dl,BYTE PTR [eax]
    11e5:	40                   	inc    eax
    11e6:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    11e9:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    11ec:	80 7d e7 2e          	cmp    BYTE PTR [ebp-0x19],0x2e
    11f0:	b9 ff ff ff 7f       	mov    ecx,0x7fffffff
    11f5:	75 5f                	jne    0x1256
    11f7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    11fa:	8a 10                	mov    dl,BYTE PTR [eax]
    11fc:	88 55 a7             	mov    BYTE PTR [ebp-0x59],dl
    11ff:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    1202:	8d 50 01             	lea    edx,[eax+0x1]
    1205:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
    1208:	8a 55 a7             	mov    dl,BYTE PTR [ebp-0x59]
    120b:	83 ea 31             	sub    edx,0x31
    120e:	80 fa 08             	cmp    dl,0x8
    1211:	77 2c                	ja     0x123f
    1213:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    1216:	50                   	push   eax
    1217:	8d 45 e7             	lea    eax,[ebp-0x19]
    121a:	50                   	push   eax
    121b:	6a 0a                	push   0xa
    121d:	8d 45 0c             	lea    eax,[ebp+0xc]
    1220:	50                   	push   eax
    1221:	89 4d a8             	mov    DWORD PTR [ebp-0x58],ecx
    1224:	e8 36 02 00 00       	call   0x145f
    1229:	83 c4 10             	add    esp,0x10
    122c:	8b 4d a8             	mov    ecx,DWORD PTR [ebp-0x58]
    122f:	89 c3                	mov    ebx,eax
    1231:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    1234:	8a 10                	mov    dl,BYTE PTR [eax]
    1236:	40                   	inc    eax
    1237:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    123a:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    123d:	eb 17                	jmp    0x1256
    123f:	80 7d a7 2a          	cmp    BYTE PTR [ebp-0x59],0x2a
    1243:	75 11                	jne    0x1256
    1245:	8a 50 01             	mov    dl,BYTE PTR [eax+0x1]
    1248:	83 c0 02             	add    eax,0x2
    124b:	8b 0f                	mov    ecx,DWORD PTR [edi]
    124d:	83 c7 04             	add    edi,0x4
    1250:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    1253:	88 55 e7             	mov    BYTE PTR [ebp-0x19],dl
    1256:	8a 45 e7             	mov    al,BYTE PTR [ebp-0x19]
    1259:	3c 73                	cmp    al,0x73
    125b:	75 5a                	jne    0x12b7
    125d:	81 f9 ff ff ff 7f    	cmp    ecx,0x7fffffff
    1263:	0f 85 be 01 00 00    	jne    0x1427
    1269:	8b 17                	mov    edx,DWORD PTR [edi]
    126b:	8d 47 04             	lea    eax,[edi+0x4]
    126e:	83 c9 ff             	or     ecx,0xffffffff
    1271:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
    1274:	31 c0                	xor    eax,eax
    1276:	89 d7                	mov    edi,edx
    1278:	f2 ae                	repnz scas al,BYTE PTR es:[edi]
    127a:	f7 d1                	not    ecx
    127c:	49                   	dec    ecx
    127d:	80 3a 00             	cmp    BYTE PTR [edx],0x0
    1280:	74 29                	je     0x12ab
    1282:	c6 45 e7 20          	mov    BYTE PTR [ebp-0x19],0x20
    1286:	80 7d af 00          	cmp    BYTE PTR [ebp-0x51],0x0
    128a:	75 0d                	jne    0x1299
    128c:	8a 45 e7             	mov    al,BYTE PTR [ebp-0x19]
    128f:	eb 04                	jmp    0x1295
    1291:	88 06                	mov    BYTE PTR [esi],al
    1293:	4b                   	dec    ebx
    1294:	46                   	inc    esi
    1295:	39 d9                	cmp    ecx,ebx
    1297:	7c f8                	jl     0x1291
    1299:	8a 02                	mov    al,BYTE PTR [edx]
    129b:	42                   	inc    edx
    129c:	88 06                	mov    BYTE PTR [esi],al
    129e:	46                   	inc    esi
    129f:	80 3a 00             	cmp    BYTE PTR [edx],0x0
    12a2:	75 f5                	jne    0x1299
    12a4:	eb 05                	jmp    0x12ab
    12a6:	c6 06 20             	mov    BYTE PTR [esi],0x20
    12a9:	4b                   	dec    ebx
    12aa:	46                   	inc    esi
    12ab:	39 d9                	cmp    ecx,ebx
    12ad:	7c f7                	jl     0x12a6
    12af:	8b 7d b0             	mov    edi,DWORD PTR [ebp-0x50]
    12b2:	e9 8e fe ff ff       	jmp    0x1145
    12b7:	3c 6c                	cmp    al,0x6c
    12b9:	75 1c                	jne    0x12d7
    12bb:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    12be:	8a 02                	mov    al,BYTE PTR [edx]
    12c0:	42                   	inc    edx
    12c1:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
    12c4:	3c 78                	cmp    al,0x78
    12c6:	88 45 e7             	mov    BYTE PTR [ebp-0x19],al
    12c9:	74 0c                	je     0x12d7
    12cb:	3c 64                	cmp    al,0x64
    12cd:	74 08                	je     0x12d7
    12cf:	3c 75                	cmp    al,0x75
    12d1:	0f 85 50 01 00 00    	jne    0x1427
    12d7:	8a 45 e7             	mov    al,BYTE PTR [ebp-0x19]
    12da:	3c 75                	cmp    al,0x75
    12dc:	75 0a                	jne    0x12e8
    12de:	8d 57 04             	lea    edx,[edi+0x4]
    12e1:	8b 07                	mov    eax,DWORD PTR [edi]
    12e3:	89 55 b0             	mov    DWORD PTR [ebp-0x50],edx
    12e6:	eb 17                	jmp    0x12ff
    12e8:	3c 64                	cmp    al,0x64
    12ea:	75 6f                	jne    0x135b
    12ec:	8d 47 04             	lea    eax,[edi+0x4]
    12ef:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
    12f2:	8b 07                	mov    eax,DWORD PTR [edi]
    12f4:	85 c0                	test   eax,eax
    12f6:	79 07                	jns    0x12ff
    12f8:	c6 06 2d             	mov    BYTE PTR [esi],0x2d
    12fb:	f7 d8                	neg    eax
    12fd:	46                   	inc    esi
    12fe:	4b                   	dec    ebx
    12ff:	81 f9 ff ff ff 7f    	cmp    ecx,0x7fffffff
    1305:	0f 85 1c 01 00 00    	jne    0x1427
    130b:	85 db                	test   ebx,ebx
    130d:	ba 01 00 00 00       	mov    edx,0x1
    1312:	0f 4e da             	cmovle ebx,edx
    1315:	8d 4d e6             	lea    ecx,[ebp-0x1a]
    1318:	89 5d 9c             	mov    DWORD PTR [ebp-0x64],ebx
    131b:	eb 02                	jmp    0x131f
    131d:	89 f9                	mov    ecx,edi
    131f:	31 d2                	xor    edx,edx
    1321:	bb 0a 00 00 00       	mov    ebx,0xa
    1326:	f7 f3                	div    ebx
    1328:	8d 79 ff             	lea    edi,[ecx-0x1]
    132b:	89 55 a0             	mov    DWORD PTR [ebp-0x60],edx
    132e:	8a 55 a0             	mov    dl,BYTE PTR [ebp-0x60]
    1331:	83 c2 30             	add    edx,0x30
    1334:	85 c0                	test   eax,eax
    1336:	88 51 ff             	mov    BYTE PTR [ecx-0x1],dl
    1339:	75 e2                	jne    0x131d
    133b:	8b 5d 9c             	mov    ebx,DWORD PTR [ebp-0x64]
    133e:	89 fa                	mov    edx,edi
    1340:	8b 4d b4             	mov    ecx,DWORD PTR [ebp-0x4c]
    1343:	b0 30                	mov    al,0x30
    1345:	bf 20 00 00 00       	mov    edi,0x20
    134a:	29 d1                	sub    ecx,edx
    134c:	80 7d ae 00          	cmp    BYTE PTR [ebp-0x52],0x0
    1350:	0f 44 c7             	cmove  eax,edi
    1353:	88 45 e7             	mov    BYTE PTR [ebp-0x19],al
    1356:	e9 2b ff ff ff       	jmp    0x1286
    135b:	3c 69                	cmp    al,0x69
    135d:	74 8d                	je     0x12ec
    135f:	3c 25                	cmp    al,0x25
    1361:	0f 84 f1 fd ff ff    	je     0x1158
    1367:	3c 78                	cmp    al,0x78
    1369:	75 2f                	jne    0x139a
    136b:	b9 50 11 31 00       	mov    ecx,0x311150
    1370:	eb 05                	jmp    0x1377
    1372:	b9 60 11 31 00       	mov    ecx,0x311160
    1377:	8d 47 04             	lea    eax,[edi+0x4]
    137a:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
    137d:	8b 07                	mov    eax,DWORD PTR [edi]
    137f:	8d 55 e6             	lea    edx,[ebp-0x1a]
    1382:	89 5d a0             	mov    DWORD PTR [ebp-0x60],ebx
    1385:	89 c7                	mov    edi,eax
    1387:	4a                   	dec    edx
    1388:	83 e7 0f             	and    edi,0xf
    138b:	8a 1c 39             	mov    bl,BYTE PTR [ecx+edi*1]
    138e:	c1 e8 04             	shr    eax,0x4
    1391:	88 1a                	mov    BYTE PTR [edx],bl
    1393:	75 f0                	jne    0x1385
    1395:	8b 5d a0             	mov    ebx,DWORD PTR [ebp-0x60]
    1398:	eb a6                	jmp    0x1340
    139a:	3c 58                	cmp    al,0x58
    139c:	74 d4                	je     0x1372
    139e:	3c 70                	cmp    al,0x70
    13a0:	75 2f                	jne    0x13d1
    13a2:	8b 17                	mov    edx,DWORD PTR [edi]
    13a4:	8d 47 04             	lea    eax,[edi+0x4]
    13a7:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
    13aa:	b8 08 00 00 00       	mov    eax,0x8
    13af:	89 d1                	mov    ecx,edx
    13b1:	83 e1 0f             	and    ecx,0xf
    13b4:	8a 89 60 11 31 00    	mov    cl,BYTE PTR [ecx+0x311160]
    13ba:	c1 fa 04             	sar    edx,0x4
    13bd:	88 4c 05 dd          	mov    BYTE PTR [ebp+eax*1-0x23],cl
    13c1:	48                   	dec    eax
    13c2:	75 eb                	jne    0x13af
    13c4:	b9 08 00 00 00       	mov    ecx,0x8
    13c9:	8d 55 de             	lea    edx,[ebp-0x22]
    13cc:	e9 b5 fe ff ff       	jmp    0x1286
    13d1:	3c 6f                	cmp    al,0x6f
    13d3:	75 23                	jne    0x13f8
    13d5:	8b 07                	mov    eax,DWORD PTR [edi]
    13d7:	8d 57 04             	lea    edx,[edi+0x4]
    13da:	89 55 b0             	mov    DWORD PTR [ebp-0x50],edx
    13dd:	8d 55 e6             	lea    edx,[ebp-0x1a]
    13e0:	89 c1                	mov    ecx,eax
    13e2:	4a                   	dec    edx
    13e3:	83 e1 07             	and    ecx,0x7
    13e6:	8a 89 50 11 31 00    	mov    cl,BYTE PTR [ecx+0x311150]
    13ec:	c1 e8 03             	shr    eax,0x3
    13ef:	88 0a                	mov    BYTE PTR [edx],cl
    13f1:	75 ed                	jne    0x13e0
    13f3:	e9 48 ff ff ff       	jmp    0x1340
    13f8:	3c 66                	cmp    al,0x66
    13fa:	75 2b                	jne    0x1427
    13fc:	81 f9 ff ff ff 7f    	cmp    ecx,0x7fffffff
    1402:	b8 06 00 00 00       	mov    eax,0x6
    1407:	0f 44 c8             	cmove  ecx,eax
    140a:	8d 41 01             	lea    eax,[ecx+0x1]
    140d:	83 c1 02             	add    ecx,0x2
    1410:	39 d8                	cmp    eax,ebx
    1412:	0f 4d d9             	cmovge ebx,ecx
    1415:	31 c0                	xor    eax,eax
    1417:	c6 04 06 23          	mov    BYTE PTR [esi+eax*1],0x23
    141b:	40                   	inc    eax
    141c:	39 d8                	cmp    eax,ebx
    141e:	75 f7                	jne    0x1417
    1420:	01 c6                	add    esi,eax
    1422:	e9 1e fd ff ff       	jmp    0x1145
    1427:	eb fe                	jmp    0x1427
    1429:	00 00                	add    BYTE PTR [eax],al
    142b:	00 8d 48 9f 8d 50    	add    BYTE PTR [ebp+0x508d9f48],cl
    1431:	e0 83                	loopne 0x13b6
    1433:	f9                   	stc    
    1434:	19 0f                	sbb    DWORD PTR [edi],ecx
    1436:	46                   	inc    esi
    1437:	c2 b2 02             	ret    0x2b2
    143a:	55                   	push   ebp
    143b:	83 f8 42             	cmp    eax,0x42
    143e:	89 e5                	mov    ebp,esp
    1440:	74 18                	je     0x145a
    1442:	83 f8 44             	cmp    eax,0x44
    1445:	b2 0a                	mov    dl,0xa
    1447:	74 11                	je     0x145a
    1449:	83 f8 4f             	cmp    eax,0x4f
    144c:	b2 08                	mov    dl,0x8
    144e:	74 0a                	je     0x145a
    1450:	31 d2                	xor    edx,edx
    1452:	83 f8 58             	cmp    eax,0x58
    1455:	b0 10                	mov    al,0x10
    1457:	0f 44 d0             	cmove  edx,eax
    145a:	0f be c2             	movsx  eax,dl
    145d:	5d                   	pop    ebp
    145e:	c3                   	ret    
    145f:	55                   	push   ebp
    1460:	89 e5                	mov    ebp,esp
    1462:	57                   	push   edi
    1463:	56                   	push   esi
    1464:	53                   	push   ebx
    1465:	83 ec 08             	sub    esp,0x8
    1468:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
    146b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    146e:	85 f6                	test   esi,esi
    1470:	8b 18                	mov    ebx,DWORD PTR [eax]
    1472:	75 1e                	jne    0x1492
    1474:	80 3b 30             	cmp    BYTE PTR [ebx],0x30
    1477:	66 be 0a 00          	mov    si,0xa
    147b:	75 15                	jne    0x1492
    147d:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
    1481:	e8 a6 ff ff ff       	call   0x142c
    1486:	89 c6                	mov    esi,eax
    1488:	85 c0                	test   eax,eax
    148a:	b8 08 00 00 00       	mov    eax,0x8
    148f:	0f 44 f0             	cmove  esi,eax
    1492:	80 3b 30             	cmp    BYTE PTR [ebx],0x30
    1495:	75 11                	jne    0x14a8
    1497:	0f b6 43 01          	movzx  eax,BYTE PTR [ebx+0x1]
    149b:	e8 8c ff ff ff       	call   0x142c
    14a0:	8d 53 02             	lea    edx,[ebx+0x2]
    14a3:	39 c6                	cmp    esi,eax
    14a5:	0f 44 da             	cmove  ebx,edx
    14a8:	83 c8 ff             	or     eax,0xffffffff
    14ab:	31 d2                	xor    edx,edx
    14ad:	f7 f6                	div    esi
    14af:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    14b2:	89 5d ec             	mov    DWORD PTR [ebp-0x14],ebx
    14b5:	c6 02 00             	mov    BYTE PTR [edx],0x0
    14b8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    14bb:	31 c0                	xor    eax,eax
    14bd:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
    14c0:	ba 63 00 00 00       	mov    edx,0x63
    14c5:	8a 0b                	mov    cl,BYTE PTR [ebx]
    14c7:	8d 79 d0             	lea    edi,[ecx-0x30]
    14ca:	89 fb                	mov    ebx,edi
    14cc:	80 fb 09             	cmp    bl,0x9
    14cf:	77 06                	ja     0x14d7
    14d1:	0f b6 d1             	movzx  edx,cl
    14d4:	83 ea 30             	sub    edx,0x30
    14d7:	8d 79 bf             	lea    edi,[ecx-0x41]
    14da:	89 fb                	mov    ebx,edi
    14dc:	80 fb 19             	cmp    bl,0x19
    14df:	77 06                	ja     0x14e7
    14e1:	0f b6 d1             	movzx  edx,cl
    14e4:	83 ea 37             	sub    edx,0x37
    14e7:	8d 79 9f             	lea    edi,[ecx-0x61]
    14ea:	89 fb                	mov    ebx,edi
    14ec:	80 fb 19             	cmp    bl,0x19
    14ef:	77 06                	ja     0x14f7
    14f1:	0f b6 d1             	movzx  edx,cl
    14f4:	83 ea 57             	sub    edx,0x57
    14f7:	39 f2                	cmp    edx,esi
    14f9:	7d 20                	jge    0x151b
    14fb:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
    14fe:	77 0d                	ja     0x150d
    1500:	0f af c6             	imul   eax,esi
    1503:	89 c1                	mov    ecx,eax
    1505:	01 d0                	add    eax,edx
    1507:	f7 d1                	not    ecx
    1509:	39 d1                	cmp    ecx,edx
    150b:	73 09                	jae    0x1516
    150d:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
    1510:	83 c8 ff             	or     eax,0xffffffff
    1513:	c6 03 01             	mov    BYTE PTR [ebx],0x1
    1516:	ff 45 ec             	inc    DWORD PTR [ebp-0x14]
    1519:	eb a2                	jmp    0x14bd
    151b:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
    151e:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    1521:	89 1a                	mov    DWORD PTR [edx],ebx
    1523:	5a                   	pop    edx
    1524:	59                   	pop    ecx
    1525:	5b                   	pop    ebx
    1526:	5e                   	pop    esi
    1527:	5f                   	pop    edi
    1528:	5d                   	pop    ebp
    1529:	c3                   	ret    
    152a:	00 00                	add    BYTE PTR [eax],al
    152c:	28 25 64 2c 20 25    	sub    BYTE PTR ds:0x25202c64,ah
    1532:	64 29 00             	sub    DWORD PTR fs:[eax],eax
    1535:	25 30 32 58 00       	and    eax,0x583230
	...
    155e:	38 44 82 aa          	cmp    BYTE PTR [edx+eax*4-0x56],al
    1562:	aa                   	stos   BYTE PTR es:[edi],al
    1563:	82                   	(bad)  
    1564:	82                   	(bad)  
    1565:	aa                   	stos   BYTE PTR es:[edi],al
    1566:	92                   	xchg   edx,eax
    1567:	44                   	inc    esp
    1568:	38 00                	cmp    BYTE PTR [eax],al
    156a:	00 00                	add    BYTE PTR [eax],al
    156c:	00 00                	add    BYTE PTR [eax],al
    156e:	38 7c fe d6          	cmp    BYTE PTR [esi+edi*8-0x2a],bh
    1572:	d6                   	(bad)  
    1573:	fe                   	(bad)  
    1574:	fe                   	(bad)  
    1575:	d6                   	(bad)  
    1576:	ee                   	out    dx,al
    1577:	7c 38                	jl     0x15b1
    1579:	00 00                	add    BYTE PTR [eax],al
    157b:	00 00                	add    BYTE PTR [eax],al
    157d:	00 00                	add    BYTE PTR [eax],al
    157f:	00 6c fe fe          	add    BYTE PTR [esi+edi*8-0x2],ch
    1583:	fe                   	(bad)  
    1584:	7c 38                	jl     0x15be
    1586:	10 00                	adc    BYTE PTR [eax],al
	...
    1590:	10 38                	adc    BYTE PTR [eax],bh
    1592:	7c fe                	jl     0x1592
    1594:	7c 38                	jl     0x15ce
    1596:	10 00                	adc    BYTE PTR [eax],al
	...
    15a0:	10 38                	adc    BYTE PTR [eax],bh
    15a2:	54                   	push   esp
    15a3:	fe                   	(bad)  
    15a4:	54                   	push   esp
    15a5:	10 38                	adc    BYTE PTR [eax],bh
	...
    15af:	00 10                	add    BYTE PTR [eax],dl
    15b1:	38 7c fe d6          	cmp    BYTE PTR [esi+edi*8-0x2a],bh
    15b5:	10 38                	adc    BYTE PTR [eax],bh
	...
    15bf:	00 00                	add    BYTE PTR [eax],al
    15c1:	00 18                	add    BYTE PTR [eax],bl
    15c3:	3c 3c                	cmp    al,0x3c
    15c5:	18 00                	sbb    BYTE PTR [eax],al
    15c7:	00 00                	add    BYTE PTR [eax],al
    15c9:	00 00                	add    BYTE PTR [eax],al
    15cb:	00 ff                	add    bh,bh
    15cd:	ff                   	(bad)  
    15ce:	ff                   	(bad)  
    15cf:	ff                   	(bad)  
    15d0:	ff                   	(bad)  
    15d1:	ff e7                	jmp    edi
    15d3:	c3                   	ret    
    15d4:	c3                   	ret    
    15d5:	e7 ff                	out    0xff,eax
    15d7:	ff                   	(bad)  
    15d8:	ff                   	(bad)  
    15d9:	ff                   	(bad)  
    15da:	ff                   	(bad)  
    15db:	ff 00                	inc    DWORD PTR [eax]
    15dd:	00 00                	add    BYTE PTR [eax],al
    15df:	00 00                	add    BYTE PTR [eax],al
    15e1:	3c 66                	cmp    al,0x66
    15e3:	42                   	inc    edx
    15e4:	42                   	inc    edx
    15e5:	66                   	data16
    15e6:	3c 00                	cmp    al,0x0
    15e8:	00 00                	add    BYTE PTR [eax],al
    15ea:	00 00                	add    BYTE PTR [eax],al
    15ec:	ff                   	(bad)  
    15ed:	ff                   	(bad)  
    15ee:	ff                   	(bad)  
    15ef:	ff                   	(bad)  
    15f0:	ff c3                	inc    ebx
    15f2:	99                   	cdq    
    15f3:	bd bd 99 c3 ff       	mov    ebp,0xffc399bd
    15f8:	ff                   	(bad)  
    15f9:	ff                   	(bad)  
    15fa:	ff                   	(bad)  
    15fb:	ff 00                	inc    DWORD PTR [eax]
    15fd:	10 38                	adc    BYTE PTR [eax],bh
    15ff:	54                   	push   esp
    1600:	92                   	xchg   edx,eax
    1601:	10 10                	adc    BYTE PTR [eax],dl
    1603:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1607:	82                   	(bad)  
    1608:	44                   	inc    esp
    1609:	38 00                	cmp    BYTE PTR [eax],al
    160b:	00 00                	add    BYTE PTR [eax],al
    160d:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1611:	82                   	(bad)  
    1612:	44                   	inc    esp
    1613:	38 10                	cmp    BYTE PTR [eax],dl
    1615:	10 fe                	adc    dh,bh
    1617:	10 10                	adc    BYTE PTR [eax],dl
    1619:	10 00                	adc    BYTE PTR [eax],al
    161b:	00 00                	add    BYTE PTR [eax],al
    161d:	00 0c 0e             	add    BYTE PTR [esi+ecx*1],cl
    1620:	0b 0b                	or     ecx,DWORD PTR [ebx]
    1622:	0a 08                	or     cl,BYTE PTR [eax]
    1624:	08 18                	or     BYTE PTR [eax],bl
    1626:	78 f8                	js     0x1620
    1628:	70 00                	jo     0x162a
    162a:	00 00                	add    BYTE PTR [eax],al
    162c:	00 00                	add    BYTE PTR [eax],al
    162e:	1f                   	pop    ds
    162f:	1f                   	pop    ds
    1630:	11 11                	adc    DWORD PTR [ecx],edx
    1632:	11 11                	adc    DWORD PTR [ecx],edx
    1634:	11 11                	adc    DWORD PTR [ecx],edx
    1636:	77 ff                	ja     0x1637
    1638:	66                   	data16
    1639:	00 00                	add    BYTE PTR [eax],al
    163b:	00 00                	add    BYTE PTR [eax],al
    163d:	00 00                	add    BYTE PTR [eax],al
    163f:	00 10                	add    BYTE PTR [eax],dl
    1641:	54                   	push   esp
    1642:	38 28                	cmp    BYTE PTR [eax],ch
    1644:	38 54 10 00          	cmp    BYTE PTR [eax+edx*1+0x0],dl
    1648:	00 00                	add    BYTE PTR [eax],al
    164a:	00 00                	add    BYTE PTR [eax],al
    164c:	00 80 c0 e0 f0 f8    	add    BYTE PTR [eax-0x70f1f40],al
    1652:	fc                   	cld    
    1653:	fe                   	(bad)  
    1654:	fc                   	cld    
    1655:	f8                   	clc    
    1656:	f0 e0 c0             	lock loopne 0x1619
    1659:	80 00 00             	add    BYTE PTR [eax],0x0
    165c:	00 02                	add    BYTE PTR [edx],al
    165e:	06                   	push   es
    165f:	0e                   	push   cs
    1660:	1e                   	push   ds
    1661:	3e                   	ds
    1662:	7e fe                	jle    0x1662
    1664:	7e 3e                	jle    0x16a4
    1666:	1e                   	push   ds
    1667:	0e                   	push   cs
    1668:	06                   	push   es
    1669:	02 00                	add    al,BYTE PTR [eax]
    166b:	00 00                	add    BYTE PTR [eax],al
    166d:	00 10                	add    BYTE PTR [eax],dl
    166f:	38 54 92 10          	cmp    BYTE PTR [edx+edx*4+0x10],dl
    1673:	10 10                	adc    BYTE PTR [eax],dl
    1675:	92                   	xchg   edx,eax
    1676:	54                   	push   esp
    1677:	38 10                	cmp    BYTE PTR [eax],dl
    1679:	00 00                	add    BYTE PTR [eax],al
    167b:	00 00                	add    BYTE PTR [eax],al
    167d:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
    1681:	44                   	inc    esp
    1682:	44                   	inc    esp
    1683:	44                   	inc    esp
    1684:	44                   	inc    esp
    1685:	44                   	inc    esp
    1686:	00 00                	add    BYTE PTR [eax],al
    1688:	44                   	inc    esp
    1689:	44                   	inc    esp
    168a:	00 00                	add    BYTE PTR [eax],al
    168c:	00 3e                	add    BYTE PTR [esi],bh
    168e:	4a                   	dec    edx
    168f:	8a 8a 8a 8a 4a 3a    	mov    cl,BYTE PTR [edx+0x3a4a8a8a]
    1695:	0a 0a                	or     cl,BYTE PTR [edx]
    1697:	0a 0a                	or     cl,BYTE PTR [edx]
    1699:	0a 00                	or     al,BYTE PTR [eax]
    169b:	00 7c 82 40          	add    BYTE PTR [edx+eax*4+0x40],bh
    169f:	20 38                	and    BYTE PTR [eax],bh
    16a1:	44                   	inc    esp
    16a2:	82                   	(bad)  
    16a3:	82                   	(bad)  
    16a4:	82                   	(bad)  
    16a5:	44                   	inc    esp
    16a6:	38 08                	cmp    BYTE PTR [eax],cl
    16a8:	04 82                	add    al,0x82
    16aa:	7c 00                	jl     0x16ac
	...
    16b4:	00 00                	add    BYTE PTR [eax],al
    16b6:	00 fe                	add    dh,bh
    16b8:	fe                   	(bad)  
    16b9:	fe 00                	inc    BYTE PTR [eax]
    16bb:	00 00                	add    BYTE PTR [eax],al
    16bd:	00 10                	add    BYTE PTR [eax],dl
    16bf:	38 54 92 10          	cmp    BYTE PTR [edx+edx*4+0x10],dl
    16c3:	10 10                	adc    BYTE PTR [eax],dl
    16c5:	92                   	xchg   edx,eax
    16c6:	54                   	push   esp
    16c7:	38 10                	cmp    BYTE PTR [eax],dl
    16c9:	7c 00                	jl     0x16cb
    16cb:	00 00                	add    BYTE PTR [eax],al
    16cd:	10 38                	adc    BYTE PTR [eax],bh
    16cf:	54                   	push   esp
    16d0:	92                   	xchg   edx,eax
    16d1:	10 10                	adc    BYTE PTR [eax],dl
    16d3:	10 10                	adc    BYTE PTR [eax],dl
    16d5:	10 10                	adc    BYTE PTR [eax],dl
    16d7:	10 10                	adc    BYTE PTR [eax],dl
    16d9:	10 00                	adc    BYTE PTR [eax],al
    16db:	00 00                	add    BYTE PTR [eax],al
    16dd:	10 10                	adc    BYTE PTR [eax],dl
    16df:	10 10                	adc    BYTE PTR [eax],dl
    16e1:	10 10                	adc    BYTE PTR [eax],dl
    16e3:	10 10                	adc    BYTE PTR [eax],dl
    16e5:	10 92 54 38 10 00    	adc    BYTE PTR [edx+0x103854],dl
    16eb:	00 00                	add    BYTE PTR [eax],al
    16ed:	00 00                	add    BYTE PTR [eax],al
    16ef:	00 10                	add    BYTE PTR [eax],dl
    16f1:	08 04 fe             	or     BYTE PTR [esi+edi*8],al
    16f4:	04 08                	add    al,0x8
    16f6:	10 00                	adc    BYTE PTR [eax],al
	...
    1700:	10 20                	adc    BYTE PTR [eax],ah
    1702:	40                   	inc    eax
    1703:	fe 40 20             	inc    BYTE PTR [eax+0x20]
    1706:	10 00                	adc    BYTE PTR [eax],al
	...
    1714:	00 00                	add    BYTE PTR [eax],al
    1716:	00 80 80 fe 00 00    	add    BYTE PTR [eax+0xfe80],al
    171c:	00 00                	add    BYTE PTR [eax],al
    171e:	00 00                	add    BYTE PTR [eax],al
    1720:	00 28                	add    BYTE PTR [eax],ch
    1722:	44                   	inc    esp
    1723:	fe 44 28 00          	inc    BYTE PTR [eax+ebp*1+0x0]
	...
    172f:	00 10                	add    BYTE PTR [eax],dl
    1731:	10 38                	adc    BYTE PTR [eax],bh
    1733:	38 7c 7c fe          	cmp    BYTE PTR [esp+edi*2-0x2],bh
    1737:	fe 00                	inc    BYTE PTR [eax]
    1739:	00 00                	add    BYTE PTR [eax],al
    173b:	00 00                	add    BYTE PTR [eax],al
    173d:	00 00                	add    BYTE PTR [eax],al
    173f:	00 fe                	add    dh,bh
    1741:	fe                   	(bad)  
    1742:	7c 7c                	jl     0x17c0
    1744:	38 38                	cmp    BYTE PTR [eax],bh
    1746:	10 10                	adc    BYTE PTR [eax],dl
	...
    175c:	00 10                	add    BYTE PTR [eax],dl
    175e:	10 10                	adc    BYTE PTR [eax],dl
    1760:	10 10                	adc    BYTE PTR [eax],dl
    1762:	10 10                	adc    BYTE PTR [eax],dl
    1764:	10 10                	adc    BYTE PTR [eax],dl
    1766:	00 00                	add    BYTE PTR [eax],al
    1768:	10 10                	adc    BYTE PTR [eax],dl
    176a:	00 00                	add    BYTE PTR [eax],al
    176c:	28 28                	sub    BYTE PTR [eax],ch
    176e:	28 00                	sub    BYTE PTR [eax],al
	...
    177c:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
    1780:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
    1784:	44                   	inc    esp
    1785:	44                   	inc    esp
    1786:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
    178a:	00 00                	add    BYTE PTR [eax],al
    178c:	10 3a                	adc    BYTE PTR [edx],bh
    178e:	56                   	push   esi
    178f:	92                   	xchg   edx,eax
    1790:	92                   	xchg   edx,eax
    1791:	90                   	nop
    1792:	50                   	push   eax
    1793:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
    1796:	92                   	xchg   edx,eax
    1797:	92                   	xchg   edx,eax
    1798:	d4 b8                	aam    0xb8
    179a:	10 10                	adc    BYTE PTR [eax],dl
    179c:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
    17a2:	10 10                	adc    BYTE PTR [eax],dl
    17a4:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
    17a7:	52                   	push   edx
    17a8:	92                   	xchg   edx,eax
    17a9:	8c 00                	mov    WORD PTR [eax],es
    17ab:	00 00                	add    BYTE PTR [eax],al
    17ad:	70 88                	jo     0x1737
    17af:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
    17b5:	92                   	xchg   edx,eax
    17b6:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
    17bd:	08 10                	or     BYTE PTR [eax],dl
	...
    17cb:	00 02                	add    BYTE PTR [edx],al
    17cd:	04 08                	add    al,0x8
    17cf:	08 10                	or     BYTE PTR [eax],dl
    17d1:	10 10                	adc    BYTE PTR [eax],dl
    17d3:	10 10                	adc    BYTE PTR [eax],dl
    17d5:	10 10                	adc    BYTE PTR [eax],dl
    17d7:	08 08                	or     BYTE PTR [eax],cl
    17d9:	04 02                	add    al,0x2
    17db:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
    17e1:	10 10                	adc    BYTE PTR [eax],dl
    17e3:	10 10                	adc    BYTE PTR [eax],dl
    17e5:	10 10                	adc    BYTE PTR [eax],dl
    17e7:	20 20                	and    BYTE PTR [eax],ah
    17e9:	40                   	inc    eax
    17ea:	80 00 00             	add    BYTE PTR [eax],0x0
    17ed:	00 00                	add    BYTE PTR [eax],al
    17ef:	00 00                	add    BYTE PTR [eax],al
    17f1:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
    17f7:	10 00                	adc    BYTE PTR [eax],al
	...
    1801:	10 10                	adc    BYTE PTR [eax],dl
    1803:	10 fe                	adc    dh,bh
    1805:	10 10                	adc    BYTE PTR [eax],dl
    1807:	10 00                	adc    BYTE PTR [eax],al
	...
    1815:	00 00                	add    BYTE PTR [eax],al
    1817:	18 18                	sbb    BYTE PTR [eax],bl
    1819:	08 08                	or     BYTE PTR [eax],cl
    181b:	10 00                	adc    BYTE PTR [eax],al
    181d:	00 00                	add    BYTE PTR [eax],al
    181f:	00 00                	add    BYTE PTR [eax],al
    1821:	00 00                	add    BYTE PTR [eax],al
    1823:	00 fe                	add    dh,bh
	...
    1835:	00 00                	add    BYTE PTR [eax],al
    1837:	00 18                	add    BYTE PTR [eax],bl
    1839:	18 00                	sbb    BYTE PTR [eax],al
    183b:	00 02                	add    BYTE PTR [edx],al
    183d:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
    1840:	08 08                	or     BYTE PTR [eax],cl
    1842:	08 10                	or     BYTE PTR [eax],dl
    1844:	10 20                	adc    BYTE PTR [eax],ah
    1846:	20 40 40             	and    BYTE PTR [eax+0x40],al
    1849:	40                   	inc    eax
    184a:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
    1851:	42                   	inc    edx
    1852:	42                   	inc    edx
    1853:	42                   	inc    edx
    1854:	42                   	inc    edx
    1855:	42                   	inc    edx
    1856:	42                   	inc    edx
    1857:	24 24                	and    al,0x24
    1859:	18 00                	sbb    BYTE PTR [eax],al
    185b:	00 00                	add    BYTE PTR [eax],al
    185d:	08 18                	or     BYTE PTR [eax],bl
    185f:	28 08                	sub    BYTE PTR [eax],cl
    1861:	08 08                	or     BYTE PTR [eax],cl
    1863:	08 08                	or     BYTE PTR [eax],cl
    1865:	08 08                	or     BYTE PTR [eax],cl
    1867:	08 08                	or     BYTE PTR [eax],cl
    1869:	3e 00 00             	add    BYTE PTR ds:[eax],al
    186c:	00 18                	add    BYTE PTR [eax],bl
    186e:	24 42                	and    al,0x42
    1870:	42                   	inc    edx
    1871:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
    1874:	10 20                	adc    BYTE PTR [eax],ah
    1876:	20 40 40             	and    BYTE PTR [eax+0x40],al
    1879:	7e 00                	jle    0x187b
    187b:	00 00                	add    BYTE PTR [eax],al
    187d:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
    1880:	02 02                	add    al,BYTE PTR [edx]
    1882:	04 18                	add    al,0x18
    1884:	04 02                	add    al,0x2
    1886:	02 42 24             	add    al,BYTE PTR [edx+0x24]
    1889:	18 00                	sbb    BYTE PTR [eax],al
    188b:	00 00                	add    BYTE PTR [eax],al
    188d:	0c 0c                	or     al,0xc
    188f:	0c 14                	or     al,0x14
    1891:	14 14                	adc    al,0x14
    1893:	24 24                	and    al,0x24
    1895:	44                   	inc    esp
    1896:	7e 04                	jle    0x189c
    1898:	04 1e                	add    al,0x1e
    189a:	00 00                	add    BYTE PTR [eax],al
    189c:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
    18a0:	40                   	inc    eax
    18a1:	58                   	pop    eax
    18a2:	64 02 02             	add    al,BYTE PTR fs:[edx]
    18a5:	02 02                	add    al,BYTE PTR [edx]
    18a7:	42                   	inc    edx
    18a8:	24 18                	and    al,0x18
    18aa:	00 00                	add    BYTE PTR [eax],al
    18ac:	00 18                	add    BYTE PTR [eax],bl
    18ae:	24 42                	and    al,0x42
    18b0:	40                   	inc    eax
    18b1:	58                   	pop    eax
    18b2:	64                   	fs
    18b3:	42                   	inc    edx
    18b4:	42                   	inc    edx
    18b5:	42                   	inc    edx
    18b6:	42                   	inc    edx
    18b7:	42                   	inc    edx
    18b8:	24 18                	and    al,0x18
    18ba:	00 00                	add    BYTE PTR [eax],al
    18bc:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
    18bf:	42                   	inc    edx
    18c0:	04 04                	add    al,0x4
    18c2:	08 08                	or     BYTE PTR [eax],cl
    18c4:	08 10                	or     BYTE PTR [eax],dl
    18c6:	10 10                	adc    BYTE PTR [eax],dl
    18c8:	10 38                	adc    BYTE PTR [eax],bh
    18ca:	00 00                	add    BYTE PTR [eax],al
    18cc:	00 18                	add    BYTE PTR [eax],bl
    18ce:	24 42                	and    al,0x42
    18d0:	42                   	inc    edx
    18d1:	42                   	inc    edx
    18d2:	24 18                	and    al,0x18
    18d4:	24 42                	and    al,0x42
    18d6:	42                   	inc    edx
    18d7:	42                   	inc    edx
    18d8:	24 18                	and    al,0x18
    18da:	00 00                	add    BYTE PTR [eax],al
    18dc:	00 18                	add    BYTE PTR [eax],bl
    18de:	24 42                	and    al,0x42
    18e0:	42                   	inc    edx
    18e1:	42                   	inc    edx
    18e2:	42                   	inc    edx
    18e3:	42                   	inc    edx
    18e4:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
    18e7:	42                   	inc    edx
    18e8:	24 18                	and    al,0x18
    18ea:	00 00                	add    BYTE PTR [eax],al
    18ec:	00 00                	add    BYTE PTR [eax],al
    18ee:	00 00                	add    BYTE PTR [eax],al
    18f0:	00 18                	add    BYTE PTR [eax],bl
    18f2:	18 00                	sbb    BYTE PTR [eax],al
    18f4:	00 00                	add    BYTE PTR [eax],al
    18f6:	00 00                	add    BYTE PTR [eax],al
    18f8:	18 18                	sbb    BYTE PTR [eax],bl
    18fa:	00 00                	add    BYTE PTR [eax],al
    18fc:	00 00                	add    BYTE PTR [eax],al
    18fe:	00 00                	add    BYTE PTR [eax],al
    1900:	00 18                	add    BYTE PTR [eax],bl
    1902:	18 00                	sbb    BYTE PTR [eax],al
    1904:	00 00                	add    BYTE PTR [eax],al
    1906:	00 18                	add    BYTE PTR [eax],bl
    1908:	18 08                	sbb    BYTE PTR [eax],cl
    190a:	08 10                	or     BYTE PTR [eax],dl
    190c:	00 02                	add    BYTE PTR [edx],al
    190e:	04 08                	add    al,0x8
    1910:	10 20                	adc    BYTE PTR [eax],ah
    1912:	40                   	inc    eax
    1913:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
    191a:	02 00                	add    al,BYTE PTR [eax]
    191c:	00 00                	add    BYTE PTR [eax],al
    191e:	00 00                	add    BYTE PTR [eax],al
    1920:	00 00                	add    BYTE PTR [eax],al
    1922:	fe 00                	inc    BYTE PTR [eax]
    1924:	00 fe                	add    dh,bh
    1926:	00 00                	add    BYTE PTR [eax],al
    1928:	00 00                	add    BYTE PTR [eax],al
    192a:	00 00                	add    BYTE PTR [eax],al
    192c:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
    1932:	04 02                	add    al,0x2
    1934:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
    1937:	10 20                	adc    BYTE PTR [eax],ah
    1939:	40                   	inc    eax
    193a:	80 00 00             	add    BYTE PTR [eax],0x0
    193d:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1941:	82                   	(bad)  
    1942:	04 08                	add    al,0x8
    1944:	10 10                	adc    BYTE PTR [eax],dl
    1946:	00 00                	add    BYTE PTR [eax],al
    1948:	18 18                	sbb    BYTE PTR [eax],bl
    194a:	00 00                	add    BYTE PTR [eax],al
    194c:	00 38                	add    BYTE PTR [eax],bh
    194e:	44                   	inc    esp
    194f:	82                   	(bad)  
    1950:	9a aa aa aa aa aa 9c 	call   0x9caa:0xaaaaaaaa
    1957:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
    195b:	00 00                	add    BYTE PTR [eax],al
    195d:	18 18                	sbb    BYTE PTR [eax],bl
    195f:	18 18                	sbb    BYTE PTR [eax],bl
    1961:	24 24                	and    al,0x24
    1963:	24 24                	and    al,0x24
    1965:	7e 42                	jle    0x19a9
    1967:	42                   	inc    edx
    1968:	42                   	inc    edx
    1969:	e7 00                	out    0x0,eax
    196b:	00 00                	add    BYTE PTR [eax],al
    196d:	f0 48                	lock dec eax
    196f:	44                   	inc    esp
    1970:	44                   	inc    esp
    1971:	44                   	inc    esp
    1972:	48                   	dec    eax
    1973:	78 44                	js     0x19b9
    1975:	42                   	inc    edx
    1976:	42                   	inc    edx
    1977:	42                   	inc    edx
    1978:	44                   	inc    esp
    1979:	f8                   	clc    
    197a:	00 00                	add    BYTE PTR [eax],al
    197c:	00 3a                	add    BYTE PTR [edx],bh
    197e:	46                   	inc    esi
    197f:	42                   	inc    edx
    1980:	82                   	(bad)  
    1981:	80 80 80 80 80 82 42 	add    BYTE PTR [eax-0x7d7f7f80],0x42
    1988:	44                   	inc    esp
    1989:	38 00                	cmp    BYTE PTR [eax],al
    198b:	00 00                	add    BYTE PTR [eax],al
    198d:	f8                   	clc    
    198e:	44                   	inc    esp
    198f:	44                   	inc    esp
    1990:	42                   	inc    edx
    1991:	42                   	inc    edx
    1992:	42                   	inc    edx
    1993:	42                   	inc    edx
    1994:	42                   	inc    edx
    1995:	42                   	inc    edx
    1996:	42                   	inc    edx
    1997:	44                   	inc    esp
    1998:	44                   	inc    esp
    1999:	f8                   	clc    
    199a:	00 00                	add    BYTE PTR [eax],al
    199c:	00 fe                	add    dh,bh
    199e:	42                   	inc    edx
    199f:	42                   	inc    edx
    19a0:	40                   	inc    eax
    19a1:	40                   	inc    eax
    19a2:	44                   	inc    esp
    19a3:	7c 44                	jl     0x19e9
    19a5:	40                   	inc    eax
    19a6:	40                   	inc    eax
    19a7:	42                   	inc    edx
    19a8:	42                   	inc    edx
    19a9:	fe 00                	inc    BYTE PTR [eax]
    19ab:	00 00                	add    BYTE PTR [eax],al
    19ad:	fe 42 42             	inc    BYTE PTR [edx+0x42]
    19b0:	40                   	inc    eax
    19b1:	40                   	inc    eax
    19b2:	44                   	inc    esp
    19b3:	7c 44                	jl     0x19f9
    19b5:	44                   	inc    esp
    19b6:	40                   	inc    eax
    19b7:	40                   	inc    eax
    19b8:	40                   	inc    eax
    19b9:	f0 00 00             	lock add BYTE PTR [eax],al
    19bc:	00 3a                	add    BYTE PTR [edx],bh
    19be:	46                   	inc    esi
    19bf:	42                   	inc    edx
    19c0:	82                   	(bad)  
    19c1:	80 80 9e 82 82 82 42 	add    BYTE PTR [eax-0x7d7d7d62],0x42
    19c8:	46                   	inc    esi
    19c9:	38 00                	cmp    BYTE PTR [eax],al
    19cb:	00 00                	add    BYTE PTR [eax],al
    19cd:	e7 42                	out    0x42,eax
    19cf:	42                   	inc    edx
    19d0:	42                   	inc    edx
    19d1:	42                   	inc    edx
    19d2:	42                   	inc    edx
    19d3:	7e 42                	jle    0x1a17
    19d5:	42                   	inc    edx
    19d6:	42                   	inc    edx
    19d7:	42                   	inc    edx
    19d8:	42                   	inc    edx
    19d9:	e7 00                	out    0x0,eax
    19db:	00 00                	add    BYTE PTR [eax],al
    19dd:	7c 10                	jl     0x19ef
    19df:	10 10                	adc    BYTE PTR [eax],dl
    19e1:	10 10                	adc    BYTE PTR [eax],dl
    19e3:	10 10                	adc    BYTE PTR [eax],dl
    19e5:	10 10                	adc    BYTE PTR [eax],dl
    19e7:	10 10                	adc    BYTE PTR [eax],dl
    19e9:	7c 00                	jl     0x19eb
    19eb:	00 00                	add    BYTE PTR [eax],al
    19ed:	1f                   	pop    ds
    19ee:	04 04                	add    al,0x4
    19f0:	04 04                	add    al,0x4
    19f2:	04 04                	add    al,0x4
    19f4:	04 04                	add    al,0x4
    19f6:	04 04                	add    al,0x4
    19f8:	84 48 30             	test   BYTE PTR [eax+0x30],cl
    19fb:	00 00                	add    BYTE PTR [eax],al
    19fd:	e7 42                	out    0x42,eax
    19ff:	44                   	inc    esp
    1a00:	48                   	dec    eax
    1a01:	50                   	push   eax
    1a02:	50                   	push   eax
    1a03:	60                   	pusha  
    1a04:	50                   	push   eax
    1a05:	50                   	push   eax
    1a06:	48                   	dec    eax
    1a07:	44                   	inc    esp
    1a08:	42                   	inc    edx
    1a09:	e7 00                	out    0x0,eax
    1a0b:	00 00                	add    BYTE PTR [eax],al
    1a0d:	f0 40                	lock inc eax
    1a0f:	40                   	inc    eax
    1a10:	40                   	inc    eax
    1a11:	40                   	inc    eax
    1a12:	40                   	inc    eax
    1a13:	40                   	inc    eax
    1a14:	40                   	inc    eax
    1a15:	40                   	inc    eax
    1a16:	40                   	inc    eax
    1a17:	42                   	inc    edx
    1a18:	42                   	inc    edx
    1a19:	fe 00                	inc    BYTE PTR [eax]
    1a1b:	00 00                	add    BYTE PTR [eax],al
    1a1d:	c3                   	ret    
    1a1e:	42                   	inc    edx
    1a1f:	66 66 66 5a          	data32 data32 pop dx
    1a23:	5a                   	pop    edx
    1a24:	5a                   	pop    edx
    1a25:	42                   	inc    edx
    1a26:	42                   	inc    edx
    1a27:	42                   	inc    edx
    1a28:	42                   	inc    edx
    1a29:	e7 00                	out    0x0,eax
    1a2b:	00 00                	add    BYTE PTR [eax],al
    1a2d:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
    1a34:	4a                   	dec    edx
    1a35:	4a                   	dec    edx
    1a36:	4a                   	dec    edx
    1a37:	46                   	inc    esi
    1a38:	46                   	inc    esi
    1a39:	e2 00                	loop   0x1a3b
    1a3b:	00 00                	add    BYTE PTR [eax],al
    1a3d:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1a41:	82                   	(bad)  
    1a42:	82                   	(bad)  
    1a43:	82                   	(bad)  
    1a44:	82                   	(bad)  
    1a45:	82                   	(bad)  
    1a46:	82                   	(bad)  
    1a47:	82                   	(bad)  
    1a48:	44                   	inc    esp
    1a49:	38 00                	cmp    BYTE PTR [eax],al
    1a4b:	00 00                	add    BYTE PTR [eax],al
    1a4d:	f8                   	clc    
    1a4e:	44                   	inc    esp
    1a4f:	42                   	inc    edx
    1a50:	42                   	inc    edx
    1a51:	42                   	inc    edx
    1a52:	44                   	inc    esp
    1a53:	78 40                	js     0x1a95
    1a55:	40                   	inc    eax
    1a56:	40                   	inc    eax
    1a57:	40                   	inc    eax
    1a58:	40                   	inc    eax
    1a59:	f0 00 00             	lock add BYTE PTR [eax],al
    1a5c:	00 38                	add    BYTE PTR [eax],bh
    1a5e:	44                   	inc    esp
    1a5f:	82                   	(bad)  
    1a60:	82                   	(bad)  
    1a61:	82                   	(bad)  
    1a62:	82                   	(bad)  
    1a63:	82                   	(bad)  
    1a64:	82                   	(bad)  
    1a65:	82                   	(bad)  
    1a66:	92                   	xchg   edx,eax
    1a67:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
    1a6b:	00 00                	add    BYTE PTR [eax],al
    1a6d:	fc                   	cld    
    1a6e:	42                   	inc    edx
    1a6f:	42                   	inc    edx
    1a70:	42                   	inc    edx
    1a71:	42                   	inc    edx
    1a72:	7c 44                	jl     0x1ab8
    1a74:	42                   	inc    edx
    1a75:	42                   	inc    edx
    1a76:	42                   	inc    edx
    1a77:	42                   	inc    edx
    1a78:	42                   	inc    edx
    1a79:	e7 00                	out    0x0,eax
    1a7b:	00 00                	add    BYTE PTR [eax],al
    1a7d:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
    1a80:	82                   	(bad)  
    1a81:	80 40 38 04          	add    BYTE PTR [eax+0x38],0x4
    1a85:	02 82 82 c4 b8 00    	add    al,BYTE PTR [edx+0xb8c482]
    1a8b:	00 00                	add    BYTE PTR [eax],al
    1a8d:	fe                   	(bad)  
    1a8e:	92                   	xchg   edx,eax
    1a8f:	92                   	xchg   edx,eax
    1a90:	10 10                	adc    BYTE PTR [eax],dl
    1a92:	10 10                	adc    BYTE PTR [eax],dl
    1a94:	10 10                	adc    BYTE PTR [eax],dl
    1a96:	10 10                	adc    BYTE PTR [eax],dl
    1a98:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
    1a9c:	00 e7                	add    bh,ah
    1a9e:	42                   	inc    edx
    1a9f:	42                   	inc    edx
    1aa0:	42                   	inc    edx
    1aa1:	42                   	inc    edx
    1aa2:	42                   	inc    edx
    1aa3:	42                   	inc    edx
    1aa4:	42                   	inc    edx
    1aa5:	42                   	inc    edx
    1aa6:	42                   	inc    edx
    1aa7:	42                   	inc    edx
    1aa8:	24 3c                	and    al,0x3c
    1aaa:	00 00                	add    BYTE PTR [eax],al
    1aac:	00 e7                	add    bh,ah
    1aae:	42                   	inc    edx
    1aaf:	42                   	inc    edx
    1ab0:	42                   	inc    edx
    1ab1:	42                   	inc    edx
    1ab2:	24 24                	and    al,0x24
    1ab4:	24 24                	and    al,0x24
    1ab6:	18 18                	sbb    BYTE PTR [eax],bl
    1ab8:	18 18                	sbb    BYTE PTR [eax],bl
    1aba:	00 00                	add    BYTE PTR [eax],al
    1abc:	00 e7                	add    bh,ah
    1abe:	42                   	inc    edx
    1abf:	42                   	inc    edx
    1ac0:	42                   	inc    edx
    1ac1:	5a                   	pop    edx
    1ac2:	5a                   	pop    edx
    1ac3:	5a                   	pop    edx
    1ac4:	5a                   	pop    edx
    1ac5:	24 24                	and    al,0x24
    1ac7:	24 24                	and    al,0x24
    1ac9:	24 00                	and    al,0x0
    1acb:	00 00                	add    BYTE PTR [eax],al
    1acd:	e7 42                	out    0x42,eax
    1acf:	42                   	inc    edx
    1ad0:	24 24                	and    al,0x24
    1ad2:	24 18                	and    al,0x18
    1ad4:	24 24                	and    al,0x24
    1ad6:	24 42                	and    al,0x42
    1ad8:	42                   	inc    edx
    1ad9:	e7 00                	out    0x0,eax
    1adb:	00 00                	add    BYTE PTR [eax],al
    1add:	ee                   	out    dx,al
    1ade:	44                   	inc    esp
    1adf:	44                   	inc    esp
    1ae0:	44                   	inc    esp
    1ae1:	28 28                	sub    BYTE PTR [eax],ch
    1ae3:	28 10                	sub    BYTE PTR [eax],dl
    1ae5:	10 10                	adc    BYTE PTR [eax],dl
    1ae7:	10 10                	adc    BYTE PTR [eax],dl
    1ae9:	7c 00                	jl     0x1aeb
    1aeb:	00 00                	add    BYTE PTR [eax],al
    1aed:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
    1af4:	20 20                	and    BYTE PTR [eax],ah
    1af6:	40                   	inc    eax
    1af7:	42                   	inc    edx
    1af8:	82                   	(bad)  
    1af9:	fe 00                	inc    BYTE PTR [eax]
    1afb:	00 00                	add    BYTE PTR [eax],al
    1afd:	3e 20 20             	and    BYTE PTR ds:[eax],ah
    1b00:	20 20                	and    BYTE PTR [eax],ah
    1b02:	20 20                	and    BYTE PTR [eax],ah
    1b04:	20 20                	and    BYTE PTR [eax],ah
    1b06:	20 20                	and    BYTE PTR [eax],ah
    1b08:	20 20                	and    BYTE PTR [eax],ah
    1b0a:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
    1b11:	20 20                	and    BYTE PTR [eax],ah
    1b13:	10 10                	adc    BYTE PTR [eax],dl
    1b15:	08 08                	or     BYTE PTR [eax],cl
    1b17:	04 04                	add    al,0x4
    1b19:	04 02                	add    al,0x2
    1b1b:	02 00                	add    al,BYTE PTR [eax]
    1b1d:	7c 04                	jl     0x1b23
    1b1f:	04 04                	add    al,0x4
    1b21:	04 04                	add    al,0x4
    1b23:	04 04                	add    al,0x4
    1b25:	04 04                	add    al,0x4
    1b27:	04 04                	add    al,0x4
    1b29:	04 7c                	add    al,0x7c
    1b2b:	00 00                	add    BYTE PTR [eax],al
    1b2d:	10 28                	adc    BYTE PTR [eax],ch
    1b2f:	44                   	inc    esp
    1b30:	82                   	(bad)  
	...
    1b49:	00 fe                	add    dh,bh
    1b4b:	00 10                	add    BYTE PTR [eax],dl
    1b4d:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
    1b60:	00 70 08             	add    BYTE PTR [eax+0x8],dh
    1b63:	04 3c                	add    al,0x3c
    1b65:	44                   	inc    esp
    1b66:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
    1b6d:	40                   	inc    eax
    1b6e:	40                   	inc    eax
    1b6f:	40                   	inc    eax
    1b70:	40                   	inc    eax
    1b71:	58                   	pop    eax
    1b72:	64                   	fs
    1b73:	42                   	inc    edx
    1b74:	42                   	inc    edx
    1b75:	42                   	inc    edx
    1b76:	42                   	inc    edx
    1b77:	42                   	inc    edx
    1b78:	64                   	fs
    1b79:	58                   	pop    eax
    1b7a:	00 00                	add    BYTE PTR [eax],al
    1b7c:	00 00                	add    BYTE PTR [eax],al
    1b7e:	00 00                	add    BYTE PTR [eax],al
    1b80:	00 30                	add    BYTE PTR [eax],dh
    1b82:	4c                   	dec    esp
    1b83:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
    1b8a:	00 00                	add    BYTE PTR [eax],al
    1b8c:	0c 04                	or     al,0x4
    1b8e:	04 04                	add    al,0x4
    1b90:	04 34                	add    al,0x34
    1b92:	4c                   	dec    esp
    1b93:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
    1b9a:	00 00                	add    BYTE PTR [eax],al
    1b9c:	00 00                	add    BYTE PTR [eax],al
    1b9e:	00 00                	add    BYTE PTR [eax],al
    1ba0:	00 38                	add    BYTE PTR [eax],bh
    1ba2:	44                   	inc    esp
    1ba3:	82                   	(bad)  
    1ba4:	82                   	(bad)  
    1ba5:	fc                   	cld    
    1ba6:	80 82 42 3c 00 00 0e 	add    BYTE PTR [edx+0x3c42],0xe
    1bad:	10 10                	adc    BYTE PTR [eax],dl
    1baf:	10 10                	adc    BYTE PTR [eax],dl
    1bb1:	7c 10                	jl     0x1bc3
    1bb3:	10 10                	adc    BYTE PTR [eax],dl
    1bb5:	10 10                	adc    BYTE PTR [eax],dl
    1bb7:	10 10                	adc    BYTE PTR [eax],dl
    1bb9:	7c 00                	jl     0x1bbb
    1bbb:	00 00                	add    BYTE PTR [eax],al
    1bbd:	00 00                	add    BYTE PTR [eax],al
    1bbf:	00 00                	add    BYTE PTR [eax],al
    1bc1:	36                   	ss
    1bc2:	4c                   	dec    esp
    1bc3:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
    1bca:	04 78                	add    al,0x78
    1bcc:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
    1bd0:	40                   	inc    eax
    1bd1:	58                   	pop    eax
    1bd2:	64                   	fs
    1bd3:	42                   	inc    edx
    1bd4:	42                   	inc    edx
    1bd5:	42                   	inc    edx
    1bd6:	42                   	inc    edx
    1bd7:	42                   	inc    edx
    1bd8:	42                   	inc    edx
    1bd9:	e3 00                	jecxz  0x1bdb
    1bdb:	00 00                	add    BYTE PTR [eax],al
    1bdd:	10 10                	adc    BYTE PTR [eax],dl
    1bdf:	00 00                	add    BYTE PTR [eax],al
    1be1:	30 10                	xor    BYTE PTR [eax],dl
    1be3:	10 10                	adc    BYTE PTR [eax],dl
    1be5:	10 10                	adc    BYTE PTR [eax],dl
    1be7:	10 10                	adc    BYTE PTR [eax],dl
    1be9:	38 00                	cmp    BYTE PTR [eax],al
    1beb:	00 00                	add    BYTE PTR [eax],al
    1bed:	04 04                	add    al,0x4
    1bef:	00 00                	add    BYTE PTR [eax],al
    1bf1:	0c 04                	or     al,0x4
    1bf3:	04 04                	add    al,0x4
    1bf5:	04 04                	add    al,0x4
    1bf7:	04 04                	add    al,0x4
    1bf9:	08 08                	or     BYTE PTR [eax],cl
    1bfb:	30 c0                	xor    al,al
    1bfd:	40                   	inc    eax
    1bfe:	40                   	inc    eax
    1bff:	40                   	inc    eax
    1c00:	40                   	inc    eax
    1c01:	4e                   	dec    esi
    1c02:	44                   	inc    esp
    1c03:	48                   	dec    eax
    1c04:	50                   	push   eax
    1c05:	60                   	pusha  
    1c06:	50                   	push   eax
    1c07:	48                   	dec    eax
    1c08:	44                   	inc    esp
    1c09:	e6 00                	out    0x0,al
    1c0b:	00 30                	add    BYTE PTR [eax],dh
    1c0d:	10 10                	adc    BYTE PTR [eax],dl
    1c0f:	10 10                	adc    BYTE PTR [eax],dl
    1c11:	10 10                	adc    BYTE PTR [eax],dl
    1c13:	10 10                	adc    BYTE PTR [eax],dl
    1c15:	10 10                	adc    BYTE PTR [eax],dl
    1c17:	10 10                	adc    BYTE PTR [eax],dl
    1c19:	38 00                	cmp    BYTE PTR [eax],al
    1c1b:	00 00                	add    BYTE PTR [eax],al
    1c1d:	00 00                	add    BYTE PTR [eax],al
    1c1f:	00 00                	add    BYTE PTR [eax],al
    1c21:	f6                   	(bad)  
    1c22:	49                   	dec    ecx
    1c23:	49                   	dec    ecx
    1c24:	49                   	dec    ecx
    1c25:	49                   	dec    ecx
    1c26:	49                   	dec    ecx
    1c27:	49                   	dec    ecx
    1c28:	49                   	dec    ecx
    1c29:	db 00                	fild   DWORD PTR [eax]
    1c2b:	00 00                	add    BYTE PTR [eax],al
    1c2d:	00 00                	add    BYTE PTR [eax],al
    1c2f:	00 00                	add    BYTE PTR [eax],al
    1c31:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
    1c35:	42                   	inc    edx
    1c36:	42                   	inc    edx
    1c37:	42                   	inc    edx
    1c38:	42                   	inc    edx
    1c39:	e3 00                	jecxz  0x1c3b
    1c3b:	00 00                	add    BYTE PTR [eax],al
    1c3d:	00 00                	add    BYTE PTR [eax],al
    1c3f:	00 00                	add    BYTE PTR [eax],al
    1c41:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1c45:	82                   	(bad)  
    1c46:	82                   	(bad)  
    1c47:	82                   	(bad)  
    1c48:	44                   	inc    esp
    1c49:	38 00                	cmp    BYTE PTR [eax],al
    1c4b:	00 00                	add    BYTE PTR [eax],al
    1c4d:	00 00                	add    BYTE PTR [eax],al
    1c4f:	00 00                	add    BYTE PTR [eax],al
    1c51:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
    1c55:	42                   	inc    edx
    1c56:	42                   	inc    edx
    1c57:	42                   	inc    edx
    1c58:	64                   	fs
    1c59:	58                   	pop    eax
    1c5a:	40                   	inc    eax
    1c5b:	e0 00                	loopne 0x1c5d
    1c5d:	00 00                	add    BYTE PTR [eax],al
    1c5f:	00 00                	add    BYTE PTR [eax],al
    1c61:	34 4c                	xor    al,0x4c
    1c63:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
    1c6a:	04 0e                	add    al,0xe
    1c6c:	00 00                	add    BYTE PTR [eax],al
    1c6e:	00 00                	add    BYTE PTR [eax],al
    1c70:	00 dc                	add    ah,bl
    1c72:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
    1c75:	40                   	inc    eax
    1c76:	40                   	inc    eax
    1c77:	40                   	inc    eax
    1c78:	40                   	inc    eax
    1c79:	e0 00                	loopne 0x1c7b
    1c7b:	00 00                	add    BYTE PTR [eax],al
    1c7d:	00 00                	add    BYTE PTR [eax],al
    1c7f:	00 00                	add    BYTE PTR [eax],al
    1c81:	7a 86                	jp     0x1c09
    1c83:	82                   	(bad)  
    1c84:	c0 38 06             	sar    BYTE PTR [eax],0x6
    1c87:	82                   	(bad)  
    1c88:	c2 bc 00             	ret    0xbc
    1c8b:	00 00                	add    BYTE PTR [eax],al
    1c8d:	00 10                	add    BYTE PTR [eax],dl
    1c8f:	10 10                	adc    BYTE PTR [eax],dl
    1c91:	7c 10                	jl     0x1ca3
    1c93:	10 10                	adc    BYTE PTR [eax],dl
    1c95:	10 10                	adc    BYTE PTR [eax],dl
    1c97:	10 10                	adc    BYTE PTR [eax],dl
    1c99:	0e                   	push   cs
    1c9a:	00 00                	add    BYTE PTR [eax],al
    1c9c:	00 00                	add    BYTE PTR [eax],al
    1c9e:	00 00                	add    BYTE PTR [eax],al
    1ca0:	00 c6                	add    dh,al
    1ca2:	42                   	inc    edx
    1ca3:	42                   	inc    edx
    1ca4:	42                   	inc    edx
    1ca5:	42                   	inc    edx
    1ca6:	42                   	inc    edx
    1ca7:	42                   	inc    edx
    1ca8:	46                   	inc    esi
    1ca9:	3b 00                	cmp    eax,DWORD PTR [eax]
    1cab:	00 00                	add    BYTE PTR [eax],al
    1cad:	00 00                	add    BYTE PTR [eax],al
    1caf:	00 00                	add    BYTE PTR [eax],al
    1cb1:	e7 42                	out    0x42,eax
    1cb3:	42                   	inc    edx
    1cb4:	42                   	inc    edx
    1cb5:	24 24                	and    al,0x24
    1cb7:	24 18                	and    al,0x18
    1cb9:	18 00                	sbb    BYTE PTR [eax],al
    1cbb:	00 00                	add    BYTE PTR [eax],al
    1cbd:	00 00                	add    BYTE PTR [eax],al
    1cbf:	00 00                	add    BYTE PTR [eax],al
    1cc1:	e7 42                	out    0x42,eax
    1cc3:	42                   	inc    edx
    1cc4:	5a                   	pop    edx
    1cc5:	5a                   	pop    edx
    1cc6:	5a                   	pop    edx
    1cc7:	24 24                	and    al,0x24
    1cc9:	24 00                	and    al,0x0
    1ccb:	00 00                	add    BYTE PTR [eax],al
    1ccd:	00 00                	add    BYTE PTR [eax],al
    1ccf:	00 00                	add    BYTE PTR [eax],al
    1cd1:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
    1cd6:	28 28                	sub    BYTE PTR [eax],ch
    1cd8:	44                   	inc    esp
    1cd9:	c6 00 00             	mov    BYTE PTR [eax],0x0
    1cdc:	00 00                	add    BYTE PTR [eax],al
    1cde:	00 00                	add    BYTE PTR [eax],al
    1ce0:	00 e7                	add    bh,ah
    1ce2:	42                   	inc    edx
    1ce3:	42                   	inc    edx
    1ce4:	24 24                	and    al,0x24
    1ce6:	24 18                	and    al,0x18
    1ce8:	18 10                	sbb    BYTE PTR [eax],dl
    1cea:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
    1ced:	00 00                	add    BYTE PTR [eax],al
    1cef:	00 00                	add    BYTE PTR [eax],al
    1cf1:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
    1cf7:	42                   	inc    edx
    1cf8:	82                   	(bad)  
    1cf9:	fe 00                	inc    BYTE PTR [eax]
    1cfb:	00 00                	add    BYTE PTR [eax],al
    1cfd:	06                   	push   es
    1cfe:	08 10                	or     BYTE PTR [eax],dl
    1d00:	10 10                	adc    BYTE PTR [eax],dl
    1d02:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
    1d05:	10 10                	adc    BYTE PTR [eax],dl
    1d07:	10 08                	adc    BYTE PTR [eax],cl
    1d09:	06                   	push   es
    1d0a:	00 00                	add    BYTE PTR [eax],al
    1d0c:	10 10                	adc    BYTE PTR [eax],dl
    1d0e:	10 10                	adc    BYTE PTR [eax],dl
    1d10:	10 10                	adc    BYTE PTR [eax],dl
    1d12:	10 10                	adc    BYTE PTR [eax],dl
    1d14:	10 10                	adc    BYTE PTR [eax],dl
    1d16:	10 10                	adc    BYTE PTR [eax],dl
    1d18:	10 10                	adc    BYTE PTR [eax],dl
    1d1a:	10 10                	adc    BYTE PTR [eax],dl
    1d1c:	00 60 10             	add    BYTE PTR [eax+0x10],ah
    1d1f:	08 08                	or     BYTE PTR [eax],cl
    1d21:	08 08                	or     BYTE PTR [eax],cl
    1d23:	06                   	push   es
    1d24:	08 08                	or     BYTE PTR [eax],cl
    1d26:	08 08                	or     BYTE PTR [eax],cl
    1d28:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
    1d2b:	00 00                	add    BYTE PTR [eax],al
    1d2d:	72 8c                	jb     0x1cbb
	...
    1d3f:	00 10                	add    BYTE PTR [eax],dl
    1d41:	28 44 82 fe          	sub    BYTE PTR [edx+eax*4-0x2],al
    1d45:	82                   	(bad)  
    1d46:	fe 00                	inc    BYTE PTR [eax]
    1d48:	00 00                	add    BYTE PTR [eax],al
    1d4a:	00 00                	add    BYTE PTR [eax],al
    1d4c:	00 38                	add    BYTE PTR [eax],bh
    1d4e:	44                   	inc    esp
    1d4f:	82                   	(bad)  
    1d50:	80 80 80 80 80 80 80 	add    BYTE PTR [eax-0x7f7f7f80],0x80
    1d57:	82                   	(bad)  
    1d58:	44                   	inc    esp
    1d59:	38 10                	cmp    BYTE PTR [eax],dl
    1d5b:	20 00                	and    BYTE PTR [eax],al
    1d5d:	00 24 24             	add    BYTE PTR [esp],ah
    1d60:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    1d66:	82                   	(bad)  
    1d67:	82                   	(bad)  
    1d68:	42                   	inc    edx
    1d69:	3e 00 00             	add    BYTE PTR ds:[eax],al
    1d6c:	0c 08                	or     al,0x8
    1d6e:	10 00                	adc    BYTE PTR [eax],al
    1d70:	00 38                	add    BYTE PTR [eax],bh
    1d72:	44                   	inc    esp
    1d73:	82                   	(bad)  
    1d74:	82                   	(bad)  
    1d75:	fe 80 82 44 38 00    	inc    BYTE PTR [eax+0x384482]
    1d7b:	00 00                	add    BYTE PTR [eax],al
    1d7d:	10 28                	adc    BYTE PTR [eax],ch
    1d7f:	44                   	inc    esp
    1d80:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    1d83:	04 3c                	add    al,0x3c
    1d85:	44                   	inc    esp
    1d86:	84 84 44 3e 00 00 00 	test   BYTE PTR [esp+eax*2+0x3e],al
    1d8d:	00 24 24             	add    BYTE PTR [esp],ah
    1d90:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    1d93:	04 3c                	add    al,0x3c
    1d95:	44                   	inc    esp
    1d96:	84 84 44 3e 00 00 10 	test   BYTE PTR [esp+eax*2+0x1000003e],al
    1d9d:	08 04 00             	or     BYTE PTR [eax+eax*1],al
    1da0:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    1da3:	04 3c                	add    al,0x3c
    1da5:	44                   	inc    esp
    1da6:	84 84 44 3e 00 00 00 	test   BYTE PTR [esp+eax*2+0x3e],al
    1dad:	18 24 18             	sbb    BYTE PTR [eax+ebx*1],ah
    1db0:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    1db3:	04 3c                	add    al,0x3c
    1db5:	44                   	inc    esp
    1db6:	84 84 44 3e 00 00 00 	test   BYTE PTR [esp+eax*2+0x3e],al
    1dbd:	00 00                	add    BYTE PTR [eax],al
    1dbf:	00 00                	add    BYTE PTR [eax],al
    1dc1:	3c 42                	cmp    al,0x42
    1dc3:	80 80 80 80 80 42 3c 	add    BYTE PTR [eax+0x42808080],0x3c
    1dca:	08 10                	or     BYTE PTR [eax],dl
    1dcc:	00 10                	add    BYTE PTR [eax],dl
    1dce:	28 44 00 38          	sub    BYTE PTR [eax+eax*1+0x38],al
    1dd2:	44                   	inc    esp
    1dd3:	82                   	(bad)  
    1dd4:	82                   	(bad)  
    1dd5:	fe 80 82 44 38 00    	inc    BYTE PTR [eax+0x384482]
    1ddb:	00 00                	add    BYTE PTR [eax],al
    1ddd:	00 24 24             	add    BYTE PTR [esp],ah
    1de0:	00 38                	add    BYTE PTR [eax],bh
    1de2:	44                   	inc    esp
    1de3:	82                   	(bad)  
    1de4:	82                   	(bad)  
    1de5:	fe 80 82 44 38 00    	inc    BYTE PTR [eax+0x384482]
    1deb:	00 10                	add    BYTE PTR [eax],dl
    1ded:	08 04 00             	or     BYTE PTR [eax+eax*1],al
    1df0:	00 38                	add    BYTE PTR [eax],bh
    1df2:	44                   	inc    esp
    1df3:	82                   	(bad)  
    1df4:	82                   	(bad)  
    1df5:	fe 80 82 44 38 00    	inc    BYTE PTR [eax+0x384482]
    1dfb:	00 00                	add    BYTE PTR [eax],al
    1dfd:	00 24 24             	add    BYTE PTR [esp],ah
    1e00:	00 10                	add    BYTE PTR [eax],dl
    1e02:	10 10                	adc    BYTE PTR [eax],dl
    1e04:	10 10                	adc    BYTE PTR [eax],dl
    1e06:	10 10                	adc    BYTE PTR [eax],dl
    1e08:	10 10                	adc    BYTE PTR [eax],dl
    1e0a:	00 00                	add    BYTE PTR [eax],al
    1e0c:	00 10                	add    BYTE PTR [eax],dl
    1e0e:	28 44 00 10          	sub    BYTE PTR [eax+eax*1+0x10],al
    1e12:	10 10                	adc    BYTE PTR [eax],dl
    1e14:	10 10                	adc    BYTE PTR [eax],dl
    1e16:	10 10                	adc    BYTE PTR [eax],dl
    1e18:	10 10                	adc    BYTE PTR [eax],dl
    1e1a:	00 00                	add    BYTE PTR [eax],al
    1e1c:	10 08                	adc    BYTE PTR [eax],cl
    1e1e:	04 00                	add    al,0x0
    1e20:	00 10                	add    BYTE PTR [eax],dl
    1e22:	10 10                	adc    BYTE PTR [eax],dl
    1e24:	10 10                	adc    BYTE PTR [eax],dl
    1e26:	10 10                	adc    BYTE PTR [eax],dl
    1e28:	10 10                	adc    BYTE PTR [eax],dl
    1e2a:	00 00                	add    BYTE PTR [eax],al
    1e2c:	24 24                	and    al,0x24
    1e2e:	00 38                	add    BYTE PTR [eax],bh
    1e30:	44                   	inc    esp
    1e31:	82                   	(bad)  
    1e32:	82                   	(bad)  
    1e33:	82                   	(bad)  
    1e34:	82                   	(bad)  
    1e35:	fe 82 82 82 82 00    	inc    BYTE PTR [edx+0x828282]
    1e3b:	00 00                	add    BYTE PTR [eax],al
    1e3d:	38 44 38 44          	cmp    BYTE PTR [eax+edi*1+0x44],al
    1e41:	82                   	(bad)  
    1e42:	82                   	(bad)  
    1e43:	82                   	(bad)  
    1e44:	82                   	(bad)  
    1e45:	fe 82 82 82 82 00    	inc    BYTE PTR [edx+0x828282]
    1e4b:	00 0c 08             	add    BYTE PTR [eax+ecx*1],cl
    1e4e:	10 fe                	adc    dh,bh
    1e50:	80 80 80 80 f8 80 80 	add    BYTE PTR [eax-0x7f077f80],0x80
    1e57:	80 80 fe 00 00 00 00 	add    BYTE PTR [eax+0xfe],0x0
    1e5e:	00 00                	add    BYTE PTR [eax],al
    1e60:	00 60 1c             	add    BYTE PTR [eax+0x1c],ah
    1e63:	12 72 9e             	adc    dh,BYTE PTR [edx-0x62]
    1e66:	90                   	nop
    1e67:	90                   	nop
    1e68:	92                   	xchg   edx,eax
    1e69:	6c                   	ins    BYTE PTR es:[edi],dx
    1e6a:	00 00                	add    BYTE PTR [eax],al
    1e6c:	0c 10                	or     al,0x10
    1e6e:	20 28                	and    BYTE PTR [eax],ch
    1e70:	28 28                	sub    BYTE PTR [eax],ch
    1e72:	fe                   	(bad)  
    1e73:	28 28                	sub    BYTE PTR [eax],ch
    1e75:	28 28                	sub    BYTE PTR [eax],ch
    1e77:	28 28                	sub    BYTE PTR [eax],ch
    1e79:	28 00                	sub    BYTE PTR [eax],al
    1e7b:	00 00                	add    BYTE PTR [eax],al
    1e7d:	10 28                	adc    BYTE PTR [eax],ch
    1e7f:	44                   	inc    esp
    1e80:	00 38                	add    BYTE PTR [eax],bh
    1e82:	44                   	inc    esp
    1e83:	82                   	(bad)  
    1e84:	82                   	(bad)  
    1e85:	82                   	(bad)  
    1e86:	82                   	(bad)  
    1e87:	82                   	(bad)  
    1e88:	44                   	inc    esp
    1e89:	38 00                	cmp    BYTE PTR [eax],al
    1e8b:	00 00                	add    BYTE PTR [eax],al
    1e8d:	00 24 24             	add    BYTE PTR [esp],ah
    1e90:	00 38                	add    BYTE PTR [eax],bh
    1e92:	44                   	inc    esp
    1e93:	82                   	(bad)  
    1e94:	82                   	(bad)  
    1e95:	82                   	(bad)  
    1e96:	82                   	(bad)  
    1e97:	82                   	(bad)  
    1e98:	44                   	inc    esp
    1e99:	38 00                	cmp    BYTE PTR [eax],al
    1e9b:	00 10                	add    BYTE PTR [eax],dl
    1e9d:	08 04 00             	or     BYTE PTR [eax+eax*1],al
    1ea0:	00 38                	add    BYTE PTR [eax],bh
    1ea2:	44                   	inc    esp
    1ea3:	82                   	(bad)  
    1ea4:	82                   	(bad)  
    1ea5:	82                   	(bad)  
    1ea6:	82                   	(bad)  
    1ea7:	82                   	(bad)  
    1ea8:	44                   	inc    esp
    1ea9:	38 00                	cmp    BYTE PTR [eax],al
    1eab:	00 00                	add    BYTE PTR [eax],al
    1ead:	10 28                	adc    BYTE PTR [eax],ch
    1eaf:	44                   	inc    esp
    1eb0:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    1eb6:	82                   	(bad)  
    1eb7:	82                   	(bad)  
    1eb8:	42                   	inc    edx
    1eb9:	3e 00 00             	add    BYTE PTR ds:[eax],al
    1ebc:	10 08                	adc    BYTE PTR [eax],cl
    1ebe:	04 00                	add    al,0x0
    1ec0:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    1ec6:	82                   	(bad)  
    1ec7:	82                   	(bad)  
    1ec8:	42                   	inc    edx
    1ec9:	3e 00 00             	add    BYTE PTR ds:[eax],al
    1ecc:	00 00                	add    BYTE PTR [eax],al
    1ece:	24 24                	and    al,0x24
    1ed0:	00 82 82 44 44 28    	add    BYTE PTR [edx+0x28444482],al
    1ed6:	28 10                	sub    BYTE PTR [eax],dl
    1ed8:	10 20                	adc    BYTE PTR [eax],ah
    1eda:	20 40 24             	and    BYTE PTR [eax+0x24],al
    1edd:	24 00                	and    al,0x0
    1edf:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1ee3:	82                   	(bad)  
    1ee4:	82                   	(bad)  
    1ee5:	82                   	(bad)  
    1ee6:	82                   	(bad)  
    1ee7:	82                   	(bad)  
    1ee8:	44                   	inc    esp
    1ee9:	38 00                	cmp    BYTE PTR [eax],al
    1eeb:	00 24 24             	add    BYTE PTR [esp],ah
    1eee:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    1ef4:	82                   	(bad)  
    1ef5:	82                   	(bad)  
    1ef6:	82                   	(bad)  
    1ef7:	82                   	(bad)  
    1ef8:	44                   	inc    esp
    1ef9:	38 00                	cmp    BYTE PTR [eax],al
    1efb:	00 00                	add    BYTE PTR [eax],al
    1efd:	28 28                	sub    BYTE PTR [eax],ch
    1eff:	28 3c 6a             	sub    BYTE PTR [edx+ebp*2],bh
    1f02:	a8 a8                	test   al,0xa8
    1f04:	a8 a8                	test   al,0xa8
    1f06:	a8 6a                	test   al,0x6a
    1f08:	3c 28                	cmp    al,0x28
    1f0a:	28 28                	sub    BYTE PTR [eax],ch
    1f0c:	00 0c 12             	add    BYTE PTR [edx+edx*1],cl
    1f0f:	20 20                	and    BYTE PTR [eax],ah
    1f11:	20 fc                	and    ah,bh
    1f13:	20 20                	and    BYTE PTR [eax],ah
    1f15:	20 60 a0             	and    BYTE PTR [eax-0x60],ah
    1f18:	b2 4c                	mov    dl,0x4c
    1f1a:	00 00                	add    BYTE PTR [eax],al
    1f1c:	00 82 82 44 28 10    	add    BYTE PTR [edx+0x10284482],al
    1f22:	fe                   	(bad)  
    1f23:	10 10                	adc    BYTE PTR [eax],dl
    1f25:	fe                   	(bad)  
    1f26:	10 10                	adc    BYTE PTR [eax],dl
    1f28:	10 10                	adc    BYTE PTR [eax],dl
    1f2a:	00 00                	add    BYTE PTR [eax],al
    1f2c:	00 e0                	add    al,ah
    1f2e:	90                   	nop
    1f2f:	88 88 88 94 e4 9f    	mov    BYTE PTR [eax-0x601b6b78],cl
    1f35:	84 84 84 84 84 00 00 	test   BYTE PTR [esp+eax*4+0x8484],al
    1f3c:	00 0c 12             	add    BYTE PTR [edx+edx*1],cl
    1f3f:	10 10                	adc    BYTE PTR [eax],dl
    1f41:	10 fe                	adc    dh,bh
    1f43:	10 10                	adc    BYTE PTR [eax],dl
    1f45:	10 10                	adc    BYTE PTR [eax],dl
    1f47:	10 90 60 00 00 0c    	adc    BYTE PTR [eax+0xc000060],dl
    1f4d:	08 10                	or     BYTE PTR [eax],dl
    1f4f:	00 00                	add    BYTE PTR [eax],al
    1f51:	78 04                	js     0x1f57
    1f53:	04 3c                	add    al,0x3c
    1f55:	44                   	inc    esp
    1f56:	84 84 44 3e 00 00 0c 	test   BYTE PTR [esp+eax*2+0xc00003e],al
    1f5d:	08 10                	or     BYTE PTR [eax],dl
    1f5f:	00 00                	add    BYTE PTR [eax],al
    1f61:	10 10                	adc    BYTE PTR [eax],dl
    1f63:	10 10                	adc    BYTE PTR [eax],dl
    1f65:	10 10                	adc    BYTE PTR [eax],dl
    1f67:	10 10                	adc    BYTE PTR [eax],dl
    1f69:	10 00                	adc    BYTE PTR [eax],al
    1f6b:	00 0c 08             	add    BYTE PTR [eax+ecx*1],cl
    1f6e:	10 00                	adc    BYTE PTR [eax],al
    1f70:	00 38                	add    BYTE PTR [eax],bh
    1f72:	44                   	inc    esp
    1f73:	82                   	(bad)  
    1f74:	82                   	(bad)  
    1f75:	82                   	(bad)  
    1f76:	82                   	(bad)  
    1f77:	82                   	(bad)  
    1f78:	44                   	inc    esp
    1f79:	38 00                	cmp    BYTE PTR [eax],al
    1f7b:	00 0c 08             	add    BYTE PTR [eax+ecx*1],cl
    1f7e:	10 00                	adc    BYTE PTR [eax],al
    1f80:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    1f86:	82                   	(bad)  
    1f87:	82                   	(bad)  
    1f88:	42                   	inc    edx
    1f89:	3e 00 00             	add    BYTE PTR ds:[eax],al
    1f8c:	00 12                	add    BYTE PTR [edx],dl
    1f8e:	2a 24 00             	sub    ah,BYTE PTR [eax+eax*1]
    1f91:	f8                   	clc    
    1f92:	84 82 82 82 82 82    	test   BYTE PTR [edx-0x7d7d7d7e],al
    1f98:	82                   	(bad)  
    1f99:	82                   	(bad)  
    1f9a:	00 00                	add    BYTE PTR [eax],al
    1f9c:	12 2a                	adc    ch,BYTE PTR [edx]
    1f9e:	24 00                	and    al,0x0
    1fa0:	82                   	(bad)  
    1fa1:	c2 c2 a2             	ret    0xa2c2
    1fa4:	92                   	xchg   edx,eax
    1fa5:	92                   	xchg   edx,eax
    1fa6:	8a 86 86 82 00 00    	mov    al,BYTE PTR [esi+0x8286]
    1fac:	00 00                	add    BYTE PTR [eax],al
    1fae:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    1fb1:	04 3c                	add    al,0x3c
    1fb3:	44                   	inc    esp
    1fb4:	84 84 44 3e 00 fe 00 	test   BYTE PTR [esp+eax*2+0xfe003e],al
    1fbb:	00 00                	add    BYTE PTR [eax],al
    1fbd:	00 00                	add    BYTE PTR [eax],al
    1fbf:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    1fc3:	82                   	(bad)  
    1fc4:	82                   	(bad)  
    1fc5:	82                   	(bad)  
    1fc6:	44                   	inc    esp
    1fc7:	38 00                	cmp    BYTE PTR [eax],al
    1fc9:	fe 00                	inc    BYTE PTR [eax]
    1fcb:	00 00                	add    BYTE PTR [eax],al
    1fcd:	10 10                	adc    BYTE PTR [eax],dl
    1fcf:	00 00                	add    BYTE PTR [eax],al
    1fd1:	10 10                	adc    BYTE PTR [eax],dl
    1fd3:	20 44 82 82          	and    BYTE PTR [edx+eax*4-0x7e],al
    1fd7:	82                   	(bad)  
    1fd8:	44                   	inc    esp
    1fd9:	38 00                	cmp    BYTE PTR [eax],al
	...
    1fe3:	00 00                	add    BYTE PTR [eax],al
    1fe5:	00 fe                	add    dh,bh
    1fe7:	80 80 80 00 00 00 00 	add    BYTE PTR [eax+0x80],0x0
	...
    1ff6:	fe 02                	inc    BYTE PTR [edx]
    1ff8:	02 02                	add    al,BYTE PTR [edx]
    1ffa:	00 00                	add    BYTE PTR [eax],al
    1ffc:	00 10                	add    BYTE PTR [eax],dl
    1ffe:	30 10                	xor    BYTE PTR [eax],dl
    2000:	10 10                	adc    BYTE PTR [eax],dl
    2002:	00 fe                	add    dh,bh
    2004:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    2007:	38 40 7c             	cmp    BYTE PTR [eax+0x7c],al
    200a:	00 00                	add    BYTE PTR [eax],al
    200c:	00 10                	add    BYTE PTR [eax],dl
    200e:	30 10                	xor    BYTE PTR [eax],dl
    2010:	10 10                	adc    BYTE PTR [eax],dl
    2012:	00 fe                	add    dh,bh
    2014:	00 18                	add    BYTE PTR [eax],bl
    2016:	28 48 7c             	sub    BYTE PTR [eax+0x7c],cl
    2019:	08 00                	or     BYTE PTR [eax],al
    201b:	00 00                	add    BYTE PTR [eax],al
    201d:	10 10                	adc    BYTE PTR [eax],dl
    201f:	00 00                	add    BYTE PTR [eax],al
    2021:	10 10                	adc    BYTE PTR [eax],dl
    2023:	10 10                	adc    BYTE PTR [eax],dl
    2025:	10 10                	adc    BYTE PTR [eax],dl
    2027:	10 10                	adc    BYTE PTR [eax],dl
    2029:	10 00                	adc    BYTE PTR [eax],al
    202b:	00 00                	add    BYTE PTR [eax],al
    202d:	00 00                	add    BYTE PTR [eax],al
    202f:	00 12                	add    BYTE PTR [edx],dl
    2031:	24 48                	and    al,0x48
    2033:	90                   	nop
    2034:	90                   	nop
    2035:	48                   	dec    eax
    2036:	24 12                	and    al,0x12
	...
    2040:	90                   	nop
    2041:	48                   	dec    eax
    2042:	24 12                	and    al,0x12
    2044:	12 24 48             	adc    ah,BYTE PTR [eax+ecx*2]
    2047:	90                   	nop
    2048:	00 00                	add    BYTE PTR [eax],al
    204a:	00 00                	add    BYTE PTR [eax],al
    204c:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    2050:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    2054:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    2058:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    205c:	55                   	push   ebp
    205d:	aa                   	stos   BYTE PTR es:[edi],al
    205e:	55                   	push   ebp
    205f:	aa                   	stos   BYTE PTR es:[edi],al
    2060:	55                   	push   ebp
    2061:	aa                   	stos   BYTE PTR es:[edi],al
    2062:	55                   	push   ebp
    2063:	aa                   	stos   BYTE PTR es:[edi],al
    2064:	55                   	push   ebp
    2065:	aa                   	stos   BYTE PTR es:[edi],al
    2066:	55                   	push   ebp
    2067:	aa                   	stos   BYTE PTR es:[edi],al
    2068:	55                   	push   ebp
    2069:	aa                   	stos   BYTE PTR es:[edi],al
    206a:	55                   	push   ebp
    206b:	aa                   	stos   BYTE PTR es:[edi],al
    206c:	77 dd                	ja     0x204b
    206e:	77 dd                	ja     0x204d
    2070:	77 dd                	ja     0x204f
    2072:	77 dd                	ja     0x2051
    2074:	77 dd                	ja     0x2053
    2076:	77 dd                	ja     0x2055
    2078:	77 dd                	ja     0x2057
    207a:	77 dd                	ja     0x2059
    207c:	10 10                	adc    BYTE PTR [eax],dl
    207e:	10 10                	adc    BYTE PTR [eax],dl
    2080:	10 10                	adc    BYTE PTR [eax],dl
    2082:	10 10                	adc    BYTE PTR [eax],dl
    2084:	10 10                	adc    BYTE PTR [eax],dl
    2086:	10 10                	adc    BYTE PTR [eax],dl
    2088:	10 10                	adc    BYTE PTR [eax],dl
    208a:	10 10                	adc    BYTE PTR [eax],dl
    208c:	10 10                	adc    BYTE PTR [eax],dl
    208e:	10 10                	adc    BYTE PTR [eax],dl
    2090:	10 10                	adc    BYTE PTR [eax],dl
    2092:	10 f0                	adc    al,dh
    2094:	10 10                	adc    BYTE PTR [eax],dl
    2096:	10 10                	adc    BYTE PTR [eax],dl
    2098:	10 10                	adc    BYTE PTR [eax],dl
    209a:	10 10                	adc    BYTE PTR [eax],dl
    209c:	10 10                	adc    BYTE PTR [eax],dl
    209e:	10 10                	adc    BYTE PTR [eax],dl
    20a0:	10 10                	adc    BYTE PTR [eax],dl
    20a2:	10 f0                	adc    al,dh
    20a4:	10 f0                	adc    al,dh
    20a6:	10 10                	adc    BYTE PTR [eax],dl
    20a8:	10 10                	adc    BYTE PTR [eax],dl
    20aa:	10 10                	adc    BYTE PTR [eax],dl
    20ac:	14 14                	adc    al,0x14
    20ae:	14 14                	adc    al,0x14
    20b0:	14 14                	adc    al,0x14
    20b2:	14 f4                	adc    al,0xf4
    20b4:	14 14                	adc    al,0x14
    20b6:	14 14                	adc    al,0x14
    20b8:	14 14                	adc    al,0x14
    20ba:	14 14                	adc    al,0x14
    20bc:	00 00                	add    BYTE PTR [eax],al
    20be:	00 00                	add    BYTE PTR [eax],al
    20c0:	00 00                	add    BYTE PTR [eax],al
    20c2:	00 fc                	add    ah,bh
    20c4:	14 14                	adc    al,0x14
    20c6:	14 14                	adc    al,0x14
    20c8:	14 14                	adc    al,0x14
    20ca:	14 14                	adc    al,0x14
    20cc:	00 00                	add    BYTE PTR [eax],al
    20ce:	00 00                	add    BYTE PTR [eax],al
    20d0:	00 00                	add    BYTE PTR [eax],al
    20d2:	00 f0                	add    al,dh
    20d4:	10 f0                	adc    al,dh
    20d6:	10 10                	adc    BYTE PTR [eax],dl
    20d8:	10 10                	adc    BYTE PTR [eax],dl
    20da:	10 10                	adc    BYTE PTR [eax],dl
    20dc:	14 14                	adc    al,0x14
    20de:	14 14                	adc    al,0x14
    20e0:	14 14                	adc    al,0x14
    20e2:	14 f4                	adc    al,0xf4
    20e4:	04 f4                	add    al,0xf4
    20e6:	14 14                	adc    al,0x14
    20e8:	14 14                	adc    al,0x14
    20ea:	14 14                	adc    al,0x14
    20ec:	14 14                	adc    al,0x14
    20ee:	14 14                	adc    al,0x14
    20f0:	14 14                	adc    al,0x14
    20f2:	14 14                	adc    al,0x14
    20f4:	14 14                	adc    al,0x14
    20f6:	14 14                	adc    al,0x14
    20f8:	14 14                	adc    al,0x14
    20fa:	14 14                	adc    al,0x14
    20fc:	00 00                	add    BYTE PTR [eax],al
    20fe:	00 00                	add    BYTE PTR [eax],al
    2100:	00 00                	add    BYTE PTR [eax],al
    2102:	00 fc                	add    ah,bh
    2104:	04 f4                	add    al,0xf4
    2106:	14 14                	adc    al,0x14
    2108:	14 14                	adc    al,0x14
    210a:	14 14                	adc    al,0x14
    210c:	14 14                	adc    al,0x14
    210e:	14 14                	adc    al,0x14
    2110:	14 14                	adc    al,0x14
    2112:	14 f4                	adc    al,0xf4
    2114:	04 fc                	add    al,0xfc
    2116:	00 00                	add    BYTE PTR [eax],al
    2118:	00 00                	add    BYTE PTR [eax],al
    211a:	00 00                	add    BYTE PTR [eax],al
    211c:	14 14                	adc    al,0x14
    211e:	14 14                	adc    al,0x14
    2120:	14 14                	adc    al,0x14
    2122:	14 fc                	adc    al,0xfc
	...
    212c:	10 10                	adc    BYTE PTR [eax],dl
    212e:	10 10                	adc    BYTE PTR [eax],dl
    2130:	10 10                	adc    BYTE PTR [eax],dl
    2132:	10 f0                	adc    al,dh
    2134:	10 f0                	adc    al,dh
	...
    2142:	00 f0                	add    al,dh
    2144:	10 10                	adc    BYTE PTR [eax],dl
    2146:	10 10                	adc    BYTE PTR [eax],dl
    2148:	10 10                	adc    BYTE PTR [eax],dl
    214a:	10 10                	adc    BYTE PTR [eax],dl
    214c:	10 10                	adc    BYTE PTR [eax],dl
    214e:	10 10                	adc    BYTE PTR [eax],dl
    2150:	10 10                	adc    BYTE PTR [eax],dl
    2152:	10 1f                	adc    BYTE PTR [edi],bl
	...
    215c:	10 10                	adc    BYTE PTR [eax],dl
    215e:	10 10                	adc    BYTE PTR [eax],dl
    2160:	10 10                	adc    BYTE PTR [eax],dl
    2162:	10 ff                	adc    bh,bh
	...
    2170:	00 00                	add    BYTE PTR [eax],al
    2172:	00 ff                	add    bh,bh
    2174:	10 10                	adc    BYTE PTR [eax],dl
    2176:	10 10                	adc    BYTE PTR [eax],dl
    2178:	10 10                	adc    BYTE PTR [eax],dl
    217a:	10 10                	adc    BYTE PTR [eax],dl
    217c:	10 10                	adc    BYTE PTR [eax],dl
    217e:	10 10                	adc    BYTE PTR [eax],dl
    2180:	10 10                	adc    BYTE PTR [eax],dl
    2182:	10 1f                	adc    BYTE PTR [edi],bl
    2184:	10 10                	adc    BYTE PTR [eax],dl
    2186:	10 10                	adc    BYTE PTR [eax],dl
    2188:	10 10                	adc    BYTE PTR [eax],dl
    218a:	10 10                	adc    BYTE PTR [eax],dl
    218c:	00 00                	add    BYTE PTR [eax],al
    218e:	00 00                	add    BYTE PTR [eax],al
    2190:	00 00                	add    BYTE PTR [eax],al
    2192:	00 ff                	add    bh,bh
	...
    219c:	10 10                	adc    BYTE PTR [eax],dl
    219e:	10 10                	adc    BYTE PTR [eax],dl
    21a0:	10 10                	adc    BYTE PTR [eax],dl
    21a2:	10 ff                	adc    bh,bh
    21a4:	10 10                	adc    BYTE PTR [eax],dl
    21a6:	10 10                	adc    BYTE PTR [eax],dl
    21a8:	10 10                	adc    BYTE PTR [eax],dl
    21aa:	10 10                	adc    BYTE PTR [eax],dl
    21ac:	10 10                	adc    BYTE PTR [eax],dl
    21ae:	10 10                	adc    BYTE PTR [eax],dl
    21b0:	10 10                	adc    BYTE PTR [eax],dl
    21b2:	10 1f                	adc    BYTE PTR [edi],bl
    21b4:	10 1f                	adc    BYTE PTR [edi],bl
    21b6:	10 10                	adc    BYTE PTR [eax],dl
    21b8:	10 10                	adc    BYTE PTR [eax],dl
    21ba:	10 10                	adc    BYTE PTR [eax],dl
    21bc:	14 14                	adc    al,0x14
    21be:	14 14                	adc    al,0x14
    21c0:	14 14                	adc    al,0x14
    21c2:	14 17                	adc    al,0x17
    21c4:	14 14                	adc    al,0x14
    21c6:	14 14                	adc    al,0x14
    21c8:	14 14                	adc    al,0x14
    21ca:	14 14                	adc    al,0x14
    21cc:	14 14                	adc    al,0x14
    21ce:	14 14                	adc    al,0x14
    21d0:	14 14                	adc    al,0x14
    21d2:	14 17                	adc    al,0x17
    21d4:	10 1f                	adc    BYTE PTR [edi],bl
	...
    21e2:	00 1f                	add    BYTE PTR [edi],bl
    21e4:	10 17                	adc    BYTE PTR [edi],dl
    21e6:	14 14                	adc    al,0x14
    21e8:	14 14                	adc    al,0x14
    21ea:	14 14                	adc    al,0x14
    21ec:	14 14                	adc    al,0x14
    21ee:	14 14                	adc    al,0x14
    21f0:	14 14                	adc    al,0x14
    21f2:	14 f7                	adc    al,0xf7
    21f4:	00 ff                	add    bh,bh
	...
    2202:	00 ff                	add    bh,bh
    2204:	00 f7                	add    bh,dh
    2206:	14 14                	adc    al,0x14
    2208:	14 14                	adc    al,0x14
    220a:	14 14                	adc    al,0x14
    220c:	14 14                	adc    al,0x14
    220e:	14 14                	adc    al,0x14
    2210:	14 14                	adc    al,0x14
    2212:	14 17                	adc    al,0x17
    2214:	10 17                	adc    BYTE PTR [edi],dl
    2216:	14 14                	adc    al,0x14
    2218:	14 14                	adc    al,0x14
    221a:	14 14                	adc    al,0x14
    221c:	00 00                	add    BYTE PTR [eax],al
    221e:	00 00                	add    BYTE PTR [eax],al
    2220:	00 00                	add    BYTE PTR [eax],al
    2222:	00 ff                	add    bh,bh
    2224:	00 ff                	add    bh,bh
    2226:	00 00                	add    BYTE PTR [eax],al
    2228:	00 00                	add    BYTE PTR [eax],al
    222a:	00 00                	add    BYTE PTR [eax],al
    222c:	14 14                	adc    al,0x14
    222e:	14 14                	adc    al,0x14
    2230:	14 14                	adc    al,0x14
    2232:	14 f7                	adc    al,0xf7
    2234:	00 f7                	add    bh,dh
    2236:	14 14                	adc    al,0x14
    2238:	14 14                	adc    al,0x14
    223a:	14 14                	adc    al,0x14
    223c:	10 10                	adc    BYTE PTR [eax],dl
    223e:	10 10                	adc    BYTE PTR [eax],dl
    2240:	10 10                	adc    BYTE PTR [eax],dl
    2242:	10 ff                	adc    bh,bh
    2244:	00 ff                	add    bh,bh
    2246:	00 00                	add    BYTE PTR [eax],al
    2248:	00 00                	add    BYTE PTR [eax],al
    224a:	00 00                	add    BYTE PTR [eax],al
    224c:	14 14                	adc    al,0x14
    224e:	14 14                	adc    al,0x14
    2250:	14 14                	adc    al,0x14
    2252:	14 ff                	adc    al,0xff
	...
    2260:	00 00                	add    BYTE PTR [eax],al
    2262:	00 ff                	add    bh,bh
    2264:	00 ff                	add    bh,bh
    2266:	10 10                	adc    BYTE PTR [eax],dl
    2268:	10 10                	adc    BYTE PTR [eax],dl
    226a:	10 10                	adc    BYTE PTR [eax],dl
    226c:	00 00                	add    BYTE PTR [eax],al
    226e:	00 00                	add    BYTE PTR [eax],al
    2270:	00 00                	add    BYTE PTR [eax],al
    2272:	00 ff                	add    bh,bh
    2274:	14 14                	adc    al,0x14
    2276:	14 14                	adc    al,0x14
    2278:	14 14                	adc    al,0x14
    227a:	14 14                	adc    al,0x14
    227c:	14 14                	adc    al,0x14
    227e:	14 14                	adc    al,0x14
    2280:	14 14                	adc    al,0x14
    2282:	14 1f                	adc    al,0x1f
	...
    228c:	10 10                	adc    BYTE PTR [eax],dl
    228e:	10 10                	adc    BYTE PTR [eax],dl
    2290:	10 10                	adc    BYTE PTR [eax],dl
    2292:	10 1f                	adc    BYTE PTR [edi],bl
    2294:	10 1f                	adc    BYTE PTR [edi],bl
	...
    22a2:	00 1f                	add    BYTE PTR [edi],bl
    22a4:	10 1f                	adc    BYTE PTR [edi],bl
    22a6:	10 10                	adc    BYTE PTR [eax],dl
    22a8:	10 10                	adc    BYTE PTR [eax],dl
    22aa:	10 10                	adc    BYTE PTR [eax],dl
    22ac:	00 00                	add    BYTE PTR [eax],al
    22ae:	00 00                	add    BYTE PTR [eax],al
    22b0:	00 00                	add    BYTE PTR [eax],al
    22b2:	00 1f                	add    BYTE PTR [edi],bl
    22b4:	14 14                	adc    al,0x14
    22b6:	14 14                	adc    al,0x14
    22b8:	14 14                	adc    al,0x14
    22ba:	14 14                	adc    al,0x14
    22bc:	14 14                	adc    al,0x14
    22be:	14 14                	adc    al,0x14
    22c0:	14 14                	adc    al,0x14
    22c2:	14 f7                	adc    al,0xf7
    22c4:	14 14                	adc    al,0x14
    22c6:	14 14                	adc    al,0x14
    22c8:	14 14                	adc    al,0x14
    22ca:	14 14                	adc    al,0x14
    22cc:	10 10                	adc    BYTE PTR [eax],dl
    22ce:	10 10                	adc    BYTE PTR [eax],dl
    22d0:	10 10                	adc    BYTE PTR [eax],dl
    22d2:	10 ff                	adc    bh,bh
    22d4:	10 ff                	adc    bh,bh
    22d6:	10 10                	adc    BYTE PTR [eax],dl
    22d8:	10 10                	adc    BYTE PTR [eax],dl
    22da:	10 10                	adc    BYTE PTR [eax],dl
    22dc:	10 10                	adc    BYTE PTR [eax],dl
    22de:	10 10                	adc    BYTE PTR [eax],dl
    22e0:	10 10                	adc    BYTE PTR [eax],dl
    22e2:	10 f0                	adc    al,dh
	...
    22f0:	00 00                	add    BYTE PTR [eax],al
    22f2:	00 1f                	add    BYTE PTR [edi],bl
    22f4:	10 10                	adc    BYTE PTR [eax],dl
    22f6:	10 10                	adc    BYTE PTR [eax],dl
    22f8:	10 10                	adc    BYTE PTR [eax],dl
    22fa:	10 10                	adc    BYTE PTR [eax],dl
    22fc:	ff                   	(bad)  
    22fd:	ff                   	(bad)  
    22fe:	ff                   	(bad)  
    22ff:	ff                   	(bad)  
    2300:	ff                   	(bad)  
    2301:	ff                   	(bad)  
    2302:	ff                   	(bad)  
    2303:	ff                   	(bad)  
    2304:	ff                   	(bad)  
    2305:	ff                   	(bad)  
    2306:	ff                   	(bad)  
    2307:	ff                   	(bad)  
    2308:	ff                   	(bad)  
    2309:	ff                   	(bad)  
    230a:	ff                   	(bad)  
    230b:	ff 00                	inc    DWORD PTR [eax]
    230d:	00 00                	add    BYTE PTR [eax],al
    230f:	00 00                	add    BYTE PTR [eax],al
    2311:	00 00                	add    BYTE PTR [eax],al
    2313:	00 ff                	add    bh,bh
    2315:	ff                   	(bad)  
    2316:	ff                   	(bad)  
    2317:	ff                   	(bad)  
    2318:	ff                   	(bad)  
    2319:	ff                   	(bad)  
    231a:	ff                   	(bad)  
    231b:	ff f0                	push   eax
    231d:	f0                   	locklocklocklocklocklocklocklocklocklocklocklocklocklock
    231e:	f0                   	locklocklocklocklocklocklocklocklocklocklocklocklocklock
    231f:	f0 f0 f0 f0 f0 f0 f0 	lock lock lock lock lock lock lock lock lock lock lock lock lock (bad) 
    2326:	f0 f0 f0 f0 f0 f0 0f 
    232d:	0f                   	(bad)  
    232e:	0f                   	(bad)  
    232f:	0f                   	(bad)  
    2330:	0f                   	(bad)  
    2331:	0f                   	(bad)  
    2332:	0f                   	(bad)  
    2333:	0f                   	(bad)  
    2334:	0f                   	(bad)  
    2335:	0f                   	(bad)  
    2336:	0f                   	(bad)  
    2337:	0f                   	(bad)  
    2338:	0f                   	(bad)  
    2339:	0f                   	(bad)  
    233a:	0f                   	(bad)  
    233b:	0f ff                	(bad)  
    233d:	ff                   	(bad)  
    233e:	ff                   	(bad)  
    233f:	ff                   	(bad)  
    2340:	ff                   	(bad)  
    2341:	ff                   	(bad)  
    2342:	ff                   	(bad)  
    2343:	ff 00                	inc    DWORD PTR [eax]
	...
    2549:	00 00                	add    BYTE PTR [eax],al
    254b:	00 2a                	add    BYTE PTR [edx],ch
    254d:	2a 2a                	sub    ch,BYTE PTR [edx]
    254f:	2a 2a                	sub    ch,BYTE PTR [edx]
    2551:	2a 2a                	sub    ch,BYTE PTR [edx]
    2553:	2a 2a                	sub    ch,BYTE PTR [edx]
    2555:	2a 2a                	sub    ch,BYTE PTR [edx]
    2557:	2a 2a                	sub    ch,BYTE PTR [edx]
    2559:	2a 2e                	sub    ch,BYTE PTR [esi]
    255b:	2e 2a 4f 4f          	sub    cl,BYTE PTR cs:[edi+0x4f]
    255f:	4f                   	dec    edi
    2560:	4f                   	dec    edi
    2561:	4f                   	dec    edi
    2562:	4f                   	dec    edi
    2563:	4f                   	dec    edi
    2564:	4f                   	dec    edi
    2565:	4f                   	dec    edi
    2566:	4f                   	dec    edi
    2567:	4f                   	dec    edi
    2568:	2a 2e                	sub    ch,BYTE PTR [esi]
    256a:	2e 2e 2a 4f 4f       	cs sub cl,BYTE PTR cs:[edi+0x4f]
    256f:	4f                   	dec    edi
    2570:	4f                   	dec    edi
    2571:	4f                   	dec    edi
    2572:	4f                   	dec    edi
    2573:	4f                   	dec    edi
    2574:	4f                   	dec    edi
    2575:	4f                   	dec    edi
    2576:	4f                   	dec    edi
    2577:	2a 2e                	sub    ch,BYTE PTR [esi]
    2579:	2e 2e 2e 2a 4f 4f    	cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    257f:	4f                   	dec    edi
    2580:	4f                   	dec    edi
    2581:	4f                   	dec    edi
    2582:	4f                   	dec    edi
    2583:	4f                   	dec    edi
    2584:	4f                   	dec    edi
    2585:	4f                   	dec    edi
    2586:	2a 2e                	sub    ch,BYTE PTR [esi]
    2588:	2e 2e 2e 2e 2a 4f 4f 	cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    258f:	4f                   	dec    edi
    2590:	4f                   	dec    edi
    2591:	4f                   	dec    edi
    2592:	4f                   	dec    edi
    2593:	4f                   	dec    edi
    2594:	4f                   	dec    edi
    2595:	2a 2e                	sub    ch,BYTE PTR [esi]
    2597:	2e 2e 2e 2e 2e 2a 4f 	cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    259e:	4f 
    259f:	4f                   	dec    edi
    25a0:	4f                   	dec    edi
    25a1:	4f                   	dec    edi
    25a2:	4f                   	dec    edi
    25a3:	4f                   	dec    edi
    25a4:	2a 2e                	sub    ch,BYTE PTR [esi]
    25a6:	2e 2e 2e 2e 2e 2e 2a 	cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    25ad:	4f 4f 
    25af:	4f                   	dec    edi
    25b0:	4f                   	dec    edi
    25b1:	4f                   	dec    edi
    25b2:	4f                   	dec    edi
    25b3:	4f                   	dec    edi
    25b4:	2a 2e                	sub    ch,BYTE PTR [esi]
    25b6:	2e 2e 2e 2e 2e 2e 2a 	cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    25bd:	4f 4f 
    25bf:	4f                   	dec    edi
    25c0:	4f                   	dec    edi
    25c1:	4f                   	dec    edi
    25c2:	4f                   	dec    edi
    25c3:	4f                   	dec    edi
    25c4:	4f                   	dec    edi
    25c5:	2a 2e                	sub    ch,BYTE PTR [esi]
    25c7:	2e 2e 2e 2e 2e 2a 4f 	cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    25ce:	4f 
    25cf:	4f                   	dec    edi
    25d0:	4f                   	dec    edi
    25d1:	2a 2a                	sub    ch,BYTE PTR [edx]
    25d3:	4f                   	dec    edi
    25d4:	4f                   	dec    edi
    25d5:	4f                   	dec    edi
    25d6:	2a 2e                	sub    ch,BYTE PTR [esi]
    25d8:	2e 2e 2e 2e 2a 4f 4f 	cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    25df:	4f                   	dec    edi
    25e0:	2a 2e                	sub    ch,BYTE PTR [esi]
    25e2:	2e 2a 4f 4f          	sub    cl,BYTE PTR cs:[edi+0x4f]
    25e6:	4f                   	dec    edi
    25e7:	2a 2e                	sub    ch,BYTE PTR [esi]
    25e9:	2e 2e 2e 2a 4f 4f    	cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    25ef:	2a 2e                	sub    ch,BYTE PTR [esi]
    25f1:	2e 2e 2e 2a 4f 4f    	cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    25f7:	4f                   	dec    edi
    25f8:	2a 2e                	sub    ch,BYTE PTR [esi]
    25fa:	2e 2e 2a 4f 2a       	cs sub cl,BYTE PTR cs:[edi+0x2a]
    25ff:	2e 2e 2e 2e 2e 2e 2a 	cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    2606:	4f 4f 
    2608:	4f                   	dec    edi
    2609:	2a 2e                	sub    ch,BYTE PTR [esi]
    260b:	2e 2a 2a             	sub    ch,BYTE PTR cs:[edx]
    260e:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    2615:	2e 2a 4f 4f 
    2619:	4f                   	dec    edi
    261a:	2a 2e                	sub    ch,BYTE PTR [esi]
    261c:	2a 2e                	sub    ch,BYTE PTR [esi]
    261e:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    2625:	2e 2e 2a 4f 4f 
    262a:	4f                   	dec    edi
    262b:	2a 2e                	sub    ch,BYTE PTR [esi]
    262d:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    2634:	2e 2e 2e 2e 2a 4f 4f 
    263b:	2a 2e                	sub    ch,BYTE PTR [esi]
    263d:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs cs cs cs cs sub ch,BYTE PTR cs:[edx]
    2644:	2e 2e 2e 2e 2e 2a 2a 
    264b:	2a 00                	sub    al,BYTE PTR [eax]
    264d:	00 00                	add    BYTE PTR [eax],al
    264f:	ff 00                	inc    DWORD PTR [eax]
    2651:	00 00                	add    BYTE PTR [eax],al
    2653:	ff 00                	inc    DWORD PTR [eax]
    2655:	ff                   	(bad)  
    2656:	ff 00                	inc    DWORD PTR [eax]
    2658:	00 00                	add    BYTE PTR [eax],al
    265a:	ff                   	(bad)  
    265b:	ff 00                	inc    DWORD PTR [eax]
    265d:	ff 00                	inc    DWORD PTR [eax]
    265f:	ff                   	(bad)  
    2660:	ff                   	(bad)  
    2661:	ff                   	(bad)  
    2662:	ff                   	(bad)  
    2663:	ff c6                	inc    esi
    2665:	c6 c6 84             	mov    dh,0x84
    2668:	00 00                	add    BYTE PTR [eax],al
    266a:	00 84 00 84 84 00 00 	add    BYTE PTR [eax+eax*1+0x8484],al
    2671:	00 84 84 00 84 00 84 	add    BYTE PTR [esp+eax*4-0x7bff7c00],al
    2678:	84 84 84 84 30 31 32 	test   BYTE PTR [esp+eax*4+0x32313084],al
    267f:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    2686:	61                   	popa   
    2687:	62 63 64             	bound  esp,QWORD PTR [ebx+0x64]
    268a:	65                   	gs
    268b:	66                   	data16
    268c:	30 31                	xor    BYTE PTR [ecx],dh
    268e:	32 33                	xor    dh,BYTE PTR [ebx]
    2690:	34 35                	xor    al,0x35
    2692:	36                   	ss
    2693:	37                   	aaa    
    2694:	38 39                	cmp    BYTE PTR [ecx],bh
    2696:	41                   	inc    ecx
    2697:	42                   	inc    edx
    2698:	43                   	inc    ebx
    2699:	44                   	inc    esp
    269a:	45                   	inc    ebp
    269b:	46                   	inc    esi
	...
