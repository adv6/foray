; =============== S U B R O U T I N E =======================================


sub_1900:                               ; CODE XREF: sub_190E:loc_194D↓p
                                        ; sub_190E+46↓p ...
                pshh
                pshx
                ldhx    5, sp
                lda     , x
                aix     #1
                sthx    5, sp
                pulx
                pulh
                rts
; End of function sub_1900


; =============== S U B R O U T I N E =======================================


sub_190E:                               ; CODE XREF: rst+4↓p
                ais     #-4
                lda     loc_1984+1
                inca
                tsx
                sta     1, x
                lda     loc_1984
                inca

loc_191B:                               ; CODE XREF: ROM:loc_1991↓j
                sta     , x
                ldhx    loc_1984+2
                bra     loc_1940
; ---------------------------------------------------------------------------

loc_1921:                               ; CODE XREF: sub_190E:loc_1940↓j
                                        ; sub_190E+36↓j
                pshx
                pshh
                lda     , x
                psha
                lda     2, x
                inca
                sta     6, sp
                lda     3, x
                ldx     1, x
                pulh
                inca
                bra     loc_1936
; ---------------------------------------------------------------------------

loc_1933:                               ; CODE XREF: sub_190E:loc_1936↓j
                                        ; sub_190E+2A↓j
                clr     , x
                aix     #1

loc_1936:                               ; CODE XREF: sub_190E+23↑j
                dbnza   loc_1933
                dbnz    5, sp, loc_1933
                pulh
                pulx
                aix     #4

loc_1940:                               ; CODE XREF: sub_190E+11↑j
                dbnz    2, sp, loc_1921
                dbnz    1, sp, loc_1921
                ldhx    loc_1988
                pshx
                pshh

loc_194D:                               ; CODE XREF: sub_190E+68↓j
                bsr     sub_1900
                tax
                inca
                sta     3, sp
                bsr     sub_1900
                inca
                sta     4, sp
                deca
                bne     loc_1960
                cbeqx   #0, loc_1978

loc_1960:                               ; CODE XREF: sub_190E+4D↑j
                bsr     sub_1900
                psha
                pulh
                bsr     sub_1900
                tax
                bra     loc_196E
; ---------------------------------------------------------------------------

loc_1969:                               ; CODE XREF: sub_190E:loc_196E↓j
                                        ; sub_190E+64↓j
                bsr     sub_1900
                sta     , x
                aix     #1

loc_196E:                               ; CODE XREF: sub_190E+59↑j
                dbnz    4, sp, loc_1969
                dbnz    3, sp, loc_1969
                bra     loc_194D
; ---------------------------------------------------------------------------

loc_1978:                               ; CODE XREF: sub_190E+4F↑j
                ais     #6
                rts
; End of function sub_190E


; =============== S U B R O U T I N E =======================================


rst:

; FUNCTION CHUNK AT 1B02 SIZE 00000030 BYTES

                ldhx    #2614
                txs
                bsr     sub_190E
                jmp     loc_1B02
; End of function rst

; ---------------------------------------------------------------------------

loc_1984:                               ; DATA XREF: sub_190E+9↑r
                                        ; sub_190E+2↑r ...
                brset   0, byte_1, loc_19A0
                pulh

loc_1988:                               ; DATA XREF: sub_190E+3A↑r
                ldhx    #$F01
                brset   0, byte_5, loc_19C3+1
                brset   0, byte_0, *+3

loc_1991:                               ; CODE XREF: ROM:198E↑j
                brset   0, byte_F, loc_191B
                brclr   7, byte_80, loc_19A6
                rol     , x
                brclr   7, byte_71, loc_19A9+1
                rol     $F, x
                cbeq    $F, x+, loc_19F7+1

loc_19A0:                               ; CODE XREF: ROM:loc_1984↑j
                brclr   7, byte_4F, loc_19B0+2
                ldhx    #$F3B

loc_19A6:                               ; CODE XREF: ROM:1994↑j
                brclr   7, byte_31, loc_19B8

loc_19A9:                               ; CODE XREF: ROM:1998↑j
                bne     loc_19B8+2
                bclr    5, byte_F
                brclr   7, byte_F, loc_19B3

loc_19B0:                               ; CODE XREF: ROM:loc_19A0↑j
                brset   7, byte_F6, loc_19C1

loc_19B3:                               ; CODE XREF: ROM:19AD↑j
                eor     $E, x
                add     $ECC, x

loc_19B8:                               ; CODE XREF: ROM:loc_19A6↑j
                                        ; ROM:loc_19A9↑j
                brset   7, byte_BD, loc_19C9
                ldx     #$E
                nop
                brset   7, byte_8D, loc_19CD+2

loc_19C1:                               ; CODE XREF: ROM:loc_19B0↑j
                                        ; ROM:loc_19CD↓j
                dbnz    x, loc_19D0+1

loc_19C3:                               ; CODE XREF: ROM:198B↑j
                rol     $E, x
                asrx
                brset   7, byte_44, loc_19D6+1

loc_19C9:                               ; CODE XREF: ROM:loc_19B8↑j
                neg     byte_E
                bclr    5, byte_E

loc_19CD:                               ; CODE XREF: ROM:19BE↑j
                brset   3, byte_D, loc_19C1

loc_19D0:                               ; CODE XREF: ROM:loc_19C1↑j
                brclr   6, byte_DA, loc_19E0
                cpx     byte_DAB

loc_19D6:                               ; CODE XREF: ROM:19C6↑j
                brclr   6, byte_93, loc_19E4+2
                dec     , x
                brclr   6, byte_60, loc_19EA
                ldhx    #$D2B

loc_19E0:                               ; CODE XREF: ROM:loc_19D0↑j
                                        ; ROM:loc_1A01↓j
                brclr   6, byte_F, loc_19EE+1
                cpx     , x

loc_19E4:                               ; CODE XREF: ROM:loc_19D6↑j
                brset   6, byte_D6, loc_19F3
                eor     byte_C
                sec

loc_19EA:                               ; CODE XREF: ROM:19DA↑j
                brset   6, byte_7A, loc_19F9
                decx

loc_19EE:                               ; CODE XREF: ROM:loc_19E0↑j
                brset   6, byte_3A, loc_19FB+2
                bset    5, byte_B

loc_19F3:                               ; CODE XREF: ROM:loc_19E4↑j
                adc     , x
                brclr   5, byte_D7, loc_1A01+1

loc_19F7:                               ; CODE XREF: ROM:199D↑j
                bit     byte_B

loc_19F9:                               ; CODE XREF: ROM:loc_19EA↑j
                bgt     loc_1A04+2

loc_19FB:                               ; CODE XREF: ROM:loc_19EE↑j
                mov     #$B, byte_4A
                brclr   5, byte_26, loc_1A0C

loc_1A01:                               ; CODE XREF: ROM:19F4↑j
                brclr   0, byte_A, loc_19E0+1

loc_1A04:                               ; CODE XREF: ROM:loc_1A29↓j
                                        ; ROM:loc_19F9↑j ...
                brset   5, byte_B8, loc_1A10+1
                bgt     loc_1A13
                inc     $A, x
                asra

loc_1A0C:                               ; CODE XREF: ROM:19FE↑j
                brset   5, byte_20, loc_1A16+2
                adc     , x

loc_1A10:                               ; CODE XREF: ROM:loc_1A04↑j
                brclr   4, byte_D2, loc_1A1B+1

loc_1A13:                               ; CODE XREF: ROM:1A07↑j
                add     #9
                tpa

loc_1A16:                               ; CODE XREF: ROM:loc_1A0C↑j
                brclr   4, byte_5D, loc_1A22
                ror     byte_9

loc_1A1B:                               ; CODE XREF: ROM:loc_1A10↑j
                brclr   7, byte_8, loc_1A04+2
                brset   4, byte_C1, loc_1A29
                cli

loc_1A22:                               ; CODE XREF: ROM:loc_1A16↑j
                brset   4, byte_73, loc_1A2C+1
                inca
                brset   4, byte_26, loc_1A31

loc_1A29:                               ; CODE XREF: ROM:1A1E↑j
                brset   0, byte_7, loc_1A04+1

loc_1A2C:                               ; CODE XREF: ROM:1A45↓j
                                        ; ROM:loc_1A22↑j
                brclr   3, byte_B3, loc_1A34+2
                rtc
; ---------------------------------------------------------------------------
                fcb   7
; ---------------------------------------------------------------------------

loc_1A31:                               ; CODE XREF: ROM:1A26↑j
                asl     7, x
                coma

loc_1A34:                               ; CODE XREF: ROM:loc_1A2C↑j
                brclr   3, byte_1E, loc_1A3D
                adc     , x
                brset   3, byte_D5, loc_1A41
                cmp     byte_6

loc_1A3D:                               ; CODE XREF: ROM:loc_1A34↑j
                stop
; ---------------------------------------------------------------------------
                fcb   6
                fcb $6B ; k
                fcb   6
; ---------------------------------------------------------------------------

loc_1A41:                               ; CODE XREF: ROM:1A38↑j
                asla
                brset   3, byte_26, loc_1A4B
                brclr   2, byte_5, loc_1A2C
                brclr   2, byte_C3, loc_1A4E+2

loc_1A4B:                               ; CODE XREF: ROM:1A42↑j
                sbc     #5
                bgnd

loc_1A4E:                               ; CODE XREF: ROM:1A48↑j
                brclr   2, word_63, loc_1A54+2
                ldhx    #$526

loc_1A54:                               ; CODE XREF: ROM:loc_1A4E↑j
                brclr   2, byte_9, loc_1A5B
                jmp     4, x
; ---------------------------------------------------------------------------
                fcb $CF
                fcb   4
; ---------------------------------------------------------------------------

loc_1A5B:                               ; CODE XREF: ROM:loc_1A54↑j
                cpx     byte_4
                tax
                brset   2, byte_7C, loc_1A64+1
                cbeq    4, x+, loc_1AA9+2

loc_1A64:                               ; CODE XREF: ROM:1A5E↑j
                brset   2, byte_2D, loc_1A6B
                bset    2, word_2+1
                jmp     , x
; ---------------------------------------------------------------------------
                fcb   3
; ---------------------------------------------------------------------------

loc_1A6B:                               ; CODE XREF: ROM:loc_1A64↑j
                and     3, x
                jsr     loc_3B6
                brclr   1, byte_9F, loc_1A74+2
                pshx

loc_1A74:                               ; CODE XREF: ROM:1A70↑j
                brclr   1, byte_73, loc_1A7A
                mov     word_2+1, x+
                deca

loc_1A7A:                               ; CODE XREF: ROM:loc_1A74↑j
                brclr   1, byte_36, loc_1A7F+1

loc_1A7D:                               ; CODE XREF: ROM:loc_1A7F↓j
                bhi     loc_1A82

loc_1A7F:                               ; CODE XREF: ROM:loc_1A7A↑j
                brclr   7, word_2, loc_1A7D+1

loc_1A82:                               ; CODE XREF: ROM:loc_1A7D↑j
                brset   1, byte_EA, loc_1A85+2

loc_1A85:                               ; CODE XREF: ROM:loc_1A82↑j
                eor     $2C6, x
                brset   1, byte_B5, loc_1A8D
                and     #2

loc_1A8D:                               ; CODE XREF: ROM:1A88↑j
                txs
                brset   1, byte_84, loc_1A93
                cphx    word_2

loc_1A93:                               ; CODE XREF: ROM:1A8E↑j
                ror     2, x
                asrx
                brset   1, byte_49, loc_1A99+2

loc_1A99:                               ; CODE XREF: ROM:1A96↑j
                dbnz    word_2, loc_1AC9

loc_1A9C:                               ; CODE XREF: ROM:loc_1AA1↓j
                brset   1, byte_20, loc_1AA1
                bclr    1, word_2

loc_1AA1:                               ; CODE XREF: ROM:loc_1A9C↑j
                brclr   3, byte_1, loc_1A9C+2
                brclr   0, byte_EE, loc_1AA7+1

loc_1AA7:                               ; CODE XREF: ROM:1AA4↑j
                sbc     1, x

loc_1AA9:                               ; CODE XREF: ROM:1A61↑j
                sta     $1CC, x
                brclr   0, byte_C1, loc_1AAF+1

loc_1AAF:                               ; CODE XREF: ROM:1AAC↑j
                lda     byte_1
                call    #1, $A201
                clc
                brclr   0, byte_8E, loc_1ABA
                tpa

loc_1ABA:                               ; CODE XREF: ROM:1AB6↑j
                brclr   0, byte_7C, loc_1ABE
                com     , x

loc_1ABE:                               ; CODE XREF: ROM:loc_1ABA↑j
                brclr   0, byte_6B, loc_1AC2
                nsa

loc_1AC2:                               ; CODE XREF: ROM:loc_1ABE↑j
                brclr   0, byte_5A, loc_1AC6
                div

loc_1AC6:                               ; CODE XREF: ROM:loc_1AC2↑j
                brclr   0, byte_4A, loc_1ACA

loc_1AC9:                               ; CODE XREF: ROM:loc_1A99↑j
                coma

loc_1ACA:                               ; CODE XREF: ROM:loc_1AC6↑j
                brclr   0, byte_3C, loc_1ACD+1

loc_1ACD:                               ; CODE XREF: ROM:loc_1ACA↑j
                lsr     byte_1
                bms     loc_1AD1+1

loc_1AD1:                               ; CODE XREF: ROM:1ACF↑j
                beq     loc_1AD3+1

loc_1AD3:                               ; CODE XREF: ROM:loc_1AD1↑j
                bra     loc_1AD6
; ---------------------------------------------------------------------------
                fcb $1A
; ---------------------------------------------------------------------------

loc_1AD6:                               ; CODE XREF: ROM:loc_1AD3↑j
                brclr   0, byte_14, loc_1AD9+1

loc_1AD9:                               ; CODE XREF: ROM:loc_1AD6↑j
                brset   7, byte_1, loc_1AE4
                brclr   0, word_2, *+3

loc_1ADF:                               ; CODE XREF: ROM:1ADC↑j
                jmp     , x
; ---------------------------------------------------------------------------
                fcb   0
                fcb $F6
                fcb   0
                fcb $F1
; ---------------------------------------------------------------------------

loc_1AE4:                               ; CODE XREF: ROM:loc_1AD9↑j
                brset   0, byte_EC, *+3

loc_1AE7:                               ; CODE XREF: ROM:loc_1AE4↑j
                sta     0, x
                sbc     0, x
                jsr     $D8, x
                brset   0, byte_D3, *+3
; ---------------------------------------------------------------------------
unk_1AF1:       fcb $CF                 ; CODE XREF: ROM:1AEE↑j

; =============== S U B R O U T I N E =======================================


sub_1AF2:                               ; CODE XREF: rst+190↓p

; FUNCTION CHUNK AT 2D2A SIZE 00000075 BYTES

                jsr     sub_4158
                lda     #$1C
                sta     byte_1809
                lda     #$30 ; '0'
                sta     byte_180A
                jmp     loc_2D2A
; End of function sub_1AF2

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR rst

loc_1B02:                               ; CODE XREF: rst+6↑J
                jsr     sub_24A4
                jsr     sub_2E02
                jsr     nullsub_1
                bsr     sub_1AF2
                jsr     sub_2EA9
                jsr     sub_3624
                jsr     sub_3880
                jsr     sub_3CC6
                jsr     sub_24B6

loc_1B1C:                               ; CODE XREF: rst+1B5↓j
                jsr     sub_35F3
                jsr     sub_3A01
                lda     #$55 ; 'U'
                ldhx    #$1800
                sta     , x
                asla
                sta     , x
                jsr     sub_3342
                jsr     loc_4490
                bra     loc_1B1C
; END OF FUNCTION CHUNK FOR rst
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1B7B
;   ADDITIONAL PARENT FUNCTION sub_1B91

loc_1B32:                               ; CODE XREF: sub_1B7B+13↓J
                                        ; sub_1B91+16↓J
                lda     3, x
                psha
                lda     2, x
                psha
                ldhx    , x
                pshx
                pshh
                ldhx    7, sp
                lda     3, x
                sta     $11, sp
                lda     2, x
                sta     $10, sp
                ldhx    , x
                sthx    $E, sp
                ldhx    5, sp
                jmp     , x
; END OF FUNCTION CHUNK FOR sub_1B7B

; =============== S U B R O U T I N E =======================================


sub_1B52:                               ; CODE XREF: sub_1D0E↓P
                                        ; sub_1D24↓P ...
                ais     #-2
                psha
                pshx
                pshh
                lda     7, sp
                psha
                lda     7, sp
                psha
                lda     $A, sp
                sta     6, sp
                lda     $B, sp
                sta     7, sp
                lda     3, x
                sta     $B, sp
                lda     2, x
                sta     $A, sp
                ldhx    , x
                sthx    8, sp
                rts
; End of function sub_1B52


; =============== S U B R O U T I N E =======================================


sub_1B7B:                               ; CODE XREF: sub_1D34↓P
                                        ; sub_1D3A↓P ...

; FUNCTION CHUNK AT 1B32 SIZE 00000020 BYTES

                psha
                pshx
                pshh
                pshx
                pshh
                ldhx    6, sp
                pshx
                pshh
                ldhx    $A, sp
                sthx    8, sp
                ldhx    $C, sp
                jmp     loc_1B32
; End of function sub_1B7B


; =============== S U B R O U T I N E =======================================


sub_1B91:                               ; CODE XREF: sub_1D40↓P
                                        ; sub_1D4C↓P ...

; FUNCTION CHUNK AT 1B32 SIZE 00000020 BYTES

                ais     #-2
                psha
                pshx
                pshh
                pshx
                pshh
                ldhx    8, sp
                pshx
                pshh
                ldhx    $C, sp
                aix     #4
                sthx    8, sp
                aix     #-4
                jmp     loc_1B32
; End of function sub_1B91


; =============== S U B R O U T I N E =======================================


sub_1BAA:                               ; CODE XREF: sub_1D34+3↓P
                tsx
                lda     $12, x
                add     5, x
                sta     $12, x
                lda     $11, x
                adc     4, x
                sta     $11, x
                lda     $10, x
                adc     3, x
                sta     $10, x
                lda     $F, x
                adc     2, x
                sta     $F, x
                ais     #$A
                pulh
                pulx
                pula
                rts
; End of function sub_1BAA


; =============== S U B R O U T I N E =======================================


sub_1BC9:                               ; CODE XREF: sub_1D3A+3↓P
                                        ; sub_1D40+3↓P
                tsx
                lda     $12, x
                and     5, x
                sta     $12, x
                lda     $11, x
                and     4, x
                sta     $11, x
                lda     $10, x
                and     3, x
                sta     $10, x
                lda     $F, x
                and     2, x
                sta     $F, x
                ais     #$A
                pulh
                pulx
                pula
                rts
; End of function sub_1BC9


; =============== S U B R O U T I N E =======================================


sub_1BE8:                               ; CODE XREF: sub_1D46+3↓P
                tsx
                lda     $12, x
                ora     5, x
                sta     $12, x
                lda     $11, x
                ora     4, x
                sta     $11, x
                lda     $10, x
                ora     3, x
                sta     $10, x
                lda     $F, x
                ora     2, x
                sta     $F, x
                ais     #$A
                pulh
                pulx
                pula
                rts
; End of function sub_1BE8


; =============== S U B R O U T I N E =======================================


sub_1C07:                               ; CODE XREF: sub_1CAB+2↓P
                                        ; sub_1CB6+2↓P
                ais     #-4
                tsx
                lda     9, x
                ora     $A, x
                ora     $B, x
                bne     loc_1C3D
                lda     $16, x
                ldx     $C, x
                clrh
                div
                sta     $A, sp
                lda     $18, sp
                div
                sta     $B, sp
                lda     $19, sp
                div
                sta     $C, sp
                lda     $1A, sp
                div
                sta     $D, sp
                pshh
                pula
                tsx
                sta     $19, x
                clr     $18, x
                clr     $17, x
                clr     $16, x
                bra     loc_1CA8
; ---------------------------------------------------------------------------

loc_1C3D:                               ; CODE XREF: sub_1C07+9↑j
                ldhx    $C, sp
                sthx    3, sp
                ldhx    $A, sp
                sthx    1, sp
                ldhx    $19, sp
                sthx    $C, sp
                ldhx    $17, sp
                sthx    $A, sp
                clrx
                clrh
                sthx    $19, sp
                sthx    $17, sp
                ldx     #$20 ; ' '

loc_1C5F:                               ; CODE XREF: sub_1C07+9F↓j
                asl     $D, sp
                rol     $C, sp
                rol     $B, sp
                rol     $A, sp
                rol     $1A, sp
                rol     $19, sp
                rol     $18, sp
                rol     $17, sp
                pshx
                ldhx    $18, sp
                cphx    2, sp
                bhi     loc_1C8A
                bcs     loc_1CA5
                ldhx    $1A, sp
                cphx    4, sp
                bcs     loc_1CA5

loc_1C8A:                               ; CODE XREF: sub_1C07+77↑j
                tsx
                lda     $1A, x
                sub     4, x
                sta     $1A, x
                lda     $19, x
                sbc     3, x
                sta     $19, x
                lda     $18, x
                sbc     2, x
                sta     $18, x
                lda     $17, x
                sbc     1, x
                sta     $17, x
                inc     $D, x

loc_1CA5:                               ; CODE XREF: sub_1C07+79↑j
                                        ; sub_1C07+81↑j
                pulx
                dbnzx   loc_1C5F

loc_1CA8:                               ; CODE XREF: sub_1C07+34↑j
                ais     #4
                rts
; End of function sub_1C07


; =============== S U B R O U T I N E =======================================


sub_1CAB:                               ; CODE XREF: sub_1D4C+9↓P
                ais     #-1
                jsr     sub_1C07
                ais     #$B
                pulh
                pulx
                pula
                rts
; End of function sub_1CAB


; =============== S U B R O U T I N E =======================================


sub_1CB6:                               ; CODE XREF: sub_1D4C+3↓P
                ais     #-1
                jsr     sub_1C07
                ldhx    4, sp
                sthx    $11, sp
                ldhx    6, sp
                sthx    $13, sp
                ais     #$B
                pulh
                pulx
                pula
                rts
; End of function sub_1CB6


; =============== S U B R O U T I N E =======================================


sub_1CCD:                               ; CODE XREF: sub_1D84+3↓P
                                        ; sub_1D8A+3↓P
                ldhx    $10, sp
                cphx    3, sp
                bne     loc_1CE4
                ldhx    $12, sp
                cphx    5, sp
                beq     loc_1CE4
                clra
                bcs     loc_1CE2
                lda     #2

loc_1CE2:                               ; CODE XREF: sub_1CCD+11↑j
                cmp     #1

loc_1CE4:                               ; CODE XREF: sub_1CCD+6↑j
                                        ; sub_1CCD+E↑j
                ais     #$C
                pula
                pulh
                pulx
                ais     #4
                jmp     , x
; End of function sub_1CCD


; =============== S U B R O U T I N E =======================================


sub_1CEC:                               ; CODE XREF: sub_2287+7↓P
                tst     3, sp
                beq     locret_1CF7

loc_1CF1:                               ; CODE XREF: sub_1CEC+7↓j
                lsrx
                rora
                dbnz    3, sp, loc_1CF1

locret_1CF7:                            ; CODE XREF: sub_1CEC+3↑j
                rts
; End of function sub_1CEC


; =============== S U B R O U T I N E =======================================


sub_1CF8:                               ; CODE XREF: ROM:3E03↓P
                cpx     3, sp
                bne     loc_1D09
                tsx
                cmp     3, x
                beq     loc_1D09
                clra
                bcs     loc_1D07
                lda     #2

loc_1D07:                               ; CODE XREF: sub_1CF8+B↑j
                cmp     #1

loc_1D09:                               ; CODE XREF: sub_1CF8+3↑j
                                        ; sub_1CF8+8↑j
                pulh
                pulx
                ais     #2
                jmp     , x
; End of function sub_1CF8


; =============== S U B R O U T I N E =======================================


sub_1D0E:                               ; CODE XREF: ROM:2CDE↓P
                                        ; ROM:2CFB↓P ...
                jsr     sub_1B52
                tsx
                inc     8, x
                bne     loc_1D20
                inc     7, x
                bne     loc_1D20
                inc     6, x
                bne     loc_1D20
                inc     5, x

loc_1D20:                               ; CODE XREF: sub_1D0E+6↑j
                                        ; sub_1D0E+A↑j ...
                pulh
                pulx
                pula
                rts
; End of function sub_1D0E


; =============== S U B R O U T I N E =======================================


sub_1D24:                               ; CODE XREF: sub_43AA+A1↓P
                jsr     sub_1B52
                tsx
                com     5, x
                com     6, x
                com     7, x
                com     8, x
                pulh
                pulx
                pula
                rts
; End of function sub_1D24


; =============== S U B R O U T I N E =======================================


sub_1D34:                               ; CODE XREF: sub_3049+31↓P
                jsr     sub_1B7B
                jsr     sub_1BAA
; End of function sub_1D34


; =============== S U B R O U T I N E =======================================


sub_1D3A:                               ; CODE XREF: sub_43AA+AA↓P
                jsr     sub_1B7B
                jsr     sub_1BC9
; End of function sub_1D3A


; =============== S U B R O U T I N E =======================================


sub_1D40:                               ; CODE XREF: ROM:258A↓P
                                        ; ROM:3111↓P ...
                jsr     sub_1B91
                jsr     sub_1BC9
; End of function sub_1D40


; =============== S U B R O U T I N E =======================================


sub_1D46:                               ; CODE XREF: sub_2107+36↓P
                                        ; sub_2107+6B↓P ...
                jsr     sub_1B7B
                jsr     sub_1BE8
; End of function sub_1D46


; =============== S U B R O U T I N E =======================================


sub_1D4C:                               ; CODE XREF: sub_3049+46↓P
                jsr     sub_1B91
                jsr     sub_1CB6

loc_1D52:                               ; CODE XREF: ROM:347A↓P
                jsr     sub_1B91
                jsr     sub_1CAB
; End of function sub_1D4C


; =============== S U B R O U T I N E =======================================


sub_1D58:                               ; CODE XREF: sub_2107:loc_214A↓P
                                        ; sub_2107+4E↓P ...
                jsr     sub_1B52
                tsx
                lda     2, x
                beq     loc_1D6A

loc_1D60:                               ; CODE XREF: sub_1D58+10↓j
                lsr     5, x
                ror     6, x
                ror     7, x
                ror     8, x
                dbnza   loc_1D60

loc_1D6A:                               ; CODE XREF: sub_1D58+6↑j
                pulh
                pulx
                pula
                rts
; End of function sub_1D58


; =============== S U B R O U T I N E =======================================


sub_1D6E:                               ; CODE XREF: sub_2107+2D↓P
                                        ; sub_2107+62↓P ...
                jsr     sub_1B52
                tsx
                lda     2, x
                beq     loc_1D80

loc_1D76:                               ; CODE XREF: sub_1D6E+10↓j
                asl     8, x
                rol     7, x
                rol     6, x
                rol     5, x
                dbnza   loc_1D76

loc_1D80:                               ; CODE XREF: sub_1D6E+6↑j
                pulh
                pulx
                pula
                rts
; End of function sub_1D6E


; =============== S U B R O U T I N E =======================================


sub_1D84:                               ; CODE XREF: sub_3B66+72↓P
                                        ; sub_425D+15↓P ...
                jsr     sub_1B7B
                jsr     sub_1CCD
; End of function sub_1D84


; =============== S U B R O U T I N E =======================================


sub_1D8A:                               ; CODE XREF: sub_2C1F+3↓P
                                        ; ROM:2C3C↓P ...
                jsr     sub_1B91
                jsr     sub_1CCD
; End of function sub_1D8A


; =============== S U B R O U T I N E =======================================


sub_1D90:                               ; CODE XREF: sub_2107+17A↓P
                                        ; sub_24F2+21↓P ...
                psha
                lda     #$81
                psha
                lda     #$F6
                psha
                lda     #$26 ; '&'
                psha
                lda     #$5D ; ']'
                psha
                lda     9, sp
                psha
                lda     9, sp
                psha
                lda     #$D7
                psha
                pshx
                pshh
                ldhx    #$5AD6
                pshx
                pshh
                ldhx    #$8C97
                pshx
                pshh
                tsx
                lda     $D, x
                jsr     , x
                ais     #$D
                pula
                pulh
                pulx
                ais     #2
                jmp     , x
; End of function sub_1D90


; =============== S U B R O U T I N E =======================================


sub_1DC0:                               ; CODE XREF: sub_2107:loc_2142↓P
                                        ; sub_2107+70↓P ...
                psha
                lda     4, sp
                sta     , x
                lda     5, sp
                sta     1, x
                lda     6, sp
                sta     2, x
                lda     7, sp
                sta     3, x
                pula
                pulh
                pulx
                ais     #4
                jmp     , x
; End of function sub_1DC0


; =============== S U B R O U T I N E =======================================


sub_1DDA:                               ; CODE XREF: ROM:3A50↓P
                                        ; sub_43AA+39↓P ...
                psha
                txa
                tsx
                add     2, x
                tax
                pula
                adc     1, sp
                psha
                pulh
                ais     #2
                txa
                add     , x
                tax
                pshh
                pula
                adc     #0
                psha
                pulh
                jmp     1, x
; End of function sub_1DDA


; =============== S U B R O U T I N E =======================================


sub_1DF3:                               ; CODE XREF: sub_2107+13↓P
                                        ; ROM:3D54↓P
                pulh
                pshx
                psha
                ldx     3, sp
                cmp     , x
                bhi     loc_1E19
                bne     loc_1E05
                lda     1, x
                cmp     2, sp
                bls     loc_1E19

loc_1E05:                               ; CODE XREF: sub_1DF3+9↑j
                aix     #2
                asl     2, sp
                rol     1, sp
                txa
                add     2, sp
                tax
                pshh
                pula
                adc     1, sp
                psha
                pulh

loc_1E19:                               ; CODE XREF: sub_1DF3+7↑j
                                        ; sub_1DF3+10↑j
                ais     #3
                lda     2, x
                ldx     3, x
                psha
                pulh
                jmp     , x
; End of function sub_1DF3


; =============== S U B R O U T I N E =======================================


sub_1E22:                               ; CODE XREF: ROM:1EEA↓P
                                        ; sub_1F32+F↓P ...
                tsta
                txa
                pulh
                pulx
                bne     loc_1E3A
                cmp     , x
                bcc     loc_1E3A
                aix     #1
                pshx
                add     1, sp
                psha
                pshh
                pula
                adc     #0
                psha
                pulh
                pulx
                pula

loc_1E3A:                               ; CODE XREF: sub_1E22+4↑j
                                        ; sub_1E22+7↑j
                txa
                add     1, x
                tax
                pshh
                pula
                adc     #0
                psha
                pulh
                jmp     2, x
; End of function sub_1E22


; =============== S U B R O U T I N E =======================================


sub_1E46:                               ; CODE XREF: ROM:3A20↓P
                psha
                tpa
                psha
                lda     4, sp
                psha
                lda     4, sp
                psha
                lda     4, sp
                rts
; End of function sub_1E46


; =============== S U B R O U T I N E =======================================


sub_1E55:                               ; CODE XREF: ROM:349F↓P
                                        ; ROM:3A29↓P
                sta     4, sp
                pula
                sta     4, sp
                pula
                sta     4, sp
                pula
                tap
                pula
                rts
; End of function sub_1E55


; =============== S U B R O U T I N E =======================================


sub_1E64:                               ; CODE XREF: sub_1AF2+1243↓P
                lda     byte_16
                and     #$FC
                sta     byte_16
                lda     byte_5AF
                asla
                asla
                eor     byte_16
                and     #$C
                eor     byte_16
                sta     byte_16
                lda     byte_16
                and     #$9F
                ora     #$40 ; '@'
                sta     byte_16
                lda     byte_10
                ora     #$1F
                sta     byte_10
                bclr    4, byte_16
                bclr    7, byte_16
                bclr    6, byte_11
                bclr    5, byte_11
                bclr    4, byte_11
                bclr    5, byte_10
                bset    6, byte_10
                mov     #$66, byte_17 ; 'f'
                mov     #$64, byte_18 ; 'd'
                clr     byte_19
                rts
; End of function sub_1E64


; =============== S U B R O U T I N E =======================================


sub_1E9C:                               ; CODE XREF: sub_35F3↓P
                                        ; sub_42F4:loc_439B↓P
                lda     byte_108
                rts
; End of function sub_1E9C


; =============== S U B R O U T I N E =======================================


sub_1EA0:                               ; CODE XREF: sub_35F3+1D↓P
                                        ; sub_42F4+AD↓P
                sta     byte_108
                rts
; End of function sub_1EA0


; =============== S U B R O U T I N E =======================================


sub_1EA4:                               ; CODE XREF: sub_2DEF↓J
                psha
                cmp     #$18
                bcc     loc_1EAE

loc_1EA9:                               ; CODE XREF: ROM:loc_1EF0↓j
                ldx     byte_108
                dbnzx   loc_1EB1

loc_1EAE:                               ; CODE XREF: sub_1EA4+3↑j
                clra
                pulh
                rts
; ---------------------------------------------------------------------------

loc_1EB1:                               ; CODE XREF: sub_1EA4+8↑j
                sta     byte_100
                lda     #1
                sta     byte_108
                lda     byte_10
                tsx
                eor     , x
                and     #$1F
                eor     byte_10
                sta     byte_10
                lda     #1
                pulh
                rts
; End of function sub_1EA4


; =============== S U B R O U T I N E =======================================


sub_1EC7:                               ; CODE XREF: sub_2DF2↓J
                cmp     #$18
                bcs     loc_1ECF
                ldhx    #$FFFF
                rts
; ---------------------------------------------------------------------------

loc_1ECF:                               ; CODE XREF: sub_1EC7+2↑j
                asla
                clrh
                tax
                ldhx    $109, x
                rts
; End of function sub_1EC7

; ---------------------------------------------------------------------------

Vadc:
                pshh
                ais     #-2
                lda     byte_16
                and     #$C
                lsra
                lsra
                tsx
                clr     1, x
                clr     , x
                cmp     #2
                bhi     loc_1F16
                tax
                clra
                jsr     sub_1E22
                brclr   1, byte_27, loc_1EF0+2

loc_1EF0:                               ; CODE XREF: ROM:1EED↑j
                brset   5, byte_F, loc_1EA9
                bclr    1, byte_8C
                tax
                sthx    1, sp
                bra     loc_1F16
; ---------------------------------------------------------------------------
                fcb $B6
                fcb $12
                fcb $A4
                fcb  $F
                fcb $20
                fcb   4
                fcb $B6
                fcb $12
                fcb $A4
                fcb   3
                fcb $8C
                fcb $97
                fcb $9E
                fcb   1
                fcb $95
                fcb $E6
                fcb   1
                fcb $F7
                fcb $6F ; o
                fcb   1
                fcb $B6
                fcb $13
                fcb $E7
                fcb   1
                fcb $F6
                fcb $F7
; ---------------------------------------------------------------------------

loc_1F16:                               ; CODE XREF: ROM:1EE6↑j
                                        ; ROM:1EF9↑j
                ldx     byte_100
                aslx
                lda     2, sp
                clrh
                sta     $10A, x
                lda     1, sp
                sta     $109, x
                clra
                sta     byte_108
                jsr     sub_2DF6
                ais     #2
                pulh
                rti

; =============== S U B R O U T I N E =======================================


sub_1F32:                               ; CODE XREF: sub_238C+D↓P
                psha
                ais     #-4
                lda     #3
                tsx
                sta     3, x
                ldx     4, x
                cpx     #3
                bhi     loc_1F68
                clra
                jsr     sub_1E22
                brset   2, byte_22, loc_1F4A
                brclr   4, byte_1F, loc_1F5C

loc_1F4A:                               ; CODE XREF: sub_1F32+12↑j
                lda     #$C
                tsx
                sta     , x
                lsra
                bra     loc_1F6D
; ---------------------------------------------------------------------------
                fcb $A6
                fcb   6
                fcb $95
                fcb $F7
                fcb $A6
                fcb  $A
                fcb $E7
                fcb   1
                fcb $44 ; D
                fcb $20
                fcb $15
; ---------------------------------------------------------------------------

loc_1F5C:                               ; CODE XREF: sub_1F32+15↑j
                lda     #1
                tsx
                sta     , x
                lda     #7
                sta     1, x
                lda     #4
                bra     loc_1F71
; ---------------------------------------------------------------------------

loc_1F68:                               ; CODE XREF: sub_1F32+C↑j
                lda     #3
                tsx
                sta     , x
                inca

loc_1F6D:                               ; CODE XREF: sub_1F32+1D↑j
                sta     1, x
                lda     #3

loc_1F71:                               ; CODE XREF: sub_1F32+34↑j
                sta     2, x
                lda     3, x
                deca
                ldx     #$40 ; '@'
                mul
                psha
                tsx
                lda     1, x
                deca
                ora     , x
                ldx     3, x
                decx
                sta     1, sp
                txa
                nsa
                and     #$F0
                psha
                tsx
                lda     3, x
                deca
                ora     , x
                ldx     1, x
                stx     byte_1882
                sta     byte_1883
                ais     #7
                rts
; End of function sub_1F32


; =============== S U B R O U T I N E =======================================


sub_1F9A:                               ; CODE XREF: sub_238C+17↓P
                psha
                tsx
                tst     , x
                bne     loc_1FA6
                lda     byte_1881
                and     #$BF
                bra     loc_1FAB
; ---------------------------------------------------------------------------

loc_1FA6:                               ; CODE XREF: sub_1F9A+3↑j
                lda     byte_1881
                ora     #$40 ; '@'

loc_1FAB:                               ; CODE XREF: sub_1F9A+A↑j
                sta     byte_1881
                pulh
                rts
; End of function sub_1F9A


; =============== S U B R O U T I N E =======================================


sub_1FB0:                               ; CODE XREF: sub_238C+1B↓P
                psha
                tsx
                tst     , x
                beq     loc_1FBC
                lda     byte_1881
                ora     #8
                bra     loc_1FC1
; ---------------------------------------------------------------------------

loc_1FBC:                               ; CODE XREF: sub_1FB0+3↑j
                lda     byte_1881
                and     #$F7

loc_1FC1:                               ; CODE XREF: sub_1FB0+A↑j
                sta     byte_1881
                pulh
                rts
; End of function sub_1FB0


; =============== S U B R O U T I N E =======================================


sub_1FC6:                               ; CODE XREF: sub_238C+7↓P
                lda     byte_1880
                bit     #1
                bne     locret_1FDB
                ldhx    #$1880
                lda     , x
                ora     #1
                sta     , x

loc_1FD4:                               ; CODE XREF: sub_1FC6+13↓j
                lda     byte_1881
                bit     #1
                beq     loc_1FD4

locret_1FDB:                            ; CODE XREF: sub_1FC6+5↑j
                rts
; End of function sub_1FC6


; =============== S U B R O U T I N E =======================================


sub_1FDC:                               ; CODE XREF: sub_238C+28↓P
                lda     #$80
                sta     byte_1881
                lda     #4
                sta     byte_1880

loc_1FE6:                               ; CODE XREF: sub_1FDC+F↓j
                lda     byte_1881
                bit     #1
                bne     loc_1FE6

loc_1FED:                               ; CODE XREF: sub_1FDC+16↓j
                lda     byte_1880
                bit     #$10
                beq     loc_1FED
                rts
; End of function sub_1FDC


; =============== S U B R O U T I N E =======================================


sub_1FF5:                               ; CODE XREF: sub_238C+13↓P
                psha
                ais     #-$10
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                sthx    7, sp
                sthx    5, sp
                sthx    $B, sp
                sthx    9, sp
                sthx    $F, sp
                sthx    $D, sp
                cmp     #3
                bls     loc_2019
                jmp     loc_20C9
; ---------------------------------------------------------------------------

loc_2019:                               ; CODE XREF: sub_1FF5+1F↑j
                nsa
                and     #$F0
                sta     byte_188B
                tsx
                pshx
                pshh
                ldhx    word_5B8
                pshx
                pshh
                ldhx    word_5B6
                pshx
                pshh
                tsx
                lda     $16, x
                jsr     sub_2107
                ais     #6
                tsx
                aix     #8
                pshx
                pshh
                ldhx    word_5C0
                pshx
                pshh
                ldhx    word_5BE
                pshx
                pshh
                tsx
                lda     $16, x
                jsr     sub_2107
                ais     #6
                tsx
                lda     , x
                sta     byte_1890
                lda     1, x
                sta     byte_1891
                lda     2, x
                sta     byte_1892
                lda     3, x
                sta     byte_1893
                lda     8, x
                sta     byte_1898
                lda     9, x
                sta     byte_1899
                lda     $A, x
                sta     byte_189A
                lda     $B, x
                sta     byte_189B
                aix     #4
                pshx
                pshh
                ldhx    word_5BC
                pshx
                pshh
                ldhx    word_5BA
                pshx
                pshh
                tsx
                lda     $16, x
                jsr     sub_2107
                ais     #6
                tsx
                aix     #$C
                pshx
                pshh
                ldhx    word_5C4
                pshx
                pshh
                ldhx    word_5C2
                pshx
                pshh
                tsx
                lda     $16, x
                jsr     sub_2107
                ais     #6
                tsx
                lda     4, x
                sta     byte_1894
                lda     5, x
                sta     byte_1895
                lda     6, x
                sta     byte_1896
                lda     7, x
                sta     byte_1897
                lda     $C, x
                sta     byte_189C
                lda     $D, x
                sta     byte_189D
                lda     $E, x
                sta     byte_189E
                lda     $F, x
                sta     byte_189F

loc_20C9:                               ; CODE XREF: sub_1FF5+21↑J
                ais     #$11
                rts
; End of function sub_1FF5


; =============== S U B R O U T I N E =======================================


sub_20CC:                               ; CODE XREF: sub_238C+2E↓P
                                        ; sub_238C+34↓P
                pshx
                pshh
                ldhx    1, sp
                pshh
                pula
                jsr     sub_1E22
                brset   2, byte_2C, loc_20DC
                brclr   5, byte_11, loc_20FC

loc_20DC:                               ; CODE XREF: sub_20CC+A↑j
                ldhx    #$1887
                lda     , x
                ora     #7
                sta     , x
                bra     loc_2104
; ---------------------------------------------------------------------------
                fcb $C6
                fcb $18
                fcb $85
                fcb $AA
                fcb   1
                fcb $20
; ---------------------------------------------------------------------------

loc_20EB:                               ; CODE XREF: sub_2107+1C↓j
                bclr    2, byte_45
                bset    4, byte_85
                lda     , x
                ora     #$80
                sta     , x
                ldhx    #$1880
                lda     , x
                ora     #4
                sta     , x
                bra     loc_2104
; ---------------------------------------------------------------------------

loc_20FC:                               ; CODE XREF: sub_20CC+D↑j
                lda     byte_1885
                ora     #$40 ; '@'
                sta     byte_1885

loc_2104:                               ; CODE XREF: sub_20CC+17↑j
                                        ; sub_20CC+2E↑j
                ais     #2
                rts
; End of function sub_20CC


; =============== S U B R O U T I N E =======================================


sub_2107:                               ; CODE XREF: sub_1FF5+3A↑P
                                        ; sub_1FF5+51↑P ...
                ais     #-4
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                cmp     #2
                bls     loc_2118
                jmp     loc_2269
; ---------------------------------------------------------------------------

loc_2118:                               ; CODE XREF: sub_2107+C↑j
                tax
                clra
                jsr     sub_1DF3
                brset   0, word_2+1, loc_2142
                asr     , x
                brn     loc_214A
                brn     loc_20EB
                bhi     loc_2192
                lda     #5
                jsr     sub_2287
                psha
                clra
                psha
                pshx
                pshx
                tsx
                lda     #$18
                jsr     sub_1D6E
                aix     #4
                pshx
                pshh
                aix     #-8
                jsr     sub_1D46
                aix     #8

loc_2142:                               ; CODE XREF: sub_2107+16↑j
                jsr     sub_1DC0
                tsx
                aix     #$E
                lda     #$D

loc_214A:                               ; CODE XREF: sub_2107+1A↑j
                jsr     sub_1D58
                lda     4, sp
                and     #$E0
                psha
                lda     #$F
                jsr     sub_1D58
                tsx
                lda     3, x
                and     #7
                ora     4, x
                ora     #$18
                clrx
                psha
                pshx
                pshx
                pshx
                tsx
                lda     #$10
                jsr     sub_1D6E
                aix     #$15
                pshx
                pshh
                aix     #-$19
                jsr     sub_1D46
                aix     #$19
                jsr     sub_1DC0
                tsx
                aix     #$1F
                lda     #7
                jsr     sub_1D58
                tsx
                lda     3, x
                clrx
                psha
                pshx
                pshx
                pshx
                tsx
                lda     #8
                jsr     sub_1D6E
                aix     #$21 ; '!'

loc_2192:                               ; CODE XREF: sub_2107+1E↑j
                pshx
                pshh
                aix     #-$25
                jsr     sub_1D46
                aix     #$25 ; '%'
                jsr     sub_1DC0
                tsx
                lda     $2E, x
                asla
                ora     #1
                clrx
                psha
                pshx
                pshx
                pshx
                tsx
                pshh
                stx     $1C, x
                aix     #$29 ; ')'
                pshx
                pshh
                tsx
                lda     2, x
                psha
                ldx     $1F, x
                pulh
                jsr     sub_1D46
                tsx
                aix     #$2E ; '.'
                jsr     sub_1DC0
                ais     #$15
                jmp     loc_2267
; ---------------------------------------------------------------------------
                fcb $A6
                fcb   6
                fcb $CD
                fcb $22 ; "
                fcb $87
                fcb $87
                fcb $4F ; O
                fcb $87
                fcb $89
                fcb $89
                fcb $95
                fcb $A6
                fcb $18
                fcb $CD
                fcb $1D
                fcb $6E ; n
                fcb $AF
                fcb   4
                fcb $89
                fcb $8B
                fcb $AF
                fcb $F8
                fcb $CD
                fcb $1D
                fcb $46 ; F
                fcb $AF
                fcb   8
                fcb $CD
                fcb $1D
                fcb $C0
                fcb $95
                fcb $AF
                fcb  $E
                fcb $A6
                fcb  $E
                fcb $CD
                fcb $1D
                fcb $58 ; X
                fcb $95
                fcb $E6
                fcb   3
                fcb $A4
                fcb $E0
                fcb $87
                fcb $E6
                fcb $13
                fcb $A4
                fcb   7
                fcb $95
                fcb $FA
                fcb $AA
                fcb $18
                fcb $5F ; _
                fcb $87
                fcb $89
                fcb $89
                fcb $89
                fcb $95
                fcb $A6
                fcb $10
                fcb $CD
                fcb $1D
                fcb $6E ; n
                fcb $AF
                fcb $11
                fcb $89
                fcb $8B
                fcb $AF
                fcb $EB
                fcb $CD
                fcb $1D
                fcb $46 ; F
                fcb $AF
                fcb $15
                fcb $CD
                fcb $1D
                fcb $C0
                fcb $95
                fcb $AF
                fcb $1B
                fcb $A6
                fcb   6
                fcb $CD
                fcb $1D
                fcb $58 ; X
                fcb $95
                fcb $E6
                fcb   3
                fcb $5F ; _
                fcb $87
                fcb $89
                fcb $89
                fcb $89
                fcb $95
                fcb $A6
                fcb   8
                fcb $CD
                fcb $1D
                fcb $6E ; n
                fcb $AF
                fcb $1D
                fcb $89
                fcb $8B
                fcb $AF
                fcb $DF
                fcb $CD
                fcb $1D
                fcb $46 ; F
                fcb $AF
                fcb $21 ; !
                fcb $CD
                fcb $1D
                fcb $C0
                fcb $95
                fcb $E6
                fcb $2A ; *
                fcb $48 ; H
                fcb $48 ; H
                fcb $A4
                fcb $E0
                fcb $E7
                fcb $14
                fcb $E6
                fcb $2A ; *
                fcb $A4
                fcb   7
                fcb $EA
                fcb $14
                fcb $AA
                fcb $18
                fcb $5F ; _
                fcb $87
                fcb $89
                fcb $89
                fcb $89
                fcb $95
                fcb $8B
                fcb $EF
                fcb $18
                fcb $AF
                fcb $25 ; %
                fcb $89
                fcb $8B
                fcb $95
                fcb $E6
                fcb   2
                fcb $87
                fcb $EE
                fcb $1B
                fcb $8A
                fcb $CD
                fcb $1D
                fcb $46 ; F
                fcb $95
                fcb $AF
                fcb $2A ; *
                fcb $CD
                fcb $1D
                fcb $C0
                fcb $A7
                fcb $11
; ---------------------------------------------------------------------------

loc_2267:                               ; CODE XREF: sub_2107+BC↑J
                ais     #$15

loc_2269:                               ; CODE XREF: sub_2107+E↑J
                bra     loc_2277
; ---------------------------------------------------------------------------
                fcb $9E
                fcb $FE
                fcb   9
                fcb $9E
                fcb   3
                fcb $9E
                fcb $FE
                fcb   7
                fcb $9E
                fcb   1
; ---------------------------------------------------------------------------

loc_2277:                               ; CODE XREF: sub_2107:loc_2269↑j
                ldhx    $B, sp
                pshx
                pshh
                tsx
                aix     #2
                lda     #4
                jsr     sub_1D90
                ais     #4
                rts
; End of function sub_2107


; =============== S U B R O U T I N E =======================================


sub_2287:                               ; CODE XREF: sub_2107+22↑P
                psha
                ldhx    $A, sp
                txa
                pshh
                pulx
                jsr     sub_1CEC
                pulh
                clrx
                rts
; End of function sub_2287


; =============== S U B R O U T I N E =======================================


sub_2294:                               ; CODE XREF: Vcanrx+4↓P
                pshx
                pshh
                ais     #-$11
                clrx
                clrh
                sthx    4, sp
                sthx    2, sp
                sthx    8, sp
                sthx    6, sp
                sthx    $C, sp
                sthx    $A, sp
                sthx    $10, sp
                sthx    $E, sp
                ldhx    $12, sp
                beq     loc_22BD
                jsr     sub_2380
                tsta
                bne     loc_22C1

loc_22BD:                               ; CODE XREF: sub_2294+21↑j
                clra
                jmp     loc_237D
; ---------------------------------------------------------------------------

loc_22C1:                               ; CODE XREF: sub_2294+27↑j
                lda     byte_18A0
                clrx
                psha
                clrh
                sthx    3, sp
                pulx
                sthx    4, sp
                lda     byte_18A1
                clrx
                psha
                sthx    7, sp
                pulx
                sthx    8, sp
                ldx     byte_18A2
                pshx
                clrx
                sthx    $B, sp
                pulx
                sthx    $C, sp
                ldx     byte_18A3
                pshx
                clrx
                sthx    $F, sp
                pulx
                sthx    $10, sp
                tsx
                aix     #1
                lda     #$18
                jsr     sub_1D6E
                aix     #4
                lda     #$10
                jsr     sub_1D6E
                aix     #-9
                pshx
                pshh
                aix     #-4
                jsr     sub_1D46
                aix     #$11
                lsra
                jsr     sub_1D6E
                aix     #-$15
                pshx
                pshh
                aix     #-4
                jsr     sub_1D46
                aix     #$1D
                pshx
                pshh
                aix     #-$21
                jsr     sub_1D46
                ldhx    $2A, sp
                jsr     sub_1DC0
                lda     byte_18AC
                and     #$F
                ldhx    $26, sp
                sta     $C, x
                cmp     #8
                ais     #$14
                bls     loc_233C
                lda     #8
                sta     $C, x

loc_233C:                               ; CODE XREF: sub_2294+A2↑j
                ldhx    $12, sp
                lda     byte_18BD
                sta     $D, x
                tsx
                clr     , x
                bra     loc_2372
; ---------------------------------------------------------------------------

loc_2348:                               ; CODE XREF: sub_2294+E5↓j
                ldhx    #$18A4
                txa
                add     1, sp
                psha
                pshh
                pula
                adc     #0
                ldhx    $13, sp
                psha
                txa
                add     3, sp
                psha
                pshh
                pula
                adc     #0
                ldhx    2, sp
                ldx     , x
                psha
                stx     3, sp
                pulh
                pulx
                pula
                sta     4, x
                tsx
                inc     1, x
                pulh

loc_2372:                               ; CODE XREF: sub_2294+B2↑j
                ldhx    $12, sp
                lda     $C, x
                tsx
                cmp     , x
                bhi     loc_2348
                lda     #1

loc_237D:                               ; CODE XREF: sub_2294+2A↑J
                ais     #$13
                rts
; End of function sub_2294


; =============== S U B R O U T I N E =======================================


sub_2380:                               ; CODE XREF: sub_2294+23↑P
                lda     byte_1884
                bit     #1
                beq     loc_238A
                lda     #1
                rts
; ---------------------------------------------------------------------------

loc_238A:                               ; CODE XREF: sub_2380+5↑j
                clra
                rts
; End of function sub_2380


; =============== S U B R O U T I N E =======================================


sub_238C:                               ; CODE XREF: sub_1AF2+124B↓P
                ldhx    #$1881
                lda     , x
                ora     #$80
                sta     , x
                jsr     sub_1FC6
                lda     byte_5B4
                jsr     sub_1F32
                lda     byte_5B5
                jsr     sub_1FF5
                clra
                jsr     sub_1F9A
                clra
                jsr     sub_1FB0
                ldhx    #$279
                bsr     sub_23C8
                ldhx    #$139
                bsr     sub_23C8
                jsr     sub_1FDC
                ldx     #1
                clrh
                jsr     sub_20CC
                ldx     #3
                clrh
                jsr     sub_20CC
                clra
                sta     byte_3B9
                rts
; End of function sub_238C


; =============== S U B R O U T I N E =======================================


sub_23C8:                               ; CODE XREF: sub_238C+21↑p
                                        ; sub_238C+26↑p
                pshx
                pshh
                ldx     #$10
                lda     #$13
                jsr     sub_29F0
                ais     #2
                rts
; End of function sub_23C8


; =============== S U B R O U T I N E =======================================


sub_23D4:                               ; CODE XREF: Vcanrx+D↓P
                ais     #-2
                cphx    #0
                beq     loc_23FB
                tsta
                beq     loc_23E5
                cbeqa   #1, loc_23F1

loc_23E1:                               ; CODE XREF: sub_23D4+1B↓j
                                        ; sub_23D4+25↓j
                lda     #1
                bra     loc_23FC
; ---------------------------------------------------------------------------

loc_23E5:                               ; CODE XREF: sub_23D4+8↑j
                sthx    1, sp
                ldhx    #$279
                bsr     sub_23FF
                bne     loc_23FB
                bra     loc_23E1
; ---------------------------------------------------------------------------

loc_23F1:                               ; CODE XREF: sub_23D4+A↑j
                sthx    1, sp
                ldhx    #$139
                bsr     sub_23FF
                beq     loc_23E1

loc_23FB:                               ; CODE XREF: sub_23D4+5↑j
                                        ; sub_23D4+19↑j
                clra

loc_23FC:                               ; CODE XREF: sub_23D4+F↑j
                ais     #2
                rts
; End of function sub_23D4


; =============== S U B R O U T I N E =======================================


sub_23FF:                               ; CODE XREF: sub_23D4+17↑p
                                        ; sub_23D4+23↑p
                pshx
                pshh
                ldhx    5, sp
                jsr     sub_2A23
                ais     #2
                tsta
                rts
; End of function sub_23FF


; =============== S U B R O U T I N E =======================================


Vcanrx:
                pshh
                ais     #-$10
                tsx
                jsr     sub_2294
                tsta
                beq     loc_2427
                tsx
                lda     #1
                jsr     sub_23D4
                dbnza   loc_2427
                lda     byte_3B9
                cbeqa   #$FF, loc_2427
                ldhx    #$3B9
                inc     , x

loc_2427:                               ; CODE XREF: Vcanrx+8↑j
                                        ; Vcanrx+10↑j ...
                ldhx    #$1884
                lda     , x
                ora     #1
                sta     , x
                ais     #$10
                pulh
                rti
; End of function Vcanrx


; =============== S U B R O U T I N E =======================================


Vcanerr:
                pshh
                lda     byte_1884
                bit     #2
                beq     loc_2441
                ldhx    #$1884
                lda     , x
                ora     #2
                sta     , x

loc_2441:                               ; CODE XREF: Vcanerr+6↑j
                lda     byte_1884
                bit     #$3C ; '<'
                bne     loc_244A
                bsr     sub_249C

loc_244A:                               ; CODE XREF: Vcanerr+14↑j
                lda     byte_1884
                and     #$30 ; '0'
                cbeqa   #$10, loc_245B
                lda     byte_1884
                and     #$C
                cmp     #4
                bne     loc_245D

loc_245B:                               ; CODE XREF: Vcanerr+1D↑j
                bsr     sub_249C

loc_245D:                               ; CODE XREF: Vcanerr+27↑j
                lda     byte_1884
                and     #$30 ; '0'
                cbeqa   #$20, loc_246E ; ' '
                lda     byte_1884
                and     #$C
                cmp     #8
                bne     loc_2470

loc_246E:                               ; CODE XREF: Vcanerr+30↑j
                bsr     sub_249C

loc_2470:                               ; CODE XREF: Vcanerr+3A↑j
                lda     byte_1884
                and     #$30 ; '0'
                cbeqa   #$30, loc_2481 ; '0'
                lda     byte_1884
                and     #$C
                cmp     #$C
                bne     loc_248A

loc_2481:                               ; CODE XREF: Vcanerr+43↑j
                bsr     sub_249C
                ldhx    #$188D
                lda     , x
                ora     #1
                sta     , x

loc_248A:                               ; CODE XREF: Vcanerr+4D↑j
                lda     byte_1884
                bit     #$30 ; '0'
                beq     loc_2498
                lda     byte_1884
                bit     #$C
                bne     loc_249A

loc_2498:                               ; CODE XREF: Vcanerr+5D↑j
                bsr     sub_249C

loc_249A:                               ; CODE XREF: Vcanerr+64↑j
                pulh
                rti
; End of function Vcanerr


; =============== S U B R O U T I N E =======================================


sub_249C:                               ; CODE XREF: Vcanerr+16↑p
                                        ; Vcanerr:loc_245B↑p ...
                ldhx    #$1884
                lda     , x
                ora     #$40 ; '@'
                sta     , x
                rts
; End of function sub_249C


; =============== S U B R O U T I N E =======================================


sub_24A4:                               ; CODE XREF: rst:loc_1B02↑P
                                        ; sub_42F4+D↓P
                ldhx    word_3BA
                cphx    #0
                bne     loc_24AD
                sei

loc_24AD:                               ; CODE XREF: sub_24A4+6↑j
                ldhx    #$3BA
                inc     1, x
                bne     locret_24B5
                inc     , x

locret_24B5:                            ; CODE XREF: sub_24A4+E↑j
                rts
; End of function sub_24A4


; =============== S U B R O U T I N E =======================================


sub_24B6:                               ; CODE XREF: rst+19E↑P
                                        ; sub_42F4:loc_43A4↓P
                ais     #-2
                tsx
                clr     1, x
                clr     , x
                ldhx    word_3BA
                sthx    1, sp
                cphx    #0
                bne     loc_24CA
                cli
                bra     loc_24E4
; ---------------------------------------------------------------------------

loc_24CA:                               ; CODE XREF: sub_24B6+F↑j
                ldhx    1, sp
                cphx    #1
                bne     loc_24DA
                clrx
                clrh
                sthx    word_3BA
                cli
                bra     loc_24E4
; ---------------------------------------------------------------------------

loc_24DA:                               ; CODE XREF: sub_24B6+1A↑j
                ldhx    #$3BA
                tst     1, x
                bne     loc_24E2
                dec     , x

loc_24E2:                               ; CODE XREF: sub_24B6+29↑j
                dec     1, x

loc_24E4:                               ; CODE XREF: sub_24B6+12↑j
                                        ; sub_24B6+22↑j
                ais     #2
                rts
; End of function sub_24B6


; =============== S U B R O U T I N E =======================================


sub_24E7:                               ; CODE XREF: sub_1AF2+125B↓P
                lda     #$3B ; ';'
                sta     byte_1820

loc_24EC:                               ; CODE XREF: sub_24E7+8↓j
                lda     byte_1820
                bpl     loc_24EC
                rts
; End of function sub_24E7


; =============== S U B R O U T I N E =======================================


sub_24F2:                               ; CODE XREF: sub_3880+2F↓P
                                        ; sub_3880+68↓P ...
                pshx
                pshh
                pshh
                ldhx    6, sp
                cphx    #$3FD
                bcs     loc_2500
                clra
                bra     loc_2518
; ---------------------------------------------------------------------------

loc_2500:                               ; CODE XREF: sub_24F2+9↑j
                pshh
                pula
                add     #$14
                stx     1, sp

loc_2507:                               ; DATA XREF: ROM:loc_2C42↓r
                ldhx    2, sp
                pshx
                pshh
                psha

loc_250D:                               ; DATA XREF: sub_2F4F:loc_2F80↓r
                tsx
                ldx     3, x
                pulh
                lda     #4
                jsr     sub_1D90
                lda     #1

loc_2518:                               ; CODE XREF: sub_24F2+C↑j
                ais     #3
                rts
; End of function sub_24F2

; ---------------------------------------------------------------------------

loc_251B:                               ; CODE XREF: sub_3880+5B↓P
                                        ; sub_3880+95↓P ...
                ais     #-$16
                ldhx    $1D, sp
                cphx    #$3FD
                bcs     loc_2529
                clra
                jmp     loc_25E9
; ---------------------------------------------------------------------------

loc_2529:                               ; CODE XREF: ROM:2523↑j
                pshx
                pshh
                pula
                add     #$14
                jsr     sub_25EC
                sthx    3, sp
                tsx
                lda     $1D, x
                pulx

loc_2538:                               ; CODE XREF: ROM:loc_2590↓j
                jsr     sub_25EC
                sthx    4, sp
                tsx
                lda     $1D, x
                and     #7
                sta     , x
                clr     5, x

loc_2546:                               ; CODE XREF: ROM:2570↓j
                tsx
                lda     5, x
                add     2, x
                psha
                clra
                adc     1, x
                aix     #6
                psha
                txa
                add     8, sp
                psha
                pshh
                pula
                adc     #0
                psha
                tsx
                lda     2, x
                psha
                ldx     3, x
                pulh
                lda     , x
                pulh
                pulx
                sta     , x
                tsx
                inc     7, x
                lda     7, x
                cmp     #$10
                ais     #2
                bcs     loc_2546
                aix     #8
                txa
                add     1, sp
                psha
                pshh
                pula
                adc     #0
                psha
                tsx
                lda     , x
                psha
                lda     $1A, x
                ldx     1, x
                pulh
                sta     , x
                tsx
                aix     #$1A
                jsr     sub_1D40
                brset   0, byte_FF, *+3

loc_2590:                               ; CODE XREF: ROM:258D↑j
                brset   0, byte_95, loc_2538+1
                bset    0, byte_CD
                bclr    6, byte_58
                ldhx    9, sp
                lda     4, sp
                sta     1, x
                lda     $25, sp
                sta     2, x
                lda     $26, sp
                sta     3, x
                tsx
                lda     $A, x
                cmp     #4
                ais     #$A
                bls     loc_25C8
                ldhx    $1D, sp
                pshx
                pshh
                ldx     #2
                clrh
                jsr     sub_25FB
                ais     #2
                ldhx    4, sp
                pshx
                pshh
                ldx     #$10
                bra     loc_25DC
; ---------------------------------------------------------------------------

loc_25C8:                               ; CODE XREF: ROM:25B0↑j
                ldhx    $1D, sp
                pshx
                pshh
                ldx     #1
                clrh
                jsr     sub_25FB
                ais     #2
                ldhx    4, sp
                pshx
                pshh
                ldx     #8

loc_25DC:                               ; CODE XREF: ROM:25C6↑j
                clrh
                pshx
                pshh
                tsx
                aix     #$A
                jsr     sub_26D8
                ais     #4
                lda     #1

loc_25E9:                               ; CODE XREF: ROM:2526↑J
                ais     #$16
                rts

; =============== S U B R O U T I N E =======================================


sub_25EC:                               ; CODE XREF: ROM:252E↑P
                                        ; ROM:loc_2538↑P
                lsra
                rorx
                lsra
                rorx
                lsra
                rorx
                aslx
                rola
                aslx
                rola
                aslx
                rola
                psha
                pulh
                rts
; End of function sub_25EC


; =============== S U B R O U T I N E =======================================


sub_25FB:                               ; CODE XREF: ROM:25BA↑P
                                        ; ROM:25D0↑P
                pshx
                pshh
                ais     #-6
                cphx    #0
                bne     loc_2607
                jmp     loc_26A6
; ---------------------------------------------------------------------------

loc_2607:                               ; CODE XREF: sub_25FB+7↑j
                pshx
                pshh
                ldhx    $D, sp
                pshh
                pula
                jsr     sub_26CB
                psha
                lda     2, sp
                psha
                pulh
                pshx
                ldx     4, sp
                aix     #-1
                pshh
                pula
                aslx
                rola
                aslx
                rola
                aslx
                rola
                sta     3, sp
                txa
                tsx
                add     , x
                sta     , x
                lda     2, x
                adc     1, x
                psha
                pulh
                pulx
                cphx    #$400
                ais     #3
                bcc     loc_26A6
                tsx
                ldx     $B, x
                lda     $B, sp
                add     #$14
                psha
                pulh
                sthx    3, sp
                jsr     sub_26CB
                psha
                pulh
                sthx    5, sp
                bra     loc_26C1
; ---------------------------------------------------------------------------

loc_2651:                               ; CODE XREF: sub_25FB+C9↓j
                ldhx    5, sp
                sthx    1, sp
                ldhx    2, x
                cphx    #$FFFF
                bne     loc_2683
                ldhx    5, sp
                ldhx    , x
                cphx    #$FFFF
                bne     loc_2683
                ldhx    1, sp
                aix     #4
                sthx    1, sp
                ldhx    2, x
                cphx    #$FFFF
                bne     loc_2683
                ldhx    1, sp
                ldhx    , x
                cphx    #$FFFF
                beq     loc_26B0

loc_2683:                               ; CODE XREF: sub_25FB+62↑j
                                        ; sub_25FB+6C↑j ...
                lda     byte_1825
                bit     #$10
                beq     loc_2691
                ldhx    #$1825
                lda     , x
                ora     #$10
                sta     , x

loc_2691:                               ; CODE XREF: sub_25FB+8D↑j
                ldhx    3, sp
                clr     , x
                lda     #$40 ; '@'
                sta     byte_1826
                ldhx    #$1825
                lda     , x
                ora     #$80
                sta     , x
                lda     , x
                bit     #$30 ; '0'
                beq     loc_26A9

loc_26A6:                               ; CODE XREF: sub_25FB+9↑J
                                        ; sub_25FB+3D↑j
                clra
                bra     loc_26C8
; ---------------------------------------------------------------------------

loc_26A9:                               ; CODE XREF: sub_25FB+A9↑j
                                        ; sub_25FB+B3↓j
                lda     byte_1825
                bit     #$40 ; '@'
                beq     loc_26A9

loc_26B0:                               ; CODE XREF: sub_25FB+86↑j
                tsx
                tst     7, x
                bne     loc_26B7
                dec     6, x

loc_26B7:                               ; CODE XREF: sub_25FB+B8↑j
                dec     7, x
                ldhx    3, sp
                aix     #8
                sthx    3, sp

loc_26C1:                               ; CODE XREF: sub_25FB+54↑j
                ldhx    7, sp
                bne     loc_2651
                lda     #1

loc_26C8:                               ; CODE XREF: sub_25FB+AC↑j
                ais     #8
                rts
; End of function sub_25FB


; =============== S U B R O U T I N E =======================================


sub_26CB:                               ; CODE XREF: sub_25FB+13↑P
                                        ; sub_25FB+4C↑P
                lsra
                rorx
                lsra
                rorx
                lsra
                rorx
                aslx
                rola
                aslx
                rola
                aslx
                rola
                rts
; End of function sub_26CB


; =============== S U B R O U T I N E =======================================


sub_26D8:                               ; CODE XREF: ROM:25E2↑P
                ais     #-4
                sthx    3, sp
                ldhx    7, sp
                beq     loc_2746
                txa
                tsx
                add     9, x
                psha
                lda     8, x
                adc     6, x
                psha
                pulh
                pulx
                aix     #-1
                cphx    #$400
                bhi     loc_2746
                tsx
                lda     9, x
                psha
                lda     8, x
                add     #$14
                psha
                pulh
                pulx
                sthx    1, sp
                bra     loc_275D
; ---------------------------------------------------------------------------

loc_2705:                               ; CODE XREF: sub_26D8+88↓j
                lda     byte_1825
                bit     #$10
                beq     loc_2713
                ldhx    #$1825
                lda     , x
                ora     #$10
                sta     , x

loc_2713:                               ; CODE XREF: sub_26D8+32↑j
                ldhx    1, sp
                lda     , x
                cmp     #$FF
                bne     loc_2746
                ldhx    3, sp
                lda     , x
                ldhx    1, sp
                sta     , x
                lda     #$20 ; ' '
                sta     byte_1826
                ldhx    #$1825
                lda     , x
                ora     #$80
                sta     , x

loc_272F:                               ; CODE XREF: sub_26D8+5A↓j
                lda     byte_1825
                bpl     loc_272F
                lda     byte_1825
                bit     #$30 ; '0'
                bne     loc_2746
                nop
                nop
                nop
                nop
                lda     byte_1825
                bit     #$40 ; '@'
                bne     loc_2749

loc_2746:                               ; CODE XREF: sub_26D8+8↑j
                                        ; sub_26D8+1B↑j ...
                clra
                bra     loc_2764
; ---------------------------------------------------------------------------

loc_2749:                               ; CODE XREF: sub_26D8+6C↑j
                tsx
                tst     7, x
                bne     loc_2750
                dec     6, x

loc_2750:                               ; CODE XREF: sub_26D8+74↑j
                dec     7, x
                inc     1, x
                bne     loc_2757
                inc     , x

loc_2757:                               ; CODE XREF: sub_26D8+7C↑j
                inc     3, x
                bne     loc_275D
                inc     2, x

loc_275D:                               ; CODE XREF: sub_26D8+2B↑j
                                        ; sub_26D8+81↑j
                ldhx    7, sp
                bne     loc_2705
                lda     #1

loc_2764:                               ; CODE XREF: sub_26D8+6F↑j
                ais     #4
                rts
; End of function sub_26D8


; =============== S U B R O U T I N E =======================================


sub_2767:                               ; CODE XREF: sub_1AF2+1263↓P
                lda     byte_1825
                bit     #$10
                bne     locret_2778
                lda     #$3B ; ';'
                sta     byte_1820

loc_2773:                               ; CODE XREF: sub_2767+F↓j
                lda     byte_1820
                bpl     loc_2773

locret_2778:                            ; CODE XREF: sub_2767+5↑j
                rts
; End of function sub_2767


; =============== S U B R O U T I N E =======================================


sub_2779:                               ; CODE XREF: sub_1AF2+126B↓P
                mov     #$89, byte_59
                bset    4, byte_5B
                bset    1, byte_5B
                bset    6, byte_5A
                bset    7, byte_5A
                bset    3, byte_5A
                bclr    5, byte_5A
                bclr    6, byte_5D
                bset    4, byte_5A
                rts
; End of function sub_2779


; =============== S U B R O U T I N E =======================================


Viic:
                pshh
                bset    1, byte_5B
                brclr   5, byte_5A, loc_27F5
                brclr   4, byte_5A, loc_27CA
                lda     byte_3BE
                beq     loc_27B7
                brset   0, byte_5B, loc_27C5
                ldhx    word_3BC
                lda     , x
                sta     byte_5C
                ldhx    #$3BE
                dec     , x
                lda     byte_3BE
                beq     loc_27C5
                ldhx    #$3BC
                inc     1, x
                bne     loc_27C5
                inc     , x
                bra     loc_27C5
; ---------------------------------------------------------------------------

loc_27B7:                               ; CODE XREF: Viic+C↑j
                lda     byte_3C2
                bit     #1
                beq     loc_27C3
                bclr    4, byte_5A
                lda     byte_5C
                skip2

loc_27C3:                               ; CODE XREF: Viic+2F↑j
                bclr    5, byte_5A

loc_27C5:                               ; CODE XREF: Viic+E↑j
                                        ; Viic+1E↑j ...
                jsr     nullsub_9
                pulh
                rti
; ---------------------------------------------------------------------------

loc_27CA:                               ; CODE XREF: Viic+6↑j
                ldhx    #$3C1
                dec     , x
                lda     byte_3C1
                beq     loc_27DB
                cmp     #1
                bne     loc_27DF
                bset    3, byte_5A
                bra     loc_27DF
; ---------------------------------------------------------------------------

loc_27DB:                               ; CODE XREF: Viic+44↑j
                bclr    5, byte_5A
                bclr    3, byte_5A

loc_27DF:                               ; CODE XREF: Viic+48↑j
                                        ; Viic+4C↑j
                lda     byte_5C
                ldhx    word_3BF
                sta     , x
                lda     byte_3C1
                beq     loc_27F2
                ldhx    #$3BF
                inc     1, x
                bne     loc_27F2
                inc     , x

loc_27F2:                               ; CODE XREF: Viic+5B↑j
                                        ; Viic+62↑j
                jsr     nullsub_10

loc_27F5:                               ; CODE XREF: Viic+3↑j
                pulh
                rti
; End of function Viic


; =============== S U B R O U T I N E =======================================


sub_27F7:                               ; CODE XREF: sub_1AF2:loc_2D2A↓P
                lda     byte_49
                and     #$3F ; '?'
                sta     byte_49
                bset    5, byte_49
                bset    4, byte_49
                bset    2, byte_49
                bset    1, byte_49

loc_2805:                               ; CODE XREF: sub_27F7:loc_2805↓j
                brclr   1, byte_4B, loc_2805
                bsr     sub_286B
                ora     #$38 ; '8'
                sta     byte_48
                bclr    2, byte_48
                bset    1, byte_48

loc_2812:                               ; CODE XREF: sub_27F7:loc_2812↓j
                brset   4, byte_4B, loc_2812

loc_2815:                               ; CODE XREF: sub_27F7+24↓j
                lda     byte_4B
                and     #$C
                cmp     #8
                bne     loc_2815
                lda     byte_5D0
                bne     loc_282A
                bsr     sub_286B
                and     #$C7
                ora     #$10
                bra     loc_284A
; ---------------------------------------------------------------------------

loc_282A:                               ; CODE XREF: sub_27F7+29↑j
                cmp     #1
                bne     loc_2840
                bsr     sub_286B
                and     #$C7
                ora     #$10
                sta     byte_48
                bset    6, byte_4C
                lda     byte_4C
                and     #$F0
                ora     #4
                bra     loc_2854
; ---------------------------------------------------------------------------

loc_2840:                               ; CODE XREF: sub_27F7+35↑j
                cmp     #2
                bne     loc_2856
                bsr     sub_286B
                and     #$C7
                ora     #$18

loc_284A:                               ; CODE XREF: sub_27F7+31↑j
                sta     byte_48
                bset    6, byte_4C
                lda     byte_4C
                and     #$F0
                ora     #6

loc_2854:                               ; CODE XREF: sub_27F7+47↑j
                sta     byte_4C

loc_2856:                               ; CODE XREF: sub_27F7+4B↑j
                                        ; sub_27F7:loc_2856↓j
                brclr   5, byte_4B, loc_2856

loc_2859:                               ; CODE XREF: sub_27F7:loc_2859↓j
                brclr   6, byte_4B, loc_2859
                lda     byte_48
                and     #$3F ; '?'
                sta     byte_48

loc_2862:                               ; CODE XREF: sub_27F7+71↓j
                lda     byte_4B
                and     #$C
                cmp     #$C
                bne     loc_2862
                rts
; End of function sub_27F7


; =============== S U B R O U T I N E =======================================


sub_286B:                               ; CODE XREF: sub_27F7+11↑p
                                        ; sub_27F7+2B↑p ...
                lda     byte_48
                and     #$3F ; '?'
                ora     #$80
                sta     byte_48
                lda     byte_48
                rts
; End of function sub_286B


; =============== S U B R O U T I N E =======================================


sub_2876:                               ; CODE XREF: sub_28BD+2B↓p
                lda     byte_5C7
                dbnza   loc_2880
                ldhx    #$1770
                bra     loc_2883
; ---------------------------------------------------------------------------

loc_2880:                               ; CODE XREF: sub_2876+3↑j
                ldhx    #$4650

loc_2883:                               ; CODE XREF: sub_2876+8↑j
                sthx    word_3C3
                sthx    word_3C5
                lda     word_3C5
                sta     byte_3C7
                lda     word_3C5+1
                sta     byte_3C8
                sthx    word_3CF
                lda     byte_5C9
                dbnza   loc_28A2
                ldhx    #$1770
                bra     loc_28A5
; ---------------------------------------------------------------------------

loc_28A2:                               ; CODE XREF: sub_2876+25↑j
                ldhx    #$4650

loc_28A5:                               ; CODE XREF: sub_2876+2A↑j
                sthx    word_3C9
                ldhx    #$4650
                sthx    word_3CB
                pshh
                pula
                sta     byte_3CD
                stx     byte_3CE
                ldhx    word_3C9
                sthx    word_3D1
                rts
; End of function sub_2876


; =============== S U B R O U T I N E =======================================


sub_28BD:                               ; CODE XREF: sub_2D9F+3A↓P
                pshx
                psha
                tst     7, sp
                bne     loc_28CB
                lda     6, sp
                cmp     #5
                bhi     loc_2932

loc_28CB:                               ; CODE XREF: sub_28BD+5↑j
                lda     7, sp
                dbnza   loc_28D7
                lda     6, sp
                cmp     #1
                bhi     loc_2932

loc_28D7:                               ; CODE XREF: sub_28BD+11↑j
                lda     5, sp
                cmp     #1
                bhi     loc_2932
                cpx     #1
                bhi     loc_2932
                tsx
                lda     , x
                cmp     #3
                bhi     loc_2932
                bsr     sub_2876
                tsx
                tst     6, x
                bne     loc_293B
                bclr    5, byte_20
                lda     byte_20
                and     #$E7
                ora     #8
                sta     byte_20
                lda     byte_20
                and     #$F8
                sta     byte_20
                bclr    6, byte_20
                lda     5, x
                ldx     #3
                mul
                add     #$25 ; '%'
                psha
                tsx
                lda     2, x
                nsa
                and     #$F0
                psha
                bsr     sub_2986
                sta     , x
                txa
                add     #1
                sta     1, sp
                lda     byte_3C7
                pulx
                sta     , x
                pula
                add     #2
                tax
                lda     byte_3C8
                sta     , x
                lda     byte_5C7
                bne     loc_2934
                ldhx    word_3C3
                aix     #-1
                sthx    word_23

loc_2932:                               ; CODE XREF: sub_28BD+C↑j
                                        ; sub_28BD+18↑j ...
                bra     loc_2983
; ---------------------------------------------------------------------------

loc_2934:                               ; CODE XREF: sub_28BD+6C↑j
                ldhx    word_3C3
                sthx    word_23
                bra     loc_2983
; ---------------------------------------------------------------------------

loc_293B:                               ; CODE XREF: sub_28BD+30↑j
                bclr    5, byte_60
                lda     byte_60
                and     #$E7
                ora     #8
                sta     byte_60
                lda     byte_60
                and     #$F8
                sta     byte_60
                bset    6, byte_60
                lda     5, x
                ldx     #3
                mul
                add     #$65 ; 'e'
                psha
                tsx
                lda     2, x
                nsa
                and     #$F0
                psha
                bsr     sub_2986
                sta     , x
                txa
                add     #1
                sta     1, sp
                lda     byte_3CD
                pulx
                sta     , x
                pula
                add     #2
                tax
                lda     byte_3CE
                sta     , x
                lda     byte_5C9
                bne     loc_297E
                ldhx    word_3C9
                aix     #-1
                bra     loc_2981
; ---------------------------------------------------------------------------

loc_297E:                               ; CODE XREF: sub_28BD+B8↑j
                ldhx    word_3C9

loc_2981:                               ; CODE XREF: sub_28BD+BF↑j
                sthx    word_63

loc_2983:                               ; CODE XREF: sub_28BD:loc_2932↑j
                                        ; sub_28BD+7C↑j
                ais     #2
                rts
; End of function sub_28BD


; =============== S U B R O U T I N E =======================================


sub_2986:                               ; CODE XREF: sub_28BD+53↑p
                                        ; sub_28BD+9F↑p
                tsx
                lda     8, x
                nsa
                and     #$F0
                asla
                ora     2, x
                ldx     4, x
                aslx
                aslx
                sta     3, sp
                txa
                tsx
                ora     2, x
                ldx     3, x
                clrh
                rts
; End of function sub_2986


; =============== S U B R O U T I N E =======================================


sub_299E:                               ; CODE XREF: sub_2DE1+8↓P
                psha
                pshx
                pshh
                tsx
                tst     5, x
                bne     loc_29AA
                cmp     #5
                bhi     loc_29D9

loc_29AA:                               ; CODE XREF: sub_299E+6↑j
                lda     5, x
                dbnza   loc_29B4
                lda     2, x
                cmp     #1
                bhi     loc_29D9

loc_29B4:                               ; CODE XREF: sub_299E+E↑j
                tst     5, x
                bne     loc_29C1
                lda     2, x
                ldx     #3
                mul
                add     #$25 ; '%'
                bra     loc_29C8
; ---------------------------------------------------------------------------

loc_29C1:                               ; CODE XREF: sub_299E+18↑j
                lda     2, x
                ldx     #3
                mul
                add     #$65 ; 'e'

loc_29C8:                               ; CODE XREF: sub_299E+21↑j
                psha
                add     #1
                clrh
                tax
                lda     2, sp
                sta     , x
                pula
                add     #2
                tax
                lda     2, sp
                sta     , x

loc_29D9:                               ; CODE XREF: sub_299E+A↑j
                                        ; sub_299E+14↑j
                ais     #3
                rts
; End of function sub_299E


; =============== S U B R O U T I N E =======================================


Vtpm1ch2:
                pshh
                lda     byte_2B
                bclr    7, byte_2B
                jsr     nullsub_2
                pulh
                rti
; End of function Vtpm1ch2


; =============== S U B R O U T I N E =======================================


Vtpm2ch1:
                pshh
                lda     byte_68
                bclr    7, byte_68
                jsr     nullsub_3
                pulh
                rti
; End of function Vtpm2ch1


; =============== S U B R O U T I N E =======================================


sub_29F0:                               ; CODE XREF: sub_23C8+6↑P
                pshx
                psha
                ldhx    5, sp
                cphx    #0
                bne     loc_29FE
                lda     #1
                bra     loc_2A20
; ---------------------------------------------------------------------------

loc_29FE:                               ; CODE XREF: sub_29F0+8↑j
                tst     2, sp
                bne     loc_2A07
                lda     #2
                bra     loc_2A20
; ---------------------------------------------------------------------------

loc_2A07:                               ; CODE XREF: sub_29F0+11↑j
                tst     1, sp
                bne     loc_2A10
                lda     #3
                bra     loc_2A20
; ---------------------------------------------------------------------------

loc_2A10:                               ; CODE XREF: sub_29F0+1A↑j
                lda     2, sp
                sta     , x
                lda     1, sp
                sta     1, x
                clr     2, x
                clr     3, x
                clr     4, x
                clra

loc_2A20:                               ; CODE XREF: sub_29F0+C↑j
                                        ; sub_29F0+15↑j ...
                ais     #2
                rts
; End of function sub_29F0


; =============== S U B R O U T I N E =======================================


sub_2A23:                               ; CODE XREF: sub_23FF+5↑P
                pshx
                pshh
                ais     #-2
                ldhx    7, sp
                beq     loc_2A31
                ldhx    3, sp
                bne     loc_2A35

loc_2A31:                               ; CODE XREF: sub_2A23+7↑j
                lda     #2
                bra     loc_2AAA
; ---------------------------------------------------------------------------

loc_2A35:                               ; CODE XREF: sub_2A23+C↑j
                ldhx    7, sp
                lda     1, x
                cmp     2, x
                bhi     loc_2A44
                sta     2, x
                lda     #1
                bra     loc_2AAA
; ---------------------------------------------------------------------------

loc_2A44:                               ; CODE XREF: sub_2A23+19↑j
                inc     2, x
                tsx
                clr     1, x
                clr     , x
                bra     loc_2A92
; ---------------------------------------------------------------------------

loc_2A4C:                               ; CODE XREF: sub_2A23+77↓j
                ldhx    7, sp
                lda     4, x
                psha
                lda     , x
                pshx
                ldx     2, sp
                mul
                stx     2, sp
                pulx
                aix     #$10
                psha
                txa
                pshh
                tsx
                add     1, x
                sta     1, x
                pula
                adc     2, x
                sta     2, x
                pula
                add     4, x
                psha
                lda     2, x
                adc     3, x
                sta     2, x
                lda     6, x
                add     4, x
                psha
                lda     3, x
                adc     5, x
                psha
                pulh
                pulx
                ldx     , x
                lda     2, sp
                psha
                pulh
                txa
                pulx
                sta     , x
                tsx
                inc     2, x
                bne     loc_2A91
                inc     1, x

loc_2A91:                               ; CODE XREF: sub_2A23+6A↑j
                pulh

loc_2A92:                               ; CODE XREF: sub_2A23+27↑j
                ldhx    7, sp
                ldx     , x
                clrh
                cphx    1, sp
                bhi     loc_2A4C
                ldhx    7, sp
                inc     4, x
                lda     1, x
                cmp     4, x
                bhi     loc_2AA9
                clr     4, x

loc_2AA9:                               ; CODE XREF: sub_2A23+82↑j
                clra

loc_2AAA:                               ; CODE XREF: sub_2A23+10↑j
                                        ; sub_2A23+1F↑j
                ais     #4
                rts
; End of function sub_2A23


; =============== S U B R O U T I N E =======================================


sub_2AAD:                               ; CODE XREF: sub_1AF2+1273↓P
                bset    7, byte_6C
                lda     byte_6C
                and     #$9F
                ora     #$40 ; '@'
                sta     byte_6C
                lda     byte_6C
                and     #$F0
                ora     #8
                sta     byte_6C
                lda     byte_5D3
                sta     byte_6E
                bclr    4, byte_6C
                rts
; End of function sub_2AAD


; =============== S U B R O U T I N E =======================================


Vrtc:
                pshh
                bset    7, byte_6C
                jsr     nullsub_11
                pulh
                rti
; End of function Vrtc


; =============== S U B R O U T I N E =======================================


sub_2ACF:                               ; CODE XREF: sub_1AF2+1288↓P
                                        ; sub_1AF2+12A1↓P
                ais     #-2
                ldhx    9, sp
                cphx    #2
                bgt     loc_2B18
                pshx
                aslx
                pshh
                clrh
                ldhx    $101, x
                pshh
                stx     4, sp
                tsx
                ldx     2, x
                pula
                sta     4, sp
                lda     7, sp
                pulh
                jsr     sub_2B58
                tsx
                lda     8, x
                nsa
                and     #$F0
                ldx     2, x
                pshx
                tsx
                ldx     2, x
                pulh
                sta     2, x
                lda     7, sp
                asla
                ora     8, sp
                ora     2, x
                sta     2, x
                lda     #$C
                sta     3, x
                ldhx    $A, sp
                jsr     sub_2B9D
                pulh

loc_2B18:                               ; CODE XREF: sub_2ACF+8↑j
                ais     #2
                rts
; End of function sub_2ACF


; =============== S U B R O U T I N E =======================================


sub_2B1B:                               ; CODE XREF: Vsci1rx+5↓p
                                        ; Vsci2rx+6↓p
                pshx
                pshh
                aslx
                clrh
                ldhx    $101, x
                lda     7, x
                tsx
                ldx     1, x
                clrh
                sta     $3D3, x
                ais     #2
                rts
; End of function sub_2B1B


; =============== S U B R O U T I N E =======================================


Vsci1rx:
                pshh
                lda     byte_3C
                clrx
                clrh
                bsr     sub_2B1B
                jsr     nullsub_5
                pulh
                rti
; End of function Vsci1rx


; =============== S U B R O U T I N E =======================================


Vsci1tx:
                pshh
                lda     byte_3C
                jsr     nullsub_6
                pulh
                rti
; End of function Vsci1tx


; =============== S U B R O U T I N E =======================================


Vsci2rx:
                pshh
                lda     byte_44
                ldx     #1
                clrh
                bsr     sub_2B1B
                jsr     nullsub_7
                pulh
                rti
; End of function Vsci2rx


; =============== S U B R O U T I N E =======================================


Vsci2tx:
                pshh
                lda     byte_44
                jsr     nullsub_8
                pulh
                rti
; End of function Vsci2tx


; =============== S U B R O U T I N E =======================================


sub_2B58:                               ; CODE XREF: sub_2ACF+21↑P
                ais     #-4
                clr     2, sp
                clr     1, sp
                cphx    #2
                bgt     loc_2B9A
                aslx
                clrh
                ldhx    $101, x
                sthx    3, sp
                cmp     #3
                bhi     loc_2B88
                tax
                clra
                jsr     sub_1E22
                brset   2, byte_F, loc_2B7D
                brclr   6, byte_5, loc_2B85

loc_2B7D:                               ; CODE XREF: sub_2B58+1F↑j
                ldx     #$9C
                bra     loc_2B8A
; ---------------------------------------------------------------------------
                fcb $AE
                fcb $27 ; '
                fcb $20
                fcb   5
; ---------------------------------------------------------------------------

loc_2B85:                               ; CODE XREF: sub_2B58+22↑j
                ldx     #$13
                skip2

loc_2B88:                               ; CODE XREF: sub_2B58+18↑j
                ldx     #$4E ; 'N'

loc_2B8A:                               ; CODE XREF: sub_2B58+27↑j
                clrh
                sthx    1, sp
                ldhx    3, sp
                lda     1, sp
                sta     , x
                lda     2, sp
                sta     1, x

loc_2B9A:                               ; CODE XREF: sub_2B58+B↑j
                ais     #4
                rts
; End of function sub_2B58


; =============== S U B R O U T I N E =======================================


sub_2B9D:                               ; CODE XREF: sub_2ACF+45↑P
                aslx
                clrh
                ldhx    $101, x
                lda     3, x
                ora     #$20 ; ' '
                sta     3, x
                rts
; End of function sub_2B9D


; =============== S U B R O U T I N E =======================================


sub_2BAA:                               ; CODE XREF: sub_1AF2+1253↓P
                lda     byte_55
                lda     byte_53
                ldhx    #$5CA
                lda     4, x
                nsa
                and     #$F0
                eor     byte_52
                and     #$70 ; 'p'
                eor     byte_52
                sta     byte_52
                lda     5, x
                eor     byte_52
                and     #7
                eor     byte_52
                sta     byte_52
                bset    7, byte_50
                bset    6, byte_50
                bclr    5, byte_50
                lda     , x
                bit     #1
                bne     loc_2BD6
                bclr    4, byte_50
                skip2

loc_2BD6:                               ; CODE XREF: sub_2BAA+27↑j
                bset    4, byte_50
                lda     byte_5CB
                bit     #1
                bne     loc_2BE2
                bclr    3, byte_50
                skip2

loc_2BE2:                               ; CODE XREF: sub_2BAA+33↑j
                bset    3, byte_50
                lda     byte_5CC
                bit     #1
                bne     loc_2BEE
                bclr    2, byte_50
                skip2

loc_2BEE:                               ; CODE XREF: sub_2BAA+3F↑j
                bset    2, byte_50
                lda     byte_5CD
                bit     #1
                bne     loc_2BFA
                bclr    0, byte_50
                skip2

loc_2BFA:                               ; CODE XREF: sub_2BAA+4B↑j
                bset    0, byte_50
                clr     byte_51
                rts
; End of function sub_2BAA


; =============== S U B R O U T I N E =======================================


Vspi:
                pshh
                lda     byte_53
                lda     byte_55
                sta     byte_3D5
                clra
                sta     byte_3D6
                jsr     nullsub_4
                pulh
                rti
; End of function Vspi


; =============== S U B R O U T I N E =======================================


sub_2C10:                               ; CODE XREF: ROM:2C88↓P
                lda     byte_516
                dbnza   loc_2C1C
                lda     word_2
                eor     #$10
                sta     word_2
                rts
; ---------------------------------------------------------------------------

loc_2C1C:                               ; CODE XREF: sub_2C10+3↑j
                bclr    4, word_2
                rts
; End of function sub_2C10


; =============== S U B R O U T I N E =======================================


sub_2C1F:                               ; CODE XREF: ROM:2CAC↓P
                ldhx    #$4B6
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_2C28:                               ; CODE XREF: sub_2C1F+6↑j
                brset   1, byte_25, loc_2C30
                lda     #1
                sta     byte_4BB

loc_2C30:                               ; CODE XREF: sub_2C1F:loc_2C28↑j
                clrx
                clrh
                sthx    word_4B8
                sthx    word_4B6
                rts
; End of function sub_2C1F

; ---------------------------------------------------------------------------

loc_2C39:                               ; CODE XREF: ROM:2D15↓J
                ldhx    #$4AB
                jsr     sub_1D8A
                brset   0, byte_0, loc_2C42+1

loc_2C42:                               ; CODE XREF: ROM:2C3F↑j
                sbc     loc_2507+1
                bsr     sub_2C50
                lda     #1
                sta     byte_4B4
                rts
; ---------------------------------------------------------------------------
                fcb $AD
                fcb   1
                fcb $81

; =============== S U B R O U T I N E =======================================


sub_2C50:                               ; CODE XREF: ROM:2C45↑p
                clrx
                clrh
                sthx    word_4AD
                sthx    word_4AB
                rts
; End of function sub_2C50


; =============== S U B R O U T I N E =======================================


sub_2C59:                               ; CODE XREF: sub_1AF2+123B↓P
                lda     byte_60
                and     #$E7
                ora     #8
                sta     byte_60
                lda     byte_60
                and     #$F8
                ora     #2
                sta     byte_60
                bset    6, byte_60
                ldhx    #$58C7
                sthx    word_63
                rts
; End of function sub_2C59

; ---------------------------------------------------------------------------

loc_2C71:                               ; CODE XREF: Vtpm2ovf+5↓P
                jsr     sub_3662
                clrx
                clrh
                jsr     sub_3708
                ldhx    #$3DB
                inc     , x
                lda     byte_3DB
                cmp     #2
                bcs     loc_2C8B
                clra
                sta     byte_3DB
                jsr     sub_2C10

loc_2C8B:                               ; CODE XREF: ROM:2C82↑j
                ldhx    #$3D8
                inc     , x
                lda     byte_3D8
                cmp     #4
                bcs     loc_2C9D
                clra
                sta     byte_3D8
                jsr     loc_3D4F

loc_2C9D:                               ; CODE XREF: ROM:2C94↑j
                ldhx    #$3DC
                inc     , x
                lda     byte_3DC
                cmp     #8
                bcs     loc_2CAF
                clra
                sta     byte_3DC
                jsr     sub_2C1F

loc_2CAF:                               ; CODE XREF: ROM:2CA6↑j
                ldhx    #$3DD
                inc     , x
                lda     byte_3DD
                cmp     #$C
                bcs     loc_2CC1
                clra
                sta     byte_3DD
                jsr     sub_3B66

loc_2CC1:                               ; CODE XREF: ROM:2CB8↑j
                ldhx    #$3D9
                inc     1, x
                bne     loc_2CC9
                inc     , x

loc_2CC9:                               ; CODE XREF: ROM:2CC6↑j
                ldhx    word_3D9
                cphx    #$C8
                bcs     loc_2CDB
                clrx
                clrh
                sthx    word_3D9
                lda     #1
                sta     byte_3D7

loc_2CDB:                               ; CODE XREF: ROM:2CCF↑j
                ldhx    #$3DE
                jsr     sub_1D0E
                jsr     sub_1DC0
                ldhx    #$3DE
                jsr     sub_1D8A
                brset   0, byte_0, loc_2CEE+1
                aslx

loc_2CEE:                               ; CODE XREF: ROM:2CEA↑j
                bcs     loc_2CF8
                clrx
                clrh
                sthx    word_3E0
                sthx    word_3DE

loc_2CF8:                               ; CODE XREF: ROM:loc_2CEE↑j
                ldhx    #$3E2
                jsr     sub_1D0E
                jsr     sub_1DC0
                ldhx    #$3E2
                jsr     sub_1D8A
                brset   0, byte_0, loc_2D0F+2
                sub     $250B, x
                clrx
                clrh

loc_2D0F:                               ; CODE XREF: ROM:2D07↑j
                sthx    word_3E4
                sthx    word_3E2
                jmp     loc_2C39
; ---------------------------------------------------------------------------
                fcb $81

; =============== S U B R O U T I N E =======================================


Vtpm2ovf:
                pshh
                lda     byte_60
                bclr    7, byte_60
                jsr     loc_2C71
                pulh
                rti
; End of function Vtpm2ovf


; =============== S U B R O U T I N E =======================================


Vtpm1ovf:
                pshh
                lda     byte_20
                bclr    7, byte_20
                pulh
                rti
; End of function Vtpm1ovf

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1AF2

loc_2D2A:                               ; CODE XREF: sub_1AF2+D↑J
                jsr     sub_27F7
                jsr     sub_2C59
                lda     byte_5A4
                dbnza   loc_2D38
                jsr     sub_1E64

loc_2D38:                               ; CODE XREF: sub_1AF2+1241↑j
                lda     byte_5A6
                dbnza   loc_2D40
                jsr     sub_238C

loc_2D40:                               ; CODE XREF: sub_1AF2+1249↑j
                lda     byte_5A7
                dbnza   loc_2D48
                jsr     sub_2BAA

loc_2D48:                               ; CODE XREF: sub_1AF2+1251↑j
                lda     byte_5A8
                dbnza   loc_2D50
                jsr     sub_24E7

loc_2D50:                               ; CODE XREF: sub_1AF2+1259↑j
                lda     byte_5AA
                dbnza   loc_2D58
                jsr     sub_2767

loc_2D58:                               ; CODE XREF: sub_1AF2+1261↑j
                lda     byte_5AB
                dbnza   loc_2D60
                jsr     sub_2779

loc_2D60:                               ; CODE XREF: sub_1AF2+1269↑j
                lda     byte_5AC
                dbnza   loc_2D68
                jsr     sub_2AAD

loc_2D68:                               ; CODE XREF: sub_1AF2+1271↑j
                lda     byte_5AD
                dbnza   loc_2D7F
                clra
                psha
                psha
                ldhx    word_5DB
                pshx
                pshh
                ldhx    word_5D9
                pshx
                pshh
                jsr     sub_2ACF
                ais     #6

loc_2D7F:                               ; CODE XREF: sub_1AF2+1279↑j
                lda     byte_5AE
                dbnza   loc_2D98
                ldx     #1
                clrh
                pshx
                pshh
                ldhx    word_5DF
                pshx
                pshh
                ldhx    word_5DD
                pshx
                pshh
                jsr     sub_2ACF
                ais     #6

loc_2D98:                               ; CODE XREF: sub_1AF2+1290↑j
                lda     byte_1800
                sta     byte_3E6
                rts
; END OF FUNCTION CHUNK FOR sub_1AF2

; =============== S U B R O U T I N E =======================================


sub_2D9F:                               ; CODE XREF: sub_41A2+6↓P
                pshx
                psha
                ais     #-2
                tst     4, sp
                bne     loc_2DAC
                tsx
                clr     , x
                bra     loc_2DBC
; ---------------------------------------------------------------------------

loc_2DAC:                               ; CODE XREF: sub_2D9F+7↑j
                cpx     #1
                bne     loc_2DB4
                tsx
                clr     , x
                bra     loc_2DC8
; ---------------------------------------------------------------------------

loc_2DB4:                               ; CODE XREF: sub_2D9F+F↑j
                cpx     #2
                bne     loc_2DC0
                lda     #1
                tsx
                sta     , x

loc_2DBC:                               ; CODE XREF: sub_2D9F+B↑j
                clr     1, x
                bra     loc_2DCC
; ---------------------------------------------------------------------------

loc_2DC0:                               ; CODE XREF: sub_2D9F+17↑j
                cpx     #3
                bne     loc_2DDE
                lda     #1
                tsx
                sta     , x

loc_2DC8:                               ; CODE XREF: sub_2D9F+13↑j
                lda     #1
                sta     1, x

loc_2DCC:                               ; CODE XREF: sub_2D9F+1F↑j
                lda     7, x
                psha
                lda     6, x
                psha
                lda     , x
                psha
                ldx     1, x
                lda     6, sp
                jsr     sub_28BD
                ais     #3

loc_2DDE:                               ; CODE XREF: sub_2D9F+23↑j
                ais     #4
                rts
; End of function sub_2D9F


; =============== S U B R O U T I N E =======================================


sub_2DE1:                               ; CODE XREF: sub_3A83:loc_3B19↓P
                                        ; sub_3A83:loc_3B30↓P ...
                psha
                lda     4, sp
                psha
                lda     2, sp
                jsr     sub_299E
                ais     #2
                rts
; End of function sub_2DE1


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2DEF:                               ; CODE XREF: ROM:357C↓P
                                        ; sub_35F3+25↓J
                jmp     sub_1EA4
; End of function sub_2DEF


; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2DF2:                               ; CODE XREF: ROM:3379↓P
                                        ; ROM:33A2↓P ...
                jmp     sub_1EC7
; End of function sub_2DF2

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2DF6:                               ; CODE XREF: ROM:1F2B↑P
                jmp     loc_3358
; End of function sub_2DF6

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_11. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_2. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_3. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_6. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_7. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_8. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_9. PRESS CTRL-NUMPAD+ TO EXPAND]
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_10. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================


sub_2E02:                               ; CODE XREF: rst+18A↑P
                lda     #1
                ldhx    #$5A4
                sta     , x
                sta     1, x
                clra
                sta     2, x
                sta     3, x
                inca
                sta     4, x
                clra
                sta     5, x
                sta     6, x
                sta     7, x
                sta     8, x
                sta     9, x
                sta     $A, x
                lda     #2
                sta     byte_5D0
                deca
                sta     byte_5AF
                sta     byte_5B4
                clra
                sta     byte_5B5
                clrh
                clrx
                sthx    word_5B8
                sthx    word_5B6
                ldhx    #$FFFF
                sthx    word_5BC
                pshx
                pulh
                sthx    word_5BA
                clrh
                clrx
                sthx    word_5C0
                sthx    word_5BE
                ldhx    #$FFFF
                sthx    word_5C4
                pshx
                pulh
                sthx    word_5C2
                ldhx    #$5C6
                sta     , x
                sta     1, x
                sta     3, x
                inca
                ldhx    #$5CA
                sta     , x
                sta     1, x
                sta     2, x
                clra
                sta     3, x
                lda     #5
                sta     4, x
                lda     #3
                sta     5, x
                lsra
                ldhx    #$5D9
                sta     , x
                clra
                sta     1, x
                sta     2, x
                sta     3, x
                inca
                sta     4, x
                clra
                sta     5, x
                sta     6, x
                sta     7, x
                ldhx    #$3E8
                sthx    word_5D1
                lda     #$12
                sta     byte_5D3
                clra
                sta     byte_5D4
                inca
                sta     byte_5D5
                inca
                sta     byte_5D6
                asla
                sta     byte_5D7
                pshh
                pula
                sta     byte_5D8
                rts
; End of function sub_2E02

; [00000001 BYTES: COLLAPSED FUNCTION nullsub_1. PRESS CTRL-NUMPAD+ TO EXPAND]

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2EA9:                               ; CODE XREF: rst+192↑P
                jmp     sub_417E
; End of function sub_2EA9


; =============== S U B R O U T I N E =======================================


sub_2EAC:                               ; CODE XREF: sub_3CC6+1D↓P
                                        ; ROM:loc_4098↓P
                clrx
                clrh
                sthx    word_4A7
                stx     byte_4A9
                sthx    word_4A7
                sthx    word_4A5
                sthx    word_4AD
                sthx    word_4AB
                stx     byte_4B4
                sthx    word_4A3
                stx     byte_4AA
                sthx    word_4A3
                sthx    word_4A1
                sthx    word_4B1
                sthx    word_4AF
                stx     byte_4B3
                rts
; End of function sub_2EAC


; =============== S U B R O U T I N E =======================================


sub_2ED9:                               ; CODE XREF: sub_3CC6+20↓P
                clrx
                clrh
                sthx    word_4B8
                sthx    word_4B6
                stx     byte_4B5
                stx     byte_4BA
                stx     byte_4BB
                rts
; End of function sub_2ED9


; =============== S U B R O U T I N E =======================================


sub_2EEB:                               ; CODE XREF: ROM:3391↓P
                pshx
                pshh
                ais     #-2
                sthx    1, sp
                jsr     sub_3B5C
                cbeqa   #1, loc_2F4C
                ldhx    1, sp
                cphx    #$560
                bcc     loc_2F05
                ldhx    #$4F0
                bra     loc_2F46
; ---------------------------------------------------------------------------

loc_2F05:                               ; CODE XREF: sub_2EEB+13↑j
                txa
                sub     #$60 ; '`'
                psha
                pshh
                pula
                sbc     #5
                psha
                pulh
                pulx
                cphx    #$F5
                bhi     loc_2F1A
                ldhx    #$4EC
                bra     loc_2F46
; ---------------------------------------------------------------------------

loc_2F1A:                               ; CODE XREF: sub_2EEB+28↑j
                tsx
                lda     3, x
                sub     #$56 ; 'V'
                psha
                lda     2, x
                sbc     #6
                psha
                pulh
                pulx
                cphx    #$157
                bhi     loc_2F31
                ldhx    #$4E8
                bra     loc_2F46
; ---------------------------------------------------------------------------

loc_2F31:                               ; CODE XREF: sub_2EEB+3F↑j
                tsx
                lda     3, x
                sub     #$AE
                psha
                lda     2, x
                sbc     #7
                psha
                pulh
                pulx
                cphx    #$11E
                bhi     loc_2F4C
                ldhx    #$4F4

loc_2F46:                               ; CODE XREF: sub_2EEB+18↑j
                                        ; sub_2EEB+2D↑j ...
                jsr     sub_1D0E
                jsr     sub_1DC0

loc_2F4C:                               ; CODE XREF: sub_2EEB+A↑j
                                        ; sub_2EEB+56↑j
                ais     #4
                rts
; End of function sub_2EEB


; =============== S U B R O U T I N E =======================================


sub_2F4F:                               ; CODE XREF: ROM:33BA↓P
                cphx    #$8E8
                bcc     loc_2F59
                cphx    #$718
                bhi     loc_2F62

loc_2F59:                               ; CODE XREF: sub_2F4F+3↑j
                ldhx    #$4A5
                jsr     sub_1D0E
                jsr     sub_1DC0

loc_2F62:                               ; CODE XREF: sub_2F4F+8↑j
                ldhx    #$4A5
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_2F6B:                               ; CODE XREF: sub_2F4F+19↑j
                brset   4, byte_25, loc_2F77
                ldhx    #$4AB
                jsr     sub_1D0E
                jsr     sub_1DC0

loc_2F77:                               ; CODE XREF: sub_2F4F:loc_2F6B↑j
                ldhx    #$4AB
                jsr     sub_1D8A
                brset   0, byte_0, loc_2F80+1

loc_2F80:                               ; CODE XREF: sub_2F4F+2E↑j
                sbc     loc_250D
                clrx
                clrh
                sthx    word_4AD
                sthx    word_4AB
                lda     #1
                sta     byte_4B4
                ldhx    #$4A9
                inc     , x
                lda     byte_4A9
                cmp     #$14
                bls     locret_2FA7
                clra
                sta     byte_4A9
                clrh
                clrx
                sthx    word_4A7
                sthx    word_4A5

locret_2FA7:                            ; CODE XREF: sub_2F4F+4A↑j
                rts
; End of function sub_2F4F


; =============== S U B R O U T I N E =======================================


sub_2FA8:                               ; CODE XREF: ROM:33E3↓P
                cphx    #$9FD
                bcc     loc_2FB2
                cphx    #$602
                bhi     loc_2FB6

loc_2FB2:                               ; CODE XREF: sub_2FA8+3↑j
                ldhx    #$4BA
                inc     , x

loc_2FB6:                               ; CODE XREF: sub_2FA8+8↑j
                lda     byte_4BA
                cmp     #4
                bcs     loc_2FC6
                ldhx    #$4B6
                jsr     sub_1D0E
                jsr     sub_1DC0

loc_2FC6:                               ; CODE XREF: sub_2FA8+13↑j
                ldhx    #$4B6
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_2FCF:                               ; CODE XREF: sub_2FA8+24↑j
                brset   1, byte_25, loc_2FDF
                lda     #1
                sta     byte_4BB
                clrx
                clrh
                sthx    word_4B8
                sthx    word_4B6

loc_2FDF:                               ; CODE XREF: sub_2FA8:loc_2FCF↑j
                ldhx    #$4B5
                inc     , x
                lda     byte_4B5
                cmp     #$14
                bls     locret_2FF1
                clra
                sta     byte_4B5
                sta     byte_4BA

locret_2FF1:                            ; CODE XREF: sub_2FA8+40↑j
                rts
; End of function sub_2FA8


; =============== S U B R O U T I N E =======================================


sub_2FF2:                               ; CODE XREF: sub_3342+B↓P
                pshx
                pshh
                ais     #-2
                cphx    #$F87
                bhi     loc_3045
                cphx    #$CF
                bcc     loc_3004
                lda     #$FF
                bra     loc_3046
; ---------------------------------------------------------------------------

loc_3004:                               ; CODE XREF: sub_2FF2+C↑j
                lda     #1
                tsx
                sta     1, x

loc_3009:                               ; CODE XREF: sub_2FF2+51↓j
                ldx     1, x
                aslx
                clra
                rola
                psha
                stx     2, sp
                pulh
                ldhx    $1992, x
                cphx    3, sp
                bcc     loc_3030
                psha
                tsx
                ldx     1, x
                pulh
                ldhx    $1990, x
                cphx    3, sp
                bcs     loc_3030
                tsx
                lda     1, x
                deca
                bra     loc_3046
; ---------------------------------------------------------------------------

loc_3030:                               ; CODE XREF: sub_2FF2+28↑j
                                        ; sub_2FF2+36↑j
                ldhx    3, sp
                cphx    #$CF
                bne     loc_303C
                lda     #$AF
                bra     loc_3046
; ---------------------------------------------------------------------------

loc_303C:                               ; CODE XREF: sub_2FF2+44↑j
                tsx
                inc     1, x
                lda     1, x
                cmp     #$B0
                bcs     loc_3009

loc_3045:                               ; CODE XREF: sub_2FF2+7↑j
                clra

loc_3046:                               ; CODE XREF: sub_2FF2+10↑j
                                        ; sub_2FF2+3C↑j ...
                ais     #4
                rts
; End of function sub_2FF2


; =============== S U B R O U T I N E =======================================


sub_3049:                               ; CODE XREF: sub_3342+8↓P
                pshx
                pshh
                ais     #-5
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                tsx
                clr     4, x

loc_3058:                               ; CODE XREF: sub_3049+43↓j
                tsx
                lda     4, x
                asla
                clrx
                rolx
                add     7, sp
                psha
                txa
                tsx
                adc     6, x
                psha
                pulh
                pulx
                ldhx    , x
                clra
                pshx
                pshh
                psha
                psha
                tsx
                pshx
                pshh
                aix     #4
                pshx
                pshh
                ldhx    3, sp
                jsr     sub_1D34
                tsx

loc_307E:                               ; CODE XREF: sub_3049:loc_3095↓j
                aix     #$A
                jsr     sub_1DC0
                tsx
                inc     $A, x
                lda     $A, x
                cmp     #$A
                ais     #6
                bcs     loc_3058
                tsx
                jsr     sub_1D4C
                brset   0, byte_0, *+3

loc_3095:                               ; CODE XREF: sub_3049+49↑j
                brset   5, byte_95, loc_307E
                brclr   1, byte_EE, loc_309D
                pshx
                pulh

loc_309D:                               ; CODE XREF: sub_3049+4F↑j
                tax
                ais     #$B
                rts
; End of function sub_3049


; =============== S U B R O U T I N E =======================================


sub_30A1:                               ; CODE XREF: ROM:35CB↓P
                pshx
                pshh
                ais     #-5
                ldhx    , x
                sthx    3, sp
                sthx    1, sp
                tsx
                clr     4, x

loc_30B0:                               ; CODE XREF: sub_30A1+2E↓j
                bsr     sub_30E1
                ldhx    , x
                cphx    1, sp
                bls     loc_30BC
                sthx    1, sp

loc_30BC:                               ; CODE XREF: sub_30A1+16↑j
                bsr     sub_30E1
                ldhx    , x
                cphx    3, sp
                bcc     loc_30C8
                sthx    3, sp

loc_30C8:                               ; CODE XREF: sub_30A1+22↑j
                tsx
                inc     4, x
                lda     4, x
                cmp     #$14
                bcs     loc_30B0
                ldhx    $A, sp
                pshx
                pshh
                tsx
                aix     #2
                lda     #4
                jsr     sub_1D90
                ais     #7
                rts
; End of function sub_30A1


; =============== S U B R O U T I N E =======================================


sub_30E1:                               ; CODE XREF: sub_30A1:loc_30B0↑p
                                        ; sub_30A1:loc_30BC↑p
                tsx
                lda     6, x
                asla
                clrx
                rolx
                add     9, sp
                psha
                txa
                tsx
                adc     8, x
                psha
                pulh
                pulx
                rts
; End of function sub_30E1

; ---------------------------------------------------------------------------

loc_30F3:                               ; CODE XREF: ROM:4492↓P
                ais     #-4
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                ldhx    unk_519
                sthx    3, sp

loc_3103:                               ; CODE XREF: ROM:315B↓j
                ldhx    word_517
                sthx    1, sp
                lda     byte_106
                cmp     #2
                bne     loc_313E
                tsx
                jsr     sub_1D40
                nega
                brset   0, byte_0, *+3

loc_3118:                               ; CODE XREF: ROM:3115↑j
                                        ; ROM:loc_3148↓j
                jsr     sub_1DC0
                tsx

loc_311C:                               ; CODE XREF: ROM:3156↓j
                jsr     sub_1D8A
                nega
                brset   0, byte_0, *+3

loc_3123:                               ; CODE XREF: ROM:3120↑j
                beq     loc_317E
                lda     byte_4C4
                bne     loc_317E
                lda     #1
                sta     byte_4C4
                ldhx    #$517
                lda     , x
                ora     #$40 ; '@'
                sta     , x
                clra
                psha
                psha
                ldhx    #$4000
                bra     loc_316E
; ---------------------------------------------------------------------------

loc_313E:                               ; CODE XREF: ROM:310E↑j
                cmp     #3
                bne     loc_3177
                tsx
                jsr     sub_1D40
                bra     *+2
; ---------------------------------------------------------------------------

loc_3148:                               ; CODE XREF: ROM:3146↑j
                brset   0, byte_0, loc_3118
                bclr    6, byte_C0
                tsx
                jsr     sub_1D8A
                bra     *+2
; ---------------------------------------------------------------------------

loc_3153:                               ; CODE XREF: ROM:3151↑j
                brset   0, byte_0, loc_317B+2
                beq     loc_311C+2
                brset   2, byte_C8, sub_3181
                bhi     loc_3103
                brclr   0, byte_C7, loc_3163+1
                eor     loc_4505

loc_3163:                               ; CODE XREF: ROM:315D↑j
                bclr    3, byte_F6
                ora     #$20 ; ' '
                sta     , x
                clra
                psha
                psha
                ldhx    #$2000

loc_316E:                               ; CODE XREF: ROM:313C↑j
                pshx
                pshh
                jsr     sub_4481
                ais     #4
                bra     loc_317E
; ---------------------------------------------------------------------------

loc_3177:                               ; CODE XREF: ROM:3140↑j
                clra
                sta     byte_4C4

loc_317B:                               ; CODE XREF: ROM:loc_3153↑j
                sta     byte_4C8

loc_317E:                               ; CODE XREF: ROM:loc_3123↑j
                                        ; ROM:3128↑j ...
                ais     #4
                rts

; =============== S U B R O U T I N E =======================================


sub_3181:                               ; CODE XREF: ROM:3158↑j
                                        ; sub_3662+28↓P
                ais     #-3
                tsx
                clr     2, x
                clr     1, x

loc_3188:                               ; CODE XREF: sub_3181+1A1↓J
                ldx     1, x
                clrh
                lda     $105, x
                cmp     #$7D ; '}'
                bcc     loc_3199
                cmp     #$A
                bls     loc_3199
                jmp     loc_327C
; ---------------------------------------------------------------------------

loc_3199:                               ; CODE XREF: sub_3181+F↑j
                                        ; sub_3181+13↑j
                lda     $105, x
                cmp     #$FF
                bcs     loc_31F8
                jsr     sub_3333
                ldhx    $4CE, x
                cphx    #$1F4
                bls     loc_31E3
                psha
                tsx
                ldx     1, x
                pulh
                clra
                sta     $4CF, x
                sta     $4CE, x
                jsr     sub_332A
                sta     $4CD, x
                sta     $4CC, x
                tsx
                ldx     1, x
                aslx
                rola
                psha
                lda     1, sp
                psha
                pulh
                clra
                sta     $4D1, x
                pulh
                clra
                sta     $4D0, x
                tsx
                ldx     1, x
                clrh
                sta     $4BD, x
                lda     #2
                sta     $106, x
                bra     loc_3250
; ---------------------------------------------------------------------------

loc_31E3:                               ; CODE XREF: sub_3181+29↑j
                psha
                tsx
                lda     1, x
                add     #$CE
                psha
                lda     , x
                adc     #4
                psha
                pulh
                pulx
                inc     1, x
                bne     loc_31F5
                inc     , x

loc_31F5:                               ; CODE XREF: sub_3181+71↑j
                pulh
                bra     loc_3250
; ---------------------------------------------------------------------------

loc_31F8:                               ; CODE XREF: sub_3181+1D↑j
                cmp     #0
                bhi     loc_3252
                jsr     sub_3333
                ldhx    $4D0, x
                cphx    #$1F4
                bls     loc_323D
                tsx
                ldx     1, x
                aslx
                psha
                jsr     sub_333C
                sta     $4CF, x
                sta     $4CE, x
                tsx
                ldx     2, x
                aslx
                rola
                psha
                pulh
                clra
                sta     $4CD, x
                sta     $4CC, x
                ldhx    1, sp
                sta     $4D1, x
                pulh
                clra
                sta     $4D0, x
                tsx
                ldx     1, x
                clrh
                sta     $4BD, x
                lda     #3
                sta     $106, x
                bra     loc_3279
; ---------------------------------------------------------------------------

loc_323D:                               ; CODE XREF: sub_3181+85↑j
                psha
                tsx
                lda     1, x
                add     #$D0
                psha
                lda     , x
                adc     #4
                psha
                pulh
                pulx
                inc     1, x
                bne     loc_324F
                inc     , x

loc_324F:                               ; CODE XREF: sub_3181+CB↑j
                pulh

loc_3250:                               ; CODE XREF: sub_3181+60↑j
                                        ; sub_3181+75↑j
                bra     loc_3279
; ---------------------------------------------------------------------------

loc_3252:                               ; CODE XREF: sub_3181+79↑j
                lda     #1
                sta     $4BD, x
                sta     3, sp
                sta     $106, x
                aslx
                jsr     sub_333C
                sta     $4CF, x
                sta     $4CE, x
                jsr     sub_332A
                sta     $4CD, x
                sta     $4CC, x
                jsr     sub_332A
                sta     $4D1, x
                sta     $4D0, x

loc_3279:                               ; CODE XREF: sub_3181+BA↑j
                                        ; sub_3181:loc_3250↑j
                jmp     loc_32FE
; ---------------------------------------------------------------------------

loc_327C:                               ; CODE XREF: sub_3181+15↑J
                sta     1, sp
                lda     $4BD, x
                dbnza   loc_3298
                lda     1, sp
                cmp     #$73 ; 's'
                bls     loc_3298
                lda     #1
                sta     $106, x
                sta     $4BD, x
                sta     3, sp
                bra     loc_3300
; ---------------------------------------------------------------------------

loc_3298:                               ; CODE XREF: sub_3181+101↑j
                                        ; sub_3181+108↑j
                lda     $105, x
                sub     #$B
                cmp     #$68 ; 'h'
                bhi     loc_3300
                jsr     sub_3333
                ldhx    $4CC, x
                cphx    #$5DC
                bls     loc_32E2
                tsx
                ldx     1, x
                aslx
                psha
                jsr     sub_333C
                sta     $4CF, x
                sta     $4CE, x
                tsx
                ldx     1, x
                pulh
                sta     $4CD, x
                sta     $4CC, x
                tsx
                ldx     1, x
                aslx
                rola
                psha
                lda     1, sp
                psha
                pulh
                clra
                sta     $4D1, x
                pulh
                clra
                sta     $4D0, x
                tsx
                ldx     1, x
                clrh
                sta     $4BD, x
                bra     loc_32F5
; ---------------------------------------------------------------------------

loc_32E2:                               ; CODE XREF: sub_3181+12A↑j
                psha
                tsx
                lda     1, x
                add     #$CC
                psha
                lda     , x
                adc     #4
                psha
                pulh
                pulx
                inc     1, x
                bne     loc_32F4
                inc     , x

loc_32F4:                               ; CODE XREF: sub_3181+170↑j
                pulh

loc_32F5:                               ; CODE XREF: sub_3181+15F↑j
                tsx
                ldx     1, x
                clrh
                lda     #1
                sta     $106, x

loc_32FE:                               ; CODE XREF: sub_3181:loc_3279↑J
                bra     loc_3319
; ---------------------------------------------------------------------------

loc_3300:                               ; CODE XREF: sub_3181+115↑j
                                        ; sub_3181+11E↑j
                aslx
                bsr     sub_333C
                sta     $4CF, x
                sta     $4CE, x
                bsr     sub_332A
                sta     $4CD, x
                sta     $4CC, x
                bsr     sub_332A
                sta     $4D1, x
                sta     $4D0, x

loc_3319:                               ; CODE XREF: sub_3181:loc_32FE↑j
                tsx
                inc     1, x
                lda     1, x
                cmp     #1
                bcc     loc_3325
                jmp     loc_3188
; ---------------------------------------------------------------------------

loc_3325:                               ; CODE XREF: sub_3181+19F↑j
                lda     2, x
                ais     #3
                rts
; End of function sub_3181


; =============== S U B R O U T I N E =======================================


sub_332A:                               ; CODE XREF: sub_3181+37↑P
                                        ; sub_3181+E6↑P ...
                tsx
                ldx     3, x
                aslx
                rola
                psha
                pulh
                clra
                rts
; End of function sub_332A


; =============== S U B R O U T I N E =======================================


sub_3333:                               ; CODE XREF: sub_3181+1F↑P
                                        ; sub_3181+7B↑P ...
                aslx
                clra
                rola
                psha
                stx     4, sp
                pulh
                rts
; End of function sub_3333


; =============== S U B R O U T I N E =======================================


sub_333C:                               ; CODE XREF: sub_3181+8C↑P
                                        ; sub_3181+DD↑P ...
                clra
                rola
                psha
                pulh
                clra
                rts
; End of function sub_333C


; =============== S U B R O U T I N E =======================================


sub_3342:                               ; CODE XREF: rst+1AF↑P
                lda     byte_4BE
                dbnza   locret_3357
                ldhx    #$40F
                jsr     sub_3049
                jsr     sub_2FF2
                sta     byte_105
                clra
                sta     byte_4BE

locret_3357:                            ; CODE XREF: sub_3342+3↑j
                rts
; End of function sub_3342

; ---------------------------------------------------------------------------

loc_3358:                               ; CODE XREF: sub_2DF6↑J
                ais     #-3
                clrx
                clrh
                sthx    word_4C2
                sthx    word_4C0
                ldhx    #$4DA
                jsr     sub_1D0E
                jsr     sub_1DC0
                lda     byte_107
                cmp     #$D
                bne     loc_3399
                ldx     byte_4D2
                aslx
                lda     #$D
                pshx
                jsr     sub_2DF2
                pshh
                clrh
                txa
                ldx     2, sp
                sta     $3FC, x
                pula
                sta     $3FB, x
                ldx     byte_4D2
                aslx
                ldhx    $3FB, x
                jsr     sub_2EEB
                ldhx    #$4D2
                bra     loc_33E9
; ---------------------------------------------------------------------------

loc_3399:                               ; CODE XREF: ROM:3370↑j
                cmp     #$A
                bne     loc_33C2
                ldx     byte_4D3
                aslx
                pshx
                jsr     sub_2DF2
                pshh
                clrh
                txa
                ldx     2, sp
                sta     $44C, x
                pula
                sta     $44B, x
                ldx     byte_4D3
                aslx
                ldhx    $44B, x
                jsr     sub_2F4F
                ldhx    #$4D3
                bra     loc_33E9
; ---------------------------------------------------------------------------

loc_33C2:                               ; CODE XREF: ROM:339B↑j
                cmp     #1
                bne     loc_33EB
                ldx     byte_4D4
                aslx
                pshx
                jsr     sub_2DF2
                pshh
                clrh
                txa
                ldx     2, sp
                sta     $424, x
                pula
                sta     $423, x
                ldx     byte_4D4
                aslx
                ldhx    $423, x
                jsr     sub_2FA8
                ldhx    #$4D4

loc_33E9:                               ; CODE XREF: ROM:3397↑j
                                        ; ROM:33C0↑j
                bra     loc_3452
; ---------------------------------------------------------------------------

loc_33EB:                               ; CODE XREF: ROM:33C4↑j
                cmp     #$E
                bne     loc_3436
                jsr     sub_2DF2
                sthx    word_49F
                pshx
                ldx     byte_4D6
                aslx
                lda     word_49F+1
                pshh
                clrh
                sta     $474, x
                lda     word_49F
                sta     $473, x
                ldhx    #$4D6
                inc     , x
                pulh
                pulx
                cphx    #$666
                bcs     loc_342F
                ldhx    #$4D8
                inc     1, x
                bne     loc_341B
                inc     , x

loc_341B:                               ; CODE XREF: ROM:3418↑j
                ldhx    word_4D8
                cphx    #4
                bcs     loc_3472
                clrx
                clrh
                sthx    word_4D8
                lda     #1
                sta     byte_4BC
                bra     loc_3472
; ---------------------------------------------------------------------------

loc_342F:                               ; CODE XREF: ROM:3411↑j
                clrx
                clrh
                sthx    word_4D8
                bra     loc_3472
; ---------------------------------------------------------------------------

loc_3436:                               ; CODE XREF: ROM:33ED↑j
                cmp     #6
                bne     loc_3454
                ldx     byte_4D5
                aslx
                pshx
                jsr     sub_2DF2
                pshh
                clrh
                txa
                ldx     2, sp
                sta     $410, x
                pula
                sta     $40F, x

loc_344F:                               ; CODE XREF: ROM:loc_3480↓j
                ldhx    #$4D5

loc_3452:                               ; CODE XREF: ROM:loc_33E9↑j
                bra     loc_3470
; ---------------------------------------------------------------------------

loc_3454:                               ; CODE XREF: ROM:3438↑j
                cmp     #2
                bne     loc_3472
                ldx     byte_4D7
                aslx
                pshx
                jsr     sub_2DF2
                pshh
                clrh
                txa
                ldx     2, sp
                sta     $3E8, x
                pula
                sta     $3E7, x
                ldhx    #$4D7

loc_3470:                               ; CODE XREF: ROM:loc_3452↑j
                inc     , x
                pulh

loc_3472:                               ; CODE XREF: ROM:3421↑j
                                        ; ROM:342D↑j ...
                lda     #$D
                sta     byte_107
                ldhx    #$4DA
                jsr     loc_1D52
                brset   0, byte_0, *+3

loc_3480:                               ; CODE XREF: ROM:347D↑j
                brclr   2, byte_95, loc_344F+1
                bclr    6, byte_8A
                brset   0, byte_0, *+3

loc_3488:                               ; CODE XREF: ROM:3485↑j
                brset   0, byte_CD, loc_34A9
                rora
                tsx
                lda     7, x
                sta     8, x
                ldx     6, x
                lda     6, sp
                sta     $A, sp
                lda     5, sp
                sta     $B, sp
                jsr     sub_1E55
                ais     #4
                beq     loc_34F1
                lda     1, sp

loc_34A9:                               ; CODE XREF: ROM:loc_3488↑j
                psha
                pshx
                tsx
                lda     3, x
                psha
                lda     4, x
                psha
                tsx
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_34B9:                               ; CODE XREF: ROM:34B6↑j
                brclr   0, byte_CD, loc_34F1
                ldx     $A704, x
                beq     loc_3516
                psha
                pshx
                tsx
                lda     3, x
                psha
                lda     4, x
                psha
                tsx
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_34D1:                               ; CODE XREF: ROM:34CE↑j
                brset   1, byte_CD, loc_3509
                ldx     $A704, x
                beq     loc_352F
                psha
                pshx
                tsx
                lda     3, x
                psha
                lda     4, x
                psha
                tsx
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_34E9:                               ; CODE XREF: ROM:34E6↑j
                brclr   1, byte_A7, loc_34EE+2
                beq     loc_3557

loc_34EE:                               ; CODE XREF: ROM:loc_34E9↑j
                jmp     loc_3574
; ---------------------------------------------------------------------------

loc_34F1:                               ; CODE XREF: ROM:34A4↑j
                                        ; ROM:loc_34B9↑j
                ldhx    #$4DA
                lda     3, x
                ora     2, x
                ora     1, x
                ora     , x
                beq     loc_3579
                ldhx    #$4E0
                inc     1, x
                bne     loc_3505
                inc     , x

loc_3505:                               ; CODE XREF: ROM:3502↑j
                ldhx    word_4E0
                skip2

loc_3509:                               ; CODE XREF: ROM:loc_34D1↑j
                brset   0, word_2, loc_352F+2
                inc     $5F, x
                clrh
                sthx    word_4E0
                lda     #$A
                bra     loc_3576
; ---------------------------------------------------------------------------

loc_3516:                               ; CODE XREF: ROM:34BF↑j
                ldhx    #$4E2
                inc     1, x
                bne     loc_351E
                inc     , x

loc_351E:                               ; CODE XREF: ROM:351B↑j
                ldhx    word_4E2
                cphx    #2
                bcs     loc_3579
                clrx
                clrh
                sthx    word_4E2
                lda     #1
                bra     loc_3576
; ---------------------------------------------------------------------------

loc_352F:                               ; CODE XREF: ROM:34D7↑j
                                        ; ROM:loc_3509↑j
                ldhx    #$4E4
                inc     1, x
                bne     loc_3537
                inc     , x

loc_3537:                               ; CODE XREF: ROM:3534↑j
                ldhx    word_4E4
                cphx    #2
                bcs     loc_3579
                clrx
                clrh
                sthx    word_4E4
                lda     byte_50D
                dbnza   loc_354D
                lda     #$E
                bra     loc_3576
; ---------------------------------------------------------------------------

loc_354D:                               ; CODE XREF: ROM:3547↑j
                lda     #$D
                sta     byte_107
                sthx    word_4D8
                bra     loc_3579
; ---------------------------------------------------------------------------

loc_3557:                               ; CODE XREF: ROM:34EC↑j
                ldhx    #$4DE
                inc     1, x
                bne     loc_355F
                inc     , x

loc_355F:                               ; CODE XREF: ROM:355C↑j
                ldhx    word_4DE
                cphx    #$16
                bcs     loc_3579
                clrx
                clrh
                sthx    word_4DE
                lda     byte_4BE
                bne     loc_3579
                lda     #6
                skip2

loc_3574:                               ; CODE XREF: ROM:loc_34EE↑J
                lda     #$D

loc_3576:                               ; CODE XREF: ROM:3514↑j
                                        ; ROM:352D↑j ...
                sta     byte_107

loc_3579:                               ; CODE XREF: ROM:34FB↑j
                                        ; ROM:3524↑j ...
                lda     byte_107
                jsr     sub_2DEF
                lda     byte_4D2
                cmp     #$A
                bcs     loc_358A
                clra
                sta     byte_4D2

loc_358A:                               ; CODE XREF: ROM:3584↑j
                lda     byte_4D7
                cmp     #$A
                bcs     loc_3599
                clra
                sta     byte_4D7
                inca
                sta     byte_4BF

loc_3599:                               ; CODE XREF: ROM:358F↑j
                lda     byte_4D5
                cmp     #$A
                bcs     loc_35A8
                clra
                sta     byte_4D5
                inca
                sta     byte_4BE

loc_35A8:                               ; CODE XREF: ROM:359E↑j
                lda     byte_4D3
                cmp     #$14
                bcs     loc_35B3
                clra
                sta     byte_4D3

loc_35B3:                               ; CODE XREF: ROM:35AD↑j
                lda     byte_4D4
                cmp     #$14
                bcs     loc_35D0
                clra
                sta     byte_4D4
                lda     byte_516
                dbnza   loc_35D0
                ldhx    #$49B
                pshx
                pshh
                ldhx    #$423
                jsr     sub_30A1
                ais     #2

loc_35D0:                               ; CODE XREF: ROM:35B8↑j
                                        ; ROM:35C1↑j
                lda     byte_4D6
                cmp     #$14
                bcs     loc_35DB
                clra
                sta     byte_4D6

loc_35DB:                               ; CODE XREF: ROM:35D5↑j
                ais     #3
                rts
; ---------------------------------------------------------------------------
                fcb $CD
                fcb $1E
                fcb $46 ; F
                fcb $95
                fcb $E7
                fcb  $C
                fcb $EE
                fcb   8
                fcb $9E
                fcb $E6
                fcb   8
                fcb $9E
                fcb $E7
                fcb  $C
                fcb $9E
                fcb $E6
                fcb  $A
                fcb $CD
                fcb $1E
                fcb $55 ; U
                fcb $81

; =============== S U B R O U T I N E =======================================


sub_35F3:                               ; CODE XREF: rst:loc_1B1C↑P
                jsr     sub_1E9C
                dbnza   loc_3614
                ldhx    #$4C0
                jsr     sub_1D0E
                jsr     sub_1DC0
                ldhx    #$4C0
                jsr     sub_1D8A
                brset   0, byte_1, loc_360C+2
                dec     $23, x

loc_360C:                               ; CODE XREF: sub_35F3+14↑j
                brclr   4, byte_AD, sub_361B
                clra
                jsr     sub_1EA0
                skip2

loc_3614:                               ; CODE XREF: sub_35F3+3↑j
                bsr     sub_361B
                lda     #$D
                jmp     sub_2DEF
; End of function sub_35F3


; =============== S U B R O U T I N E =======================================


sub_361B:                               ; CODE XREF: sub_35F3:loc_360C↑j
                                        ; sub_35F3:loc_3614↑p
                clrx
                clrh
                sthx    word_4C2
                sthx    word_4C0
                rts
; End of function sub_361B


; =============== S U B R O U T I N E =======================================


sub_3624:                               ; CODE XREF: rst+195↑P
                jsr     sub_369B
                clra
                psha
                psha
                psha
                psha
                ldhx    #$258
                pshx
                pshh
                psha
                psha
                ldx     #$A
                clrh
                pshx
                pshh
                psha
                psha
                jsr     sub_3813
                ais     #$C
                ldx     #1
                clrh
                pshx
                pshh
                clra
                psha
                psha
                incx
                pshx
                pshh
                psha
                psha
                ldx     #1
                pshx
                psha
                psha
                psha
                jsr     sub_3813
                ais     #$C
                ldx     #1
                clrh
                jsr     sub_386A
                clrx
                clrh
                jmp     sub_386A
; End of function sub_3624


; =============== S U B R O U T I N E =======================================


sub_3662:                               ; CODE XREF: ROM:loc_2C71↑P
                ldhx    word_49D
                cphx    word_49B
                bcc     loc_3683
                ldhx    #$49B
                lda     1, x
                sub     3, x
                psha
                lda     , x
                sbc     2, x
                psha
                pulh
                pulx
                cphx    #$A3
                bcs     loc_3683
                ldx     #1
                clrh
                txa
                bra     loc_3687
; ---------------------------------------------------------------------------

loc_3683:                               ; CODE XREF: sub_3662+6↑j
                                        ; sub_3662+19↑j
                ldx     #1
                clrh
                clra

loc_3687:                               ; CODE XREF: sub_3662+1F↑j
                jsr     sub_36EB
                jsr     sub_3181
                dbnza   loc_3695
                clrx
                clrh
                lda     #1
                bra     loc_3698
; ---------------------------------------------------------------------------

loc_3695:                               ; CODE XREF: sub_3662+2B↑j
                clrx
                clrh
                clra

loc_3698:                               ; CODE XREF: sub_3662+31↑j
                jmp     sub_36EB
; End of function sub_3662


; =============== S U B R O U T I N E =======================================


sub_369B:                               ; CODE XREF: sub_3624↑P
                ais     #-4
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp

loc_36A5:                               ; CODE XREF: sub_369B:loc_36CB↓j
                lda     #$11
                tsx
                ldx     3, x
                mul
                add     #$E1
                psha
                clra
                adc     #5
                psha
                pulh
                pulx
                clr     , x
                clr     $D, x
                clr     $E, x
                clr     $F, x
                clr     $10, x
                tsx
                jsr     sub_1D0E
                jsr     sub_1DC0
                tsx
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_36CB:                               ; CODE XREF: sub_369B+2D↑j
                brclr   2, byte_25, loc_36A5
                ais     #4
                rts
; End of function sub_369B


; =============== S U B R O U T I N E =======================================


sub_36D1:                               ; CODE XREF: sub_3CF8+27↓P
                                        ; ROM:3DF8↓P ...
                lda     #$11
                mul
                clrh
                tax
                ldhx    $5E4, x
                cphx    #2
                bne     loc_36E2
                clrx
                clrh
                rts
; ---------------------------------------------------------------------------

loc_36E2:                               ; CODE XREF: sub_36D1+C↑j
                cphx    #3
                bne     locret_36EA
                ldx     #1
                clrh

locret_36EA:                            ; CODE XREF: sub_36D1+14↑j
                rts
; End of function sub_36D1


; =============== S U B R O U T I N E =======================================


sub_36EB:                               ; CODE XREF: sub_3662:loc_3687↑P
                                        ; sub_3662:loc_3698↑J
                psha
                cphx    #5
                bge     loc_3703
                lda     #$11
                mul
                clrh
                tax
                lda     1, sp
                sta     $5E3, x
                clra
                sta     $5E2, x
                clrx
                pula
                rts
; ---------------------------------------------------------------------------

loc_3703:                               ; CODE XREF: sub_36EB+4↑j
                ldx     #1
                clrh
                pula
                rts
; End of function sub_36EB


; =============== S U B R O U T I N E =======================================


sub_3708:                               ; CODE XREF: ROM:2C76↑P
                ais     #-9
                clrx
                clrh
                sthx    8, sp
                sthx    6, sp

loc_3712:                               ; CODE XREF: sub_3708+F1↓J
                lda     #$11
                tsx
                ldx     8, x
                mul
                add     #$E1
                tsx
                sta     , x
                clra
                adc     #5
                psha
                ldx     , x
                pulh
                sthx    4, sp
                lda     , x
                cmp     #1
                bne     loc_3782
                ldhx    3, x
                pshh
                pula
                jsr     sub_1E22
                brset   2, byte_B0, loc_3738
                asrx
                bclr    3, byte_68

loc_3738:                               ; CODE XREF: sub_3708+2A↑j
                ldhx    4, sp
                ldhx    1, x
                cphx    #1
                bne     loc_3782
                ldhx    4, sp
                clr     3, x
                lda     #2
                sta     4, x
                bra     loc_378B
; ---------------------------------------------------------------------------
                fcb $9E
                fcb $FE
                fcb   4
                fcb $9E
                fcb   2
                fcb $9E
                fcb $CE
                fcb   1
                fcb $65 ; e
                fcb   0
                fcb   1
                fcb $26 ; &
                fcb $20
                fcb $CD
                fcb $37 ; 7
                fcb $89
                fcb $8B
                fcb $9E
                fcb $FE
                fcb   4
                fcb $AF
                fcb   5
                fcb $CD
                fcb $1D
                fcb $84
                fcb $24 ; $
                fcb $11
                fcb $9E
                fcb $FE
                fcb   4
                fcb $6F ; o
                fcb   3
                fcb $A6
                fcb   1
                fcb $E7
                fcb   4
                fcb $6F ; o
                fcb  $D
                fcb $6F ; o
                fcb  $E
                fcb $6F ; o
                fcb  $F
                fcb $6F ; o
                fcb $10
                fcb $9E
                fcb $FE
                fcb   4
                fcb $9E
                fcb $CE
                fcb   1
; ---------------------------------------------------------------------------

loc_3782:                               ; CODE XREF: sub_3708+20↑j
                                        ; sub_3708+39↑j
                bne     loc_37E4
                ldhx    4, sp
                clr     3, x
                clr     4, x

loc_378B:                               ; CODE XREF: sub_3708+44↑j
                bra     loc_37DC
; ---------------------------------------------------------------------------
                fcb $9E
                fcb $FE
                fcb   4
                fcb $9E
                fcb $CE
                fcb   1
                fcb $26 ; &
                fcb $4F ; O
                fcb $9E
                fcb $FE
                fcb   4
                fcb $6F ; o
                fcb   3
                fcb $A6
                fcb   3
                fcb $E7
                fcb   4
                fcb $20
                fcb $3C ; <
                fcb $9E
                fcb $FE
                fcb   4
                fcb $9E
                fcb   2
                fcb $9E
                fcb $CE
                fcb   1
                fcb $26 ; &
                fcb $1D
                fcb $AD
                fcb $52 ; R
                fcb $89
                fcb $8B
                fcb $9E
                fcb $FE
                fcb   4
                fcb $AF
                fcb   9
                fcb $CD
                fcb $1D
                fcb $84
                fcb $24 ; $
                fcb  $F
                fcb $9E
                fcb $FE
                fcb   4
                fcb $6F ; o
                fcb   3
                fcb $6F ; o
                fcb   4
                fcb $6F ; o
                fcb  $D
                fcb $6F ; o
                fcb  $E
                fcb $6F ; o
                fcb  $F
                fcb $6F ; o
                fcb $10
                fcb $9E
                fcb $FE
                fcb   4
                fcb $9E
                fcb $CE
                fcb   1
                fcb $65 ; e
                fcb   0
                fcb   1
                fcb $26 ; &
                fcb $11
                fcb $9E
                fcb $FE
                fcb   4
                fcb $6F ; o
                fcb   3
                fcb $A6
                fcb   1
                fcb $E7
                fcb   4
; ---------------------------------------------------------------------------

loc_37DC:                               ; CODE XREF: sub_3708:loc_378B↑j
                clr     $D, x
                clr     $E, x
                clr     $F, x
                clr     $10, x

loc_37E4:                               ; CODE XREF: sub_3708:loc_3782↑j
                tsx
                aix     #5
                jsr     sub_1D0E
                jsr     sub_1DC0
                tsx
                aix     #5
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_37F6:                               ; CODE XREF: sub_3708+EB↑j
                brclr   2, word_23+1, loc_37FC
                jmp     loc_3712
; ---------------------------------------------------------------------------

loc_37FC:                               ; CODE XREF: sub_3708:loc_37F6↑j
                ais     #9
                rts
; End of function sub_3708

; ---------------------------------------------------------------------------
                fcb $9E
                fcb $FE
                fcb   4
                fcb $AF
                fcb  $D
                fcb $CD
                fcb $1D
                fcb  $E
                fcb $CD
                fcb $1D
                fcb $C0
                fcb $9E
                fcb $FE
                fcb   6
                fcb $9E
                fcb   4
                fcb $AF
                fcb  $D
                fcb $81

; =============== S U B R O U T I N E =======================================


sub_3813:                               ; CODE XREF: sub_3624+16↑P
                                        ; sub_3624+2E↑P
                ldhx    $D, sp
                cphx    #5
                bge     loc_3866
                lda     #$11
                mul
                add     #$E1
                psha
                clra
                adc     #5
                psha
                tsx
                ldx     1, x
                lda     $D, sp
                pulh
                sta     3, x
                lda     $D, sp
                sta     4, x
                lda     $C, sp
                sta     1, x
                lda     $D, sp
                sta     2, x
                pshh
                aix     #5
                pshx
                pshh
                tsx
                aix     #$A
                lda     #4
                jsr     sub_1D90
                ldhx    1, sp
                aix     #9
                pshx
                pshh
                tsx
                aix     #6
                lda     #4
                jsr     sub_1D90
                pulh
                pulx
                clr     $D, x
                clr     $E, x
                clr     $F, x
                clr     $10, x
                clrx
                clrh
                rts
; ---------------------------------------------------------------------------

loc_3866:                               ; CODE XREF: sub_3813+6↑j
                ldx     #1
                clrh
                rts
; End of function sub_3813


; =============== S U B R O U T I N E =======================================


sub_386A:                               ; CODE XREF: sub_3624+36↑P
                                        ; sub_3624+3B↑J
                cphx    #5
                bge     loc_387C
                lda     #$11
                mul
                psha
                lda     #1
                clrh
                pulx
                sta     $5E1, x
                clrx
                rts
; ---------------------------------------------------------------------------

loc_387C:                               ; CODE XREF: sub_386A+3↑j
                ldx     #2
                clrh
                rts
; End of function sub_386A


; =============== S U B R O U T I N E =======================================


sub_3880:                               ; CODE XREF: rst+198↑P
                ais     #-8
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                sthx    7, sp
                sthx    5, sp
                ldhx    #$11C
                sthx    word_505
                ldx     #$F
                clrh
                sthx    word_503
                ldhx    #$C1E
                sthx    word_509
                ldx     #$10
                clrh
                sthx    word_507
                ldx     #2
                pshx
                pshh
                tsx
                aix     #2
                jsr     sub_24F2
                ais     #2
                dbnza   loc_38E0
                ldhx    word_505
                cphx    3, sp
                bne     loc_38CC
                lda     word_503+1
                tsx
                cmp     1, x
                bne     loc_38CC
                lda     word_503
                cmp     , x
                beq     loc_38E0

loc_38CC:                               ; CODE XREF: sub_3880+3C↑j
                                        ; sub_3880+44↑j
                ldx     #2
                clrh
                pshx
                pshh
                ldhx    word_505
                pshx
                pshh
                ldhx    word_503
                pshx
                pshh
                jsr     loc_251B
                ais     #6

loc_38E0:                               ; CODE XREF: sub_3880+34↑j
                                        ; sub_3880+4A↑j
                ldx     #6
                clrh
                pshx
                pshh
                tsx
                aix     #6
                jsr     sub_24F2
                ais     #2
                dbnza   loc_391A
                ldhx    word_509
                cphx    7, sp
                bne     loc_3906
                lda     word_507+1
                tsx
                cmp     5, x
                bne     loc_3906
                lda     word_507
                cmp     4, x
                beq     loc_391A

loc_3906:                               ; CODE XREF: sub_3880+75↑j
                                        ; sub_3880+7D↑j
                ldx     #6
                clrh
                pshx
                pshh
                ldhx    word_509
                pshx
                pshh
                ldhx    word_507
                pshx
                pshh
                jsr     loc_251B
                ais     #6

loc_391A:                               ; CODE XREF: sub_3880+6D↑j
                                        ; sub_3880+84↑j
                ais     #8
                rts
; End of function sub_3880


; =============== S U B R O U T I N E =======================================


sub_391D:                               ; CODE XREF: sub_3A01+5↓P
                jsr     loc_3A0E
                cbeqa   #6, loc_392A
                jsr     loc_3A0E
                cmp     #5
                bne     loc_3931

loc_392A:                               ; CODE XREF: sub_391D+3↑j
                jsr     sub_39FC
                bset    3, byte_6
                bra     loc_3947
; ---------------------------------------------------------------------------

loc_3931:                               ; CODE XREF: sub_391D+B↑j
                jsr     loc_3A0E
                cmp     #2
                bne     loc_3954
                jsr     sub_39FC
                lda     word_517
                bpl     loc_394E
                jsr     sub_39DD
                beq     loc_394A
                bclr    3, byte_6

loc_3947:                               ; CODE XREF: sub_391D+12↑j
                bclr    1, byte_6
                rts
; ---------------------------------------------------------------------------

loc_394A:                               ; CODE XREF: sub_391D+26↑j
                jsr     sub_39EE
                skip2

loc_394E:                               ; CODE XREF: sub_391D+21↑j
                bset    3, byte_6
                jsr     sub_39F5
                rts
; ---------------------------------------------------------------------------

loc_3954:                               ; CODE XREF: sub_391D+19↑j
                jsr     loc_3A0E
                cmp     #3
                bne     loc_3963
                jsr     sub_39FC
                bset    3, byte_6
                bset    1, byte_6
                rts
; ---------------------------------------------------------------------------

loc_3963:                               ; CODE XREF: sub_391D+3C↑j
                jsr     loc_3A0E
                cmp     #4
                bne     locret_39DC
                ldhx    #$50E
                inc     , x
                lda     byte_51A
                bit     #1
                bne     loc_39B6
                bit     #2
                beq     loc_3992
                lda     byte_50E
                cmp     #3
                bcs     loc_39D3
                bsr     sub_39FC
                bsr     sub_39DD
                beq     loc_398C
                bclr    3, byte_6
                bclr    1, byte_6
                bra     loc_39D3
; ---------------------------------------------------------------------------

loc_398C:                               ; CODE XREF: sub_391D+67↑j
                bsr     sub_39EE
                bsr     sub_39F5
                bra     loc_39D3
; ---------------------------------------------------------------------------

loc_3992:                               ; CODE XREF: sub_391D+5A↑j
                bit     #4
                beq     loc_39AB
                bsr     sub_39FC
                lda     byte_50F
                bne     loc_39A3
                bsr     sub_39EE
                lda     #1
                bra     loc_39A6
; ---------------------------------------------------------------------------

loc_39A3:                               ; CODE XREF: sub_391D+7E↑j
                bsr     sub_39F5
                clra

loc_39A6:                               ; CODE XREF: sub_391D+84↑j
                sta     byte_50F
                bra     loc_39D3
; ---------------------------------------------------------------------------

loc_39AB:                               ; CODE XREF: sub_391D+77↑j
                bit     #8
                beq     loc_39BE
                lda     byte_50E
                cmp     #3
                bcs     loc_39D3

loc_39B6:                               ; CODE XREF: sub_391D+56↑j
                bsr     sub_39FC
                bsr     sub_39EE
                bset    1, byte_6
                bra     loc_39D3
; ---------------------------------------------------------------------------

loc_39BE:                               ; CODE XREF: sub_391D+90↑j
                lda     word_517
                bpl     loc_39D3
                bsr     sub_39FC
                bsr     sub_39DD
                beq     loc_39CF
                bclr    3, byte_6
                bclr    1, byte_6
                bra     loc_39D3
; ---------------------------------------------------------------------------

loc_39CF:                               ; CODE XREF: sub_391D+AA↑j
                bsr     sub_39EE
                bsr     sub_39F5

loc_39D3:                               ; CODE XREF: sub_391D+61↑j
                                        ; sub_391D+6D↑j ...
                lda     byte_50E
                cmp     #3
                bls     locret_39DC
                bsr     sub_39FC

locret_39DC:                            ; CODE XREF: sub_391D+4B↑j
                                        ; sub_391D+BB↑j
                rts
; End of function sub_391D


; =============== S U B R O U T I N E =======================================


sub_39DD:                               ; CODE XREF: sub_391D+23↑P
                                        ; sub_391D+65↑p ...
                lda     byte_6
                and     #8
                lsra
                lsra
                lsra
                psha
                lda     byte_6
                and     #2
                lsra
                tsx
                cmp     , x
                pula
                rts
; End of function sub_39DD


; =============== S U B R O U T I N E =======================================


sub_39EE:                               ; CODE XREF: sub_391D:loc_394A↑P
                                        ; sub_391D:loc_398C↑p ...
                lda     byte_6
                eor     #8
                sta     byte_6
                rts
; End of function sub_39EE


; =============== S U B R O U T I N E =======================================


sub_39F5:                               ; CODE XREF: sub_391D+33↑P
                                        ; sub_391D+71↑p ...
                lda     byte_6
                eor     #2
                sta     byte_6
                rts
; End of function sub_39F5


; =============== S U B R O U T I N E =======================================


sub_39FC:                               ; CODE XREF: sub_391D:loc_392A↑P
                                        ; sub_391D+1B↑P ...
                clra
                sta     byte_50E
                rts
; End of function sub_39FC


; =============== S U B R O U T I N E =======================================


sub_3A01:                               ; CODE XREF: rst+1A4↑P
                lda     byte_3D7
                dbnza   locret_3A0D
                jsr     sub_391D
                clra
                sta     byte_3D7

locret_3A0D:                            ; CODE XREF: sub_3A01+3↑j
                rts
; End of function sub_3A01

; ---------------------------------------------------------------------------

loc_3A0E:                               ; CODE XREF: sub_391D↑P
                                        ; sub_391D+6↑P ...
                ais     #-3
                lda     #6
                tsx
                sta     2, x
                ldhx    word_4E6
                cphx    #0
                beq     loc_3A72
                pshh
                pula
                tsta
                jsr     sub_1E46
                stx     6, sp
                sta     5, sp
                jsr     sub_1E55
                blt     loc_3A3F
                cphx    #7
                blt     loc_3A65
                beq     loc_3A69
                cphx    #$B
                blt     loc_3A3F
                cphx    #$D
                ble     loc_3A6D

loc_3A3F:                               ; CODE XREF: ROM:3A2C↑j
                                        ; ROM:3A38↑j
                ldhx    1, sp
                cphx    #$F
                blt     loc_3A55+1
                cphx    #$11
                bgt     loc_3A55+1
                aix     #-$F
                pshh
                pula
                jsr     sub_1DDA
                bclr    0, byte_10

loc_3A55:                               ; CODE XREF: ROM:3A45↑j
                                        ; ROM:3A4A↑j
                bclr    3, byte_9E
                ldx     , x
                brclr   0, byte_65, *+3

loc_3A5B:                               ; CODE XREF: ROM:3A58↑j
                brset   4, byte_27, loc_3A6D
                cphx    #9
                bne     loc_3A75
                bra     loc_3A70
; ---------------------------------------------------------------------------

loc_3A65:                               ; CODE XREF: ROM:3A31↑j
                lda     #5
                bra     loc_3A72
; ---------------------------------------------------------------------------

loc_3A69:                               ; CODE XREF: ROM:3A33↑j
                lda     #2
                bra     loc_3A72
; ---------------------------------------------------------------------------

loc_3A6D:                               ; CODE XREF: ROM:3A3D↑j
                                        ; ROM:loc_3A5B↑j
                lda     #4
                skip2

loc_3A70:                               ; CODE XREF: ROM:3A63↑j
                lda     #3

loc_3A72:                               ; CODE XREF: ROM:3A1B↑j
                                        ; ROM:3A67↑j ...
                tsx
                sta     2, x

loc_3A75:                               ; CODE XREF: ROM:3A61↑j
                tsx
                lda     2, x
                ais     #3
                rts

; =============== S U B R O U T I N E =======================================


sub_3A7B:                               ; CODE XREF: sub_3CF8+5↓P
                                        ; ROM:loc_3EE8↓P ...
                lda     byte_4B4
                cbeqa   #1, locret_3A82
                clra

locret_3A82:                            ; CODE XREF: sub_3A7B+3↑j
                rts
; End of function sub_3A7B


; =============== S U B R O U T I N E =======================================


sub_3A83:                               ; CODE XREF: sub_3CC6+26↓P
                                        ; ROM:loc_3F1C↓P ...
                pshx
                cpx     #1
                bne     loc_3AC6
                ldhx    #$510
                inc     1, x
                bne     loc_3A90
                inc     , x

loc_3A90:                               ; CODE XREF: sub_3A83+A↑j
                bset    2, byte_A
                ldhx    word_510
                cphx    #$64 ; 'd'
                bcs     loc_3AA1
                bset    3, byte_A
                clrx
                clrh
                sthx    word_510

loc_3AA1:                               ; CODE XREF: sub_3A83+15↑j
                cmp     #1
                bne     loc_3AAC
                clra
                psha
                jsr     sub_3B36
                bra     loc_3AC4
; ---------------------------------------------------------------------------

loc_3AAC:                               ; CODE XREF: sub_3A83+20↑j
                cmp     #2
                bne     loc_3AB9
                clra
                psha
                lda     #2
                ldhx    #$960
                bra     loc_3B30
; ---------------------------------------------------------------------------

loc_3AB9:                               ; CODE XREF: sub_3A83+2B↑j
                cmp     #3
                bne     loc_3B34
                clra
                psha
                lda     #2
                ldhx    #$42CC

loc_3AC4:                               ; CODE XREF: sub_3A83+27↑j
                bra     loc_3B30
; ---------------------------------------------------------------------------

loc_3AC6:                               ; CODE XREF: sub_3A83+3↑j
                tst     1, sp
                bne     loc_3AF3
                bclr    2, byte_A
                bclr    3, byte_A
                cmp     #1
                bne     loc_3AD9
                clra
                psha
                bsr     sub_3B36
                bra     loc_3B19
; ---------------------------------------------------------------------------

loc_3AD9:                               ; CODE XREF: sub_3A83+4E↑j
                cmp     #2
                bne     loc_3AE6
                clra
                psha
                lda     #2
                ldhx    #$960
                bra     loc_3B19
; ---------------------------------------------------------------------------

loc_3AE6:                               ; CODE XREF: sub_3A83+58↑j
                cmp     #3
                bne     loc_3B1D
                clra
                psha
                lda     #2
                ldhx    #$42CC
                bra     loc_3B19
; ---------------------------------------------------------------------------

loc_3AF3:                               ; CODE XREF: sub_3A83+46↑j
                cpx     #4
                bne     loc_3B24
                cmp     #1
                bne     loc_3B01
                clra
                psha
                bsr     sub_3B36
                bra     loc_3B19
; ---------------------------------------------------------------------------

loc_3B01:                               ; CODE XREF: sub_3A83+76↑j
                cmp     #2
                bne     loc_3B0E
                clra
                psha
                lda     #2
                ldhx    #$960
                bra     loc_3B19
; ---------------------------------------------------------------------------

loc_3B0E:                               ; CODE XREF: sub_3A83+80↑j
                cmp     #3
                bne     loc_3B1D
                clra
                psha
                lda     #2
                ldhx    #$42CC

loc_3B19:                               ; CODE XREF: sub_3A83+54↑j
                                        ; sub_3A83+61↑j ...
                jsr     sub_2DE1
                pulh

loc_3B1D:                               ; CODE XREF: sub_3A83+65↑j
                                        ; sub_3A83+8D↑j
                clrx
                clrh
                sthx    word_510
                pulh
                rts
; ---------------------------------------------------------------------------

loc_3B24:                               ; CODE XREF: sub_3A83+72↑j
                clrx
                clrh
                sthx    word_510
                bclr    2, byte_A
                bclr    3, byte_A
                pshx
                bsr     sub_3B36

loc_3B30:                               ; CODE XREF: sub_3A83+34↑j
                                        ; sub_3A83:loc_3AC4↑j
                jsr     sub_2DE1
                pulh

loc_3B34:                               ; CODE XREF: sub_3A83+38↑j
                pulh
                rts
; End of function sub_3A83


; =============== S U B R O U T I N E =======================================


sub_3B36:                               ; CODE XREF: sub_3A83+24↑P
                                        ; sub_3A83+52↑p ...
                lda     #2
                ldhx    #$4650
                rts
; End of function sub_3B36


; =============== S U B R O U T I N E =======================================


sub_3B3C:                               ; CODE XREF: ROM:loc_3DB2↓P
                                        ; ROM:loc_3F05↓P ...
                lda     byte_4FB
                cbeqa   #1, locret_3B43
                clra

locret_3B43:                            ; CODE XREF: sub_3B3C+3↑j
                rts
; End of function sub_3B3C


; =============== S U B R O U T I N E =======================================


sub_3B44:                               ; CODE XREF: sub_4119↓P
                lda     byte_4F8
                cbeqa   #1, locret_3B4B
                clra

locret_3B4B:                            ; CODE XREF: sub_3B44+3↑j
                rts
; End of function sub_3B44


; =============== S U B R O U T I N E =======================================


sub_3B4C:                               ; CODE XREF: sub_4132↓P
                lda     byte_4F9
                cbeqa   #1, locret_3B53
                clra

locret_3B53:                            ; CODE XREF: sub_3B4C+3↑j
                rts
; End of function sub_3B4C


; =============== S U B R O U T I N E =======================================


sub_3B54:                               ; CODE XREF: sub_4104↓P
                lda     byte_4FA
                cbeqa   #1, locret_3B5B
                clra

locret_3B5B:                            ; CODE XREF: sub_3B54+3↑j
                rts
; End of function sub_3B54


; =============== S U B R O U T I N E =======================================


sub_3B5C:                               ; CODE XREF: sub_2EEB+7↑P
                cphx    #$8CC
                bls     loc_3B64
                lda     #1
                rts
; ---------------------------------------------------------------------------

loc_3B64:                               ; CODE XREF: sub_3B5C+3↑j
                clra
                rts
; End of function sub_3B5C


; =============== S U B R O U T I N E =======================================


sub_3B66:                               ; CODE XREF: ROM:2CBE↑P
                ais     #-$16
                clrx
                clrh
                sthx    9, sp
                sthx    7, sp
                sthx    $D, sp
                sthx    $B, sp
                sthx    $11, sp
                sthx    $F, sp
                sthx    $15, sp
                sthx    $13, sp
                ldhx    word_4F6
                sthx    4, sp
                ldhx    word_4F4
                sthx    2, sp
                ldhx    word_4F6
                sthx    9, sp
                ldhx    word_4F4
                sthx    7, sp
                ldhx    word_4EA
                sthx    $D, sp
                ldhx    word_4E8
                sthx    $B, sp
                ldhx    word_4EE
                sthx    $11, sp
                ldhx    word_4EC
                sthx    $F, sp
                ldhx    word_4F2
                sthx    $15, sp
                ldhx    word_4F0
                sthx    $13, sp
                tsx
                clr     5, x

loc_3BC1:                               ; CODE XREF: sub_3B66+99↓j
                lda     5, x
                asla
                asla
                aix     #6
                sta     1, sp
                psha
                jsr     sub_3CBB
                tsx
                aix     #2
                pshx
                pshh
                psha
                tsx
                ldx     3, x
                pulh
                jsr     sub_1D84
                pulh
                bls     loc_3BF8
                tsx
                aix     #6
                lda     1, sp
                psha
                jsr     sub_3CBB
                tsx
                aix     #2
                pshx
                pshh
                psha
                tsx
                ldx     3, x
                pulh
                lda     #4
                jsr     sub_1D90
                pulh

loc_3BF8:                               ; CODE XREF: sub_3B66+76↑j
                tsx
                inc     5, x
                lda     5, x
                cmp     #4
                bcs     loc_3BC1
                ldhx    4, sp
                sthx    word_514
                pshx
                pshh
                ldhx    4, sp
                sthx    word_512
                pulh
                pulx
                cphx    word_4F2
                bne     loc_3C2B
                lda     word_4F0+1
                tsx
                cmp     2, x
                bne     loc_3C2B
                lda     word_4F0
                cmp     1, x
                bne     loc_3C2B
                jsr     sub_3CB3
                inca
                bra     loc_3C6A
; ---------------------------------------------------------------------------

loc_3C2B:                               ; CODE XREF: sub_3B66+AE↑j
                                        ; sub_3B66+B6↑j ...
                ldhx    word_4EE
                cphx    4, sp
                bne     loc_3C49
                lda     word_4EC+1
                tsx
                cmp     2, x
                bne     loc_3C49
                lda     word_4EC
                cmp     1, x
                bne     loc_3C49
                clra
                sta     byte_4F8
                inca
                bra     loc_3C66
; ---------------------------------------------------------------------------

loc_3C49:                               ; CODE XREF: sub_3B66+CB↑j
                                        ; sub_3B66+D3↑j ...
                ldhx    word_4EA
                cphx    4, sp
                bne     loc_3C70
                lda     word_4E8+1
                tsx
                cmp     2, x
                bne     loc_3C70
                lda     word_4E8
                cmp     1, x
                bne     loc_3C70
                lda     #1
                sta     byte_4F8
                clra

loc_3C66:                               ; CODE XREF: sub_3B66+E1↑j
                sta     byte_4F9
                clra

loc_3C6A:                               ; CODE XREF: sub_3B66+C3↑j
                sta     byte_4FA
                clra
                bra     loc_3C93
; ---------------------------------------------------------------------------

loc_3C70:                               ; CODE XREF: sub_3B66+E9↑j
                                        ; sub_3B66+F1↑j ...
                ldhx    word_4F6
                cphx    4, sp
                bne     loc_3C8B
                lda     word_4F4+1
                tsx
                cmp     2, x
                bne     loc_3C8B
                lda     word_4F4
                cmp     1, x
                bne     loc_3C8B
                bsr     sub_3CB3
                bra     loc_3C8E
; ---------------------------------------------------------------------------

loc_3C8B:                               ; CODE XREF: sub_3B66+110↑j
                                        ; sub_3B66+118↑j ...
                bsr     sub_3CB3
                inca

loc_3C8E:                               ; CODE XREF: sub_3B66+123↑j
                sta     byte_4FA
                lda     #1

loc_3C93:                               ; CODE XREF: sub_3B66+108↑j
                sta     byte_4FB
                clrx
                clrh
                sthx    word_4F6
                sthx    word_4F4
                sthx    word_4EA
                sthx    word_4E8
                sthx    word_4EE
                sthx    word_4EC
                sthx    word_4F2
                sthx    word_4F0
                ais     #$16
                rts
; End of function sub_3B66


; =============== S U B R O U T I N E =======================================


sub_3CB3:                               ; CODE XREF: sub_3B66+BF↑P
                                        ; sub_3B66+121↑p ...
                clra
                sta     byte_4F8
                sta     byte_4F9
                rts
; End of function sub_3CB3


; =============== S U B R O U T I N E =======================================


sub_3CBB:                               ; CODE XREF: sub_3B66+65↑P
                                        ; sub_3B66+7F↑P
                txa
                pshh
                tsx
                add     3, x
                sta     3, x
                pula
                adc     #0
                rts
; End of function sub_3CBB


; =============== S U B R O U T I N E =======================================


sub_3CC6:                               ; CODE XREF: rst+19B↑P
                clrx
                clrh
                sthx    word_4FE
                sthx    word_4FC
                sthx    word_50B
                sthx    unk_519
                sthx    word_517
                stx     byte_501
                stx     byte_500
                stx     byte_502
                stx     byte_4BC
                jsr     sub_2EAC
                jsr     sub_2ED9
                clrx
                lda     #1
                jsr     sub_3A83
                clra
                jsr     sub_4192
                bclr    1, byte_6
                bset    3, byte_6
                rts
; End of function sub_3CC6


; =============== S U B R O U T I N E =======================================


sub_3CF8:                               ; CODE XREF: ROM:3DA2↓P
                pshh
                lda     #1
                tsx
                sta     , x
                jsr     sub_3A7B
                dbnza   loc_3D0D
                ldhx    #$51A
                lda     , x
                ora     #2
                sta     , x
                ldx     #2
                bsr     sub_3D41

loc_3D0D:                               ; CODE XREF: sub_3CF8+8↑j
                lda     byte_4BB
                dbnza   loc_3D1D
                ldhx    #$51A
                lda     , x
                ora     #4

loc_3D18:                               ; CODE XREF: ROM:3D76↓j
                sta     , x
                ldx     #4
                bsr     sub_3D41

loc_3D1D:                               ; CODE XREF: sub_3CF8+18↑j
                clrx
                clrh
                jsr     sub_36D1
                cphx    #1
                bne     loc_3D3D
                ldhx    #$51A
                lda     , x
                ora     #1
                sta     , x
                ldx     #1
                clrh
                pshx
                pshh
                clra
                psha
                psha
                jsr     sub_4481
                ais     #4
                tsx
                clr     , x

loc_3D3D:                               ; CODE XREF: sub_3CF8+2D↑j
                tsx
                lda     , x
                pulh
                rts
; End of function sub_3CF8


; =============== S U B R O U T I N E =======================================


sub_3D41:                               ; CODE XREF: sub_3CF8+13↑p
                                        ; sub_3CF8+23↑p
                clrh
                pshx
                pshh
                pshh
                pshh
                jsr     sub_4481
                ais     #4
                tsx
                clr     2, x
                rts
; End of function sub_3D41

; ---------------------------------------------------------------------------

loc_3D4F:                               ; CODE XREF: ROM:2C9A↑P
                ldhx    word_4E6
                pshh
                pula
                jsr     sub_1DF3
                brset   0, byte_12, loc_3D9A
                txa
                tst     byte_7F
                nega
                txa
                tst     byte_9E
                nega
                txa
                cphx    word_893D
                bit     $3E, x
                ora     byte_3F43
                nega
                daa
                nega
                pula
                nega
                txa
                clr     byte_D0
                nega
                ldhx    word_3E
                cbeqx   #$40, loc_3D18 ; '@'
                tst     byte_8E
                cphx    word_A740
                brclr   3, byte_CD, loc_3DBC+1
                lda     byte_AE0F
                clrh
                sthx    word_4E6
                lda     #1
                sta     byte_50D
                rts
; ---------------------------------------------------------------------------
                fcb $CD
                fcb $40 ; @
                fcb $AB
                fcb $CD
                fcb $40 ; @
                fcb $B5
                fcb $23 ; #
                fcb $4E ; N
                fcb $CD
                fcb $40 ; @
                fcb $A5
                fcb $AE
; ---------------------------------------------------------------------------

loc_3D9A:                               ; CODE XREF: ROM:3D57↑j
                brset   1, byte_CC, loc_3DD9+2
                psha
                clra
                sta     byte_50D
                jsr     sub_3CF8
                tsta
                bne     loc_3DB2
                jsr     sub_40A5
                stx     byte_4BB
                lda     #1
                bra     loc_3DC9
; ---------------------------------------------------------------------------

loc_3DB2:                               ; CODE XREF: ROM:3DA6↑j
                jsr     sub_3B3C
                dbnza   loc_3DCC
                ldhx    #$50B
                inc     1, x

loc_3DBC:                               ; CODE XREF: ROM:3D7E↑j
                bne     loc_3DBF
                inc     , x

loc_3DBF:                               ; CODE XREF: ROM:loc_3DBC↑j
                jsr     sub_412B
                bls     locret_3E3B
                jsr     sub_40CA
                lda     #1

loc_3DC9:                               ; CODE XREF: ROM:3DB0↑j
                jmp     loc_3F1C
; ---------------------------------------------------------------------------

loc_3DCC:                               ; CODE XREF: ROM:3DB5↑j
                jsr     sub_4132
                beq     loc_3DD6
                jsr     sub_4119
                bne     loc_3DDC

loc_3DD6:                               ; CODE XREF: ROM:3DCF↑j
                jsr     sub_40A5

loc_3DD9:                               ; CODE XREF: ROM:loc_3D9A↑j
                jmp     loc_3E84
; ---------------------------------------------------------------------------

loc_3DDC:                               ; CODE XREF: ROM:3DD4↑j
                clrx
                clrh
                sthx    word_50B

loc_3DE1:                               ; CODE XREF: ROM:405F↓J
                                        ; ROM:4068↓J ...
                jsr     sub_40E2
                rts
; ---------------------------------------------------------------------------
                lda     #1
                jsr     sub_4192
                jsr     sub_40AB
                jsr     sub_4104
                bne     loc_3DF5
                jmp     loc_3E8C
; ---------------------------------------------------------------------------

loc_3DF5:                               ; CODE XREF: ROM:3DF0↑j
                ldx     #1
                clrh
                jsr     sub_36D1
                lda     #1
                psha
                clra
                psha
                txa
                pshh
                pulx
                jsr     sub_1CF8
                bne     loc_3E3C
                lda     byte_4BC
                dbnza   loc_3E11
                ldx     #4
                bra     loc_3E27
; ---------------------------------------------------------------------------

loc_3E11:                               ; CODE XREF: ROM:3E0B↑j
                ldhx    #$517
                lda     , x
                ora     #$80
                sta     , x
                clra
                psha
                psha
                ldhx    #$8000
                pshx
                pshh
                jsr     sub_4481
                ais     #4
                ldx     #$10

loc_3E27:                               ; CODE XREF: ROM:3E0F↑j
                clrh
                sthx    word_4E6
                clra
                jsr     sub_4192
                jsr     sub_40E2
                stx     byte_4BB
                stx     byte_4BC
                stx     byte_50D

locret_3E3B:                            ; CODE XREF: ROM:3DC2↑j
                rts
; ---------------------------------------------------------------------------

loc_3E3C:                               ; CODE XREF: ROM:3E06↑j
                jsr     sub_40B5
                bls     locret_3E61
                clra
                jsr     sub_4192
                jsr     sub_40E2
                ldx     #$D
                sthx    word_4E6
                jsr     sub_410A
                rts
; ---------------------------------------------------------------------------
                jsr     sub_40AB
                jsr     sub_4104
                bne     loc_3E62
                jsr     sub_4138
                ldx     #4
                jsr     loc_40BE+2

locret_3E61:                            ; CODE XREF: ROM:3E3F↑j
                rts
; ---------------------------------------------------------------------------

loc_3E62:                               ; CODE XREF: ROM:3E57↑j
                lda     byte_502
                cmp     #5
                bls     loc_3E71
                jsr     sub_40E2
                ldx     #4
                jmp     loc_3F64
; ---------------------------------------------------------------------------

loc_3E71:                               ; CODE XREF: ROM:3E67↑j
                jsr     sub_40B5
                bhi     loc_3E79
                jmp     loc_3F15
; ---------------------------------------------------------------------------

loc_3E79:                               ; CODE XREF: ROM:3E74↑j
                ldhx    #$502
                inc     , x
                jsr     sub_40E2
                clra
                jsr     sub_4192

loc_3E84:                               ; CODE XREF: ROM:loc_3DD9↑J
                ldx     #5
                clrh
                bra     loc_3EF3
; ---------------------------------------------------------------------------
                fcb $CD
                fcb $41 ; A
                fcb   4
; ---------------------------------------------------------------------------

loc_3E8C:                               ; CODE XREF: ROM:3DF2↑J
                beq     loc_3ECD
                jsr     sub_4132
                beq     loc_3E99
                jsr     sub_4119
                beq     loc_3E99
                rts
; ---------------------------------------------------------------------------

loc_3E99:                               ; CODE XREF: ROM:3E91↑j
                                        ; ROM:3E96↑j
                jsr     sub_40A5
                stx     byte_4BB
                pshx
                lda     #2
                ldhx    #$960
                bra     loc_3EC3
; ---------------------------------------------------------------------------
                jsr     sub_4104
                beq     loc_3ECD
                jsr     sub_4132
                beq     loc_3EB7
                jsr     sub_4119
                beq     loc_3EB7
                rts
; ---------------------------------------------------------------------------

loc_3EB7:                               ; CODE XREF: ROM:3EAF↑j
                                        ; ROM:3EB4↑j
                jsr     sub_40A5
                stx     byte_4BB
                pshx
                lda     #2
                ldhx    #$42CC

loc_3EC3:                               ; CODE XREF: ROM:3EA5↑j
                jsr     sub_2DE1
                pulh
                jmp     loc_409B
; ---------------------------------------------------------------------------
                fcb $CD
                fcb $41 ; A
                fcb   4
; ---------------------------------------------------------------------------

loc_3ECD:                               ; CODE XREF: ROM:loc_3E8C↑j
                                        ; ROM:3EAA↑j
                beq     loc_3F4D
                lda     byte_4BB
                dbnza   loc_3EE8
                jsr     sub_40A5
                stx     byte_4BB
                jsr     sub_410A
                ldx     #4
                jsr     loc_40BE+2
                jsr     sub_4113
                jmp     loc_4029
; ---------------------------------------------------------------------------

loc_3EE8:                               ; CODE XREF: ROM:3ED2↑j
                jsr     sub_3A7B
                dbnza   loc_3EF5
                jsr     sub_40A5
                jsr     sub_40EB

loc_3EF3:                               ; CODE XREF: ROM:3E87↑j
                bra     loc_3F38
; ---------------------------------------------------------------------------

loc_3EF5:                               ; CODE XREF: ROM:3EEB↑j
                jsr     sub_413E
                bne     loc_3F05
                jsr     sub_40A5
                jsr     sub_40FF
                jsr     sub_4147
                bra     loc_3F75
; ---------------------------------------------------------------------------

loc_3F05:                               ; CODE XREF: ROM:3EF8↑j
                jsr     sub_3B3C
                dbnza   loc_3F24
                ldhx    #$50B
                inc     1, x
                bne     loc_3F12
                inc     , x

loc_3F12:                               ; CODE XREF: ROM:3F0F↑j
                jsr     sub_412B

loc_3F15:                               ; CODE XREF: ROM:3E76↑J
                bls     locret_3F42
                jsr     sub_40CA
                lda     #4

loc_3F1C:                               ; CODE XREF: ROM:loc_3DC9↑J
                jsr     sub_3A83
                ldx     #$C
                clrh
                bra     loc_3F78
; ---------------------------------------------------------------------------

loc_3F24:                               ; CODE XREF: ROM:3F08↑j
                jsr     sub_4119
                bne     loc_3F3A
                jsr     sub_40B5
                bls     loc_3F3A
                ldx     #1
                jsr     sub_40FF
                jsr     sub_40A5
                ldx     #7

loc_3F38:                               ; CODE XREF: ROM:loc_3EF3↑j
                bra     loc_3F9E
; ---------------------------------------------------------------------------

loc_3F3A:                               ; CODE XREF: ROM:3F27↑j
                                        ; ROM:3F2C↑j
                clrx
                clrh
                sthx    word_50B
                jsr     sub_40AB

locret_3F42:                            ; CODE XREF: ROM:loc_3F15↑j
                rts
; ---------------------------------------------------------------------------
byte_3F43:      fcb $AE                 ; DATA XREF: ROM:3D68↑r
                fcb   1
                fcb $CD
                fcb $40 ; @
                fcb $DD
                fcb $26 ; &
                fcb   6
                fcb $CD
                fcb $41 ; A
                fcb $13
; ---------------------------------------------------------------------------

loc_3F4D:                               ; CODE XREF: ROM:loc_3ECD↑j
                jmp     loc_409F
; ---------------------------------------------------------------------------
                lda     byte_4BB
                dbnza   loc_3F67
                jsr     sub_40A5
                jsr     sub_410A
                stx     byte_4BB
                jsr     sub_40FF
                ldx     #4
                clrh

loc_3F64:                               ; CODE XREF: ROM:3E6E↑J
                jmp     loc_3FF1
; ---------------------------------------------------------------------------

loc_3F67:                               ; CODE XREF: ROM:3F53↑j
                jsr     sub_413E
                bne     loc_3F7A
                jsr     sub_40A5
                jsr     sub_4147
                jsr     sub_40FF

loc_3F75:                               ; CODE XREF: ROM:3F03↑j
                ldx     #$11
                clrh

loc_3F78:                               ; CODE XREF: ROM:3F22↑j
                bra     loc_3FCA
; ---------------------------------------------------------------------------

loc_3F7A:                               ; CODE XREF: ROM:3F6A↑j
                jsr     sub_3B3C
                dbnza   loc_3FA0
                ldhx    #$50B
                inc     1, x
                bne     loc_3F87
                inc     , x

loc_3F87:                               ; CODE XREF: ROM:3F84↑j
                jsr     sub_412B
                bls     locret_3FE1
                jsr     sub_4150
                jsr     sub_411F
                jsr     sub_40FF
                ldx     #8
                clrh
                jsr     loc_40BE+2
                ldx     #$C
                clrh

loc_3F9E:                               ; CODE XREF: ROM:loc_3F38↑j
                bra     loc_3FCA
; ---------------------------------------------------------------------------

loc_3FA0:                               ; CODE XREF: ROM:3F7D↑j
                jsr     sub_4132
                bne     loc_3FBF
                jsr     sub_40AB
                ldhx    #$4FC
                jsr     sub_1D8A
                brset   0, byte_0, loc_3FB2
                and     , x

loc_3FB2:                               ; CODE XREF: ROM:3FAE↑j
                bls     locret_4017
                jsr     sub_40A5
                jsr     sub_40FF
                ldx     #9
                clrh
                bra     loc_402C
; ---------------------------------------------------------------------------

loc_3FBF:                               ; CODE XREF: ROM:3FA3↑j
                jsr     sub_3A7B
                dbnza   loc_3FCC
                jsr     sub_40A5
                jsr     sub_40EB

loc_3FCA:                               ; CODE XREF: ROM:loc_3F78↑j
                                        ; ROM:loc_3F9E↑j
                bra     loc_402C
; ---------------------------------------------------------------------------

loc_3FCC:                               ; CODE XREF: ROM:3FC2↑j
                jsr     sub_40A5
                rts
; ---------------------------------------------------------------------------
                jsr     sub_40AB
                clrx
                jsr     sub_40DD
                bne     loc_3FE2
                jsr     sub_4138
                ldx     #2
                jsr     loc_40BE+2

locret_3FE1:                            ; CODE XREF: ROM:3F8A↑j
                rts
; ---------------------------------------------------------------------------

loc_3FE2:                               ; CODE XREF: ROM:3FD7↑j
                lda     byte_500
                cmp     #$A
                bls     loc_3FF3
                jsr     sub_4113
                jsr     sub_40A5
                ldx     #2

loc_3FF1:                               ; CODE XREF: ROM:loc_3F64↑J
                bra     loc_4026
; ---------------------------------------------------------------------------

loc_3FF3:                               ; CODE XREF: ROM:3FE7↑j
                ldhx    #$4FC
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_3FFC:                               ; CODE XREF: ROM:3FF9↑j
                ora     , x
                bls     locret_4071
                jsr     sub_40A5
                ldhx    #$500
                bra     loc_4052
; ---------------------------------------------------------------------------
                jsr     sub_40AB
                clrx
                jsr     sub_40DD
                bne     loc_4018
                jsr     sub_4138
                incx
                jsr     loc_40BE+2

locret_4017:                            ; CODE XREF: ROM:loc_3FB2↑j
                rts
; ---------------------------------------------------------------------------

loc_4018:                               ; CODE XREF: ROM:400E↑j
                lda     byte_501
                cmp     #$1E
                bcs     loc_402E
                jsr     sub_4113
                jsr     sub_40A5
                incx

loc_4026:                               ; CODE XREF: ROM:loc_3FF1↑j
                jsr     loc_40BE+2

loc_4029:                               ; CODE XREF: ROM:3EE5↑J
                ldx     #8
                clrh

loc_402C:                               ; CODE XREF: ROM:3FBD↑j
                                        ; ROM:loc_3FCA↑j
                bra     loc_40A1
; ---------------------------------------------------------------------------

loc_402E:                               ; CODE XREF: ROM:401D↑j
                ldhx    #$4FC
                jsr     sub_1D8A
                brset   0, byte_0, loc_405A
                bhcc    loc_405C
                dec     $5F, x
                clrh
                jsr     sub_36D1
                cphx    #0
                bne     locret_40A4
                sthx    word_4FE
                clrx
                clrh
                sthx    word_4FC
                sthx    word_50B
                ldhx    #$501

loc_4052:                               ; CODE XREF: ROM:4005↑j
                inc     , x
                bra     loc_4098
; ---------------------------------------------------------------------------
                clrx
                jsr     sub_40FF
; ---------------------------------------------------------------------------
                fcb $CD
; ---------------------------------------------------------------------------

loc_405A:                               ; CODE XREF: ROM:4034↑j
                inc     byte_F8

loc_405C:                               ; CODE XREF: ROM:4037↑j
                deca
                beq     loc_4062
                jmp     loc_3DE1
; ---------------------------------------------------------------------------

loc_4062:                               ; CODE XREF: ROM:405D↑j
                jsr     sub_3B3C
                tsta
                beq     loc_406B
                jmp     loc_3DE1
; ---------------------------------------------------------------------------

loc_406B:                               ; CODE XREF: ROM:4066↑j
                bsr     sub_40AB
                bsr     sub_40B5
                bhi     loc_4080

locret_4071:                            ; CODE XREF: ROM:3FFD↑j
                rts
; ---------------------------------------------------------------------------
                clrx
                bsr     sub_40DD
                beq     loc_407A
                jmp     loc_3DE1
; ---------------------------------------------------------------------------

loc_407A:                               ; CODE XREF: ROM:4075↑j
                bsr     sub_40AB
                bsr     sub_40B5
                bls     locret_40A4

loc_4080:                               ; CODE XREF: ROM:406F↑j
                jsr     sub_4138

loc_4083:                               ; CODE XREF: ROM:408E↓j
                jmp     loc_3DE1
; ---------------------------------------------------------------------------
                clrx
                bsr     sub_40DD
                beq     loc_409F
                jsr     sub_4119
                bne     loc_4083
                bsr     sub_40AB
                bsr     sub_40B5
                bls     locret_40A4
                bsr     sub_40A5

loc_4098:                               ; CODE XREF: ROM:4053↑j
                jsr     sub_2EAC

loc_409B:                               ; CODE XREF: ROM:3EC7↑J
                ldx     #6
                clrh
                skip2

loc_409F:                               ; CODE XREF: ROM:loc_3F4D↑J
                                        ; ROM:4089↑j
                clrx
                clrh

loc_40A1:                               ; CODE XREF: ROM:loc_402C↑j
                sthx    word_4E6

locret_40A4:                            ; CODE XREF: ROM:4042↑j
                                        ; ROM:407E↑j ...
                rts

; =============== S U B R O U T I N E =======================================


sub_40A5:                               ; CODE XREF: ROM:3DA8↑P
                                        ; ROM:loc_3DD6↑P ...
                bsr     sub_40E2
                sthx    word_50B
                rts
; End of function sub_40A5


; =============== S U B R O U T I N E =======================================


sub_40AB:                               ; CODE XREF: ROM:3DEA↑P
                                        ; ROM:3E51↑P ...
                ldhx    #$4FC
                jsr     sub_1D0E
                jsr     sub_1DC0
                rts
; End of function sub_40AB


; =============== S U B R O U T I N E =======================================


sub_40B5:                               ; CODE XREF: ROM:loc_3E3C↑P
                                        ; ROM:loc_3E71↑P ...
                ldhx    #$4FC
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_40BE:                               ; CODE XREF: sub_40B5+6↑j
                                        ; ROM:3E5E↑P ...
                ldhx    loc_8189
; End of function sub_40B5

                pshh
                pshh
                pshh
                jsr     sub_4481
                ais     #4
                rts

; =============== S U B R O U T I N E =======================================


sub_40CA:                               ; CODE XREF: ROM:3DC4↑P
                                        ; ROM:3F17↑P
                jsr     sub_4150
                ldx     #8
                clrh
                pshx
                pshh
                clra
                psha
                psha
                jsr     sub_4481
                ais     #4
                bsr     sub_411F
                rts
; End of function sub_40CA


; =============== S U B R O U T I N E =======================================


sub_40DD:                               ; CODE XREF: ROM:3FD4↑P
                                        ; ROM:400B↑P ...
                bsr     sub_40FF
                bsr     sub_4104
                rts
; End of function sub_40DD


; =============== S U B R O U T I N E =======================================


sub_40E2:                               ; CODE XREF: ROM:loc_3DE1↑P
                                        ; ROM:3E2F↑P ...
                clrx
                clrh
                sthx    word_4FE
                sthx    word_4FC
                rts
; End of function sub_40E2


; =============== S U B R O U T I N E =======================================


sub_40EB:                               ; CODE XREF: ROM:3EF0↑P
                                        ; ROM:3FC7↑P
                stx     byte_4B4
                stx     byte_4B3
                lda     byte_51A
                ora     #2
                sta     byte_51A
                bsr     sub_40FF
                ldx     #$B
                clrh
                rts
; End of function sub_40EB


; =============== S U B R O U T I N E =======================================


sub_40FF:                               ; CODE XREF: ROM:3EFD↑P
                                        ; ROM:3F30↑P ...
                lda     #4
                jmp     sub_3A83
; End of function sub_40FF


; =============== S U B R O U T I N E =======================================


sub_4104:                               ; CODE XREF: ROM:3DED↑P
                                        ; ROM:3E54↑P ...
                jsr     sub_3B54
                cmp     #1
                rts
; End of function sub_4104


; =============== S U B R O U T I N E =======================================


sub_410A:                               ; CODE XREF: ROM:3E4D↑P
                                        ; ROM:3EDA↑P ...
                lda     byte_51A
                ora     #4
                sta     byte_51A
                rts
; End of function sub_410A


; =============== S U B R O U T I N E =======================================


sub_4113:                               ; CODE XREF: ROM:3EE2↑P
                                        ; ROM:3FE9↑P ...
                clrx
                lda     #1
                jmp     sub_3A83
; End of function sub_4113


; =============== S U B R O U T I N E =======================================


sub_4119:                               ; CODE XREF: ROM:3DD1↑P
                                        ; ROM:3E93↑P ...
                jsr     sub_3B44
                cmp     #1
                rts
; End of function sub_4119


; =============== S U B R O U T I N E =======================================


sub_411F:                               ; CODE XREF: ROM:3F8F↑P
                                        ; sub_40CA+10↑p
                clrx
                clrh
                sthx    word_50B
                sthx    word_4FE
                sthx    word_4FC
                rts
; End of function sub_411F


; =============== S U B R O U T I N E =======================================


sub_412B:                               ; CODE XREF: ROM:loc_3DBF↑P
                                        ; ROM:loc_3F12↑P ...
                ldhx    word_50B
                cphx    #$96
                rts
; End of function sub_412B


; =============== S U B R O U T I N E =======================================


sub_4132:                               ; CODE XREF: ROM:loc_3DCC↑P
                                        ; ROM:3E8E↑P ...
                jsr     sub_3B4C
                cmp     #1
                rts
; End of function sub_4132


; =============== S U B R O U T I N E =======================================


sub_4138:                               ; CODE XREF: ROM:3E59↑P
                                        ; ROM:3FD9↑P ...
                clrx
                clrh
                sthx    word_4E6
                rts
; End of function sub_4138


; =============== S U B R O U T I N E =======================================


sub_413E:                               ; CODE XREF: ROM:loc_3EF5↑P
                                        ; ROM:loc_3F67↑P
                clrx
                clrh
                jsr     sub_36D1
                cphx    #1
                rts
; End of function sub_413E


; =============== S U B R O U T I N E =======================================


sub_4147:                               ; CODE XREF: ROM:3F00↑P
                                        ; ROM:3F6F↑P
                lda     byte_51A
                ora     #1
                sta     byte_51A
                rts
; End of function sub_4147


; =============== S U B R O U T I N E =======================================


sub_4150:                               ; CODE XREF: ROM:3F8C↑P
                                        ; sub_40CA↑P
                ldhx    #$51A
                lda     , x
                ora     #8
                sta     , x
                rts
; End of function sub_4150


; =============== S U B R O U T I N E =======================================


sub_4158:                               ; CODE XREF: sub_1AF2↑P
                ldhx    #$1803
                lda     , x
                and     #$7F
                sta     , x
                lda     , x
                and     #$BF
                sta     , x
                ldhx    #$1802
                lda     , x
                ora     #$C0
                sta     , x
                rts
; End of function sub_4158


; =============== S U B R O U T I N E =======================================


sub_416B:                               ; CODE XREF: sub_417E↓p
                mov     #$FF, byte_1
                mov     #$FF, word_2+1
                mov     #$FF, byte_7
                mov     #$F7, byte_9
                mov     #$FF, byte_B
                mov     #$FF, byte_D
                rts
; End of function sub_416B


; =============== S U B R O U T I N E =======================================


sub_417E:                               ; CODE XREF: sub_2EA9↑J
                bsr     sub_416B
                jsr     sub_41A2
                bclr    2, byte_A
                bclr    3, byte_A
                bclr    3, byte_6
                bclr    2, byte_6
                bclr    1, byte_6
                bclr    3, byte_6
                bclr    4, word_2
                rts
; End of function sub_417E


; =============== S U B R O U T I N E =======================================


sub_4192:                               ; CODE XREF: sub_3CC6+2A↑P
                                        ; ROM:3DE7↑P ...
                sta     byte_516
                bclr    4, word_2
                rts
; End of function sub_4192


; =============== S U B R O U T I N E =======================================


Vport:
                pshh
                ldhx    #$1844
                lda     , x
                ora     #4
                sta     , x
                pulh
                rti
; End of function Vport


; =============== S U B R O U T I N E =======================================


sub_41A2:                               ; CODE XREF: sub_417E+2↑P
                clra
                psha
                ldx     #2
                pshx
                txa
                jsr     sub_2D9F
                ais     #2
                rts
; End of function sub_41A2


; =============== S U B R O U T I N E =======================================


sub_41AE:                               ; CODE XREF: sub_42F4+A2↓P
                ais     #-2
                tsx
                lda     8, x
                psha
                clra
                clrh
                pulx
                aix     #$1E
                sthx    1, sp
                aix     #-$1E
                cphx    #$A4
                bhi     loc_41D8
                tsx
                lda     1, x
                psha
                lda     , x
                psha
                ldhx    9, sp
                pshx
                pshh
                ldhx    9, sp
                pshx
                pshh
                jsr     loc_251B
                ais     #6

loc_41D8:                               ; CODE XREF: sub_41AE+13↑j
                ais     #2
                rts
; End of function sub_41AE


; =============== S U B R O U T I N E =======================================


sub_41DB:                               ; CODE XREF: sub_42F4+52↓P
                                        ; ROM:44B1↓P
                pshx
                pshh
                ais     #-4
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                ldx     #$19
                pshx
                pshh
                tsx
                aix     #2
                jsr     sub_24F2
                ais     #2
                ldhx    5, sp
                pshx
                pshh
                tsx
                aix     #2
                lda     #4
                jsr     sub_1D90
                ais     #6
                rts
; End of function sub_41DB


; =============== S U B R O U T I N E =======================================


sub_4203:                               ; CODE XREF: sub_425D+E↓p
                                        ; sub_425D+22↓P ...
                pshx
                pshh
                ais     #-6
                clrx
                clrh
                sthx    3, sp
                sthx    1, sp
                tax
                aix     #$1E
                sthx    5, sp
                cphx    #$1E
                bcs     loc_421F
                cphx    #$C2
                bls     loc_422B

loc_421F:                               ; CODE XREF: sub_4203+15↑j
                ldhx    7, sp
                clr     , x
                clr     1, x
                clr     2, x
                clr     3, x
                bra     loc_4245
; ---------------------------------------------------------------------------

loc_422B:                               ; CODE XREF: sub_4203+1A↑j
                ldhx    5, sp
                pshx
                pshh
                tsx
                aix     #2
                jsr     sub_24F2
                ais     #2
                ldhx    7, sp
                pshx
                pshh
                tsx
                aix     #2
                lda     #4
                jsr     sub_1D90

loc_4245:                               ; CODE XREF: sub_4203+26↑j
                ais     #8
                rts
; End of function sub_4203


; =============== S U B R O U T I N E =======================================


sub_4248:                               ; CODE XREF: sub_42F4+48↓P
                                        ; sub_42F4+69↓P ...
                ldx     #$19
                clrh
                pshx
                pshh
                ldhx    7, sp
                pshx
                pshh
                ldhx    7, sp
                pshx
                pshh
                jsr     loc_251B
                ais     #6
                rts
; End of function sub_4248


; =============== S U B R O U T I N E =======================================


sub_425D:                               ; CODE XREF: sub_42F4+7F↓P
                psha
                ais     #-$C
                cpx     #$1D
                bcs     loc_42A8
                cmp     #3
                bcs     loc_42A8
                tsx
                asla
                asla
                bsr     sub_4203
                tsx
                pshx
                pshh
                aix     #$F
                jsr     sub_1D84
                beq     loc_42ED
                tsx
                aix     #4
                lda     8, x
                deca
                asla
                asla
                jsr     sub_4203
                tsx
                aix     #4
                pshx
                pshh
                aix     #$B
                jsr     sub_1D84
                beq     loc_42ED
                tsx
                aix     #8
                lda     4, x
                sub     #2
                asla
                asla
                jsr     sub_4203
                tsx
                aix     #8
                pshx
                pshh
                aix     #7
                jsr     sub_1D84
                beq     loc_42ED
                bra     loc_42EF
; ---------------------------------------------------------------------------

loc_42A8:                               ; CODE XREF: sub_425D+5↑j
                                        ; sub_425D+9↑j
                cpx     #$1D
                bcs     loc_42DB
                tsx
                lda     $C, x
                cmp     #2
                bcs     loc_42DB
                asla
                asla
                jsr     sub_4203
                tsx
                pshx
                pshh
                aix     #$F
                jsr     sub_1D84
                beq     loc_42ED
                tsx
                aix     #4
                lda     8, x
                deca
                asla
                asla
                jsr     sub_4203
                tsx
                aix     #4
                pshx
                pshh
                aix     #$B
                jsr     sub_1D84
                beq     loc_42ED
                bra     loc_42EF
; ---------------------------------------------------------------------------

loc_42DB:                               ; CODE XREF: sub_425D+4D↑j
                                        ; sub_425D+54↑j
                tsx
                lda     $C, x
                asla
                asla
                jsr     sub_4203
                tsx
                pshx
                pshh
                aix     #$F
                jsr     sub_1D84
                bne     loc_42EF

loc_42ED:                               ; CODE XREF: sub_425D+18↑j
                                        ; sub_425D+2F↑j ...
                clra
                skip2

loc_42EF:                               ; CODE XREF: sub_425D+49↑j
                                        ; sub_425D+7C↑j ...
                lda     #1
                ais     #$D
                rts
; End of function sub_425D


; =============== S U B R O U T I N E =======================================


sub_42F4:                               ; CODE XREF: sub_43AA+BD↓P
                psha
                ais     #-9
                clrx
                clrh
                sthx    4, sp
                sthx    2, sp
                tsx
                clr     , x
                jsr     sub_24A4
                ldx     #$14
                clrh
                pshx
                pshh
                tsx
                aix     #3
                jsr     sub_24F2
                ais     #2
                dbnza   loc_434D
                ldhx    4, sp
                cphx    #$5B5B
                bne     loc_4323
                ldhx    2, sp
                cphx    #$5A5A
                beq     loc_4343

loc_4323:                               ; CODE XREF: sub_42F4+25↑j
                ldx     #$14
                clrh
                pshx
                pshh
                ldhx    #$5B5B
                pshx
                pshh
                ldhx    #$5A5A
                pshx
                pshh
                jsr     loc_251B
                ais     #6
                clra
                psha
                psha
                psha
                psha
                jsr     sub_4248
                ais     #4
                bra     loc_434D
; ---------------------------------------------------------------------------

loc_4343:                               ; CODE XREF: sub_42F4+2D↑j
                tsx
                aix     #5
                jsr     sub_41DB
                tsx
                lda     8, x
                sta     , x

loc_434D:                               ; CODE XREF: sub_42F4+1D↑j
                                        ; sub_42F4+4D↑j
                tsx
                tst     , x
                beq     loc_4356
                lda     , x
                cmp     #$20 ; ' '
                bcs     loc_4366

loc_4356:                               ; CODE XREF: sub_42F4+5B↑j
                ldx     #1
                clrh
                pshx
                pshh
                pshh
                pshh
                jsr     sub_4248
                ais     #4
                lda     #4
                bra     loc_438B
; ---------------------------------------------------------------------------

loc_4366:                               ; CODE XREF: sub_42F4+60↑j
                ldhx    $F, sp
                pshx
                pshh
                ldhx    $F, sp
                pshx
                pshh
                tsx
                ldx     $D, x
                jsr     sub_425D
                ais     #4
                dbnza   loc_439B
                tsx
                inc     , x
                lda     , x
                psha
                clra
                psha
                psha
                psha
                jsr     sub_4248
                ais     #4
                tsx
                lda     , x
                asla
                asla

loc_438B:                               ; CODE XREF: sub_42F4+70↑j
                psha
                ldhx    $10, sp
                pshx
                pshh
                ldhx    $10, sp
                pshx
                pshh
                jsr     sub_41AE
                ais     #5

loc_439B:                               ; CODE XREF: sub_42F4+84↑j
                jsr     sub_1E9C
                dbnza   loc_43A4
                clra
                jsr     sub_1EA0

loc_43A4:                               ; CODE XREF: sub_42F4+AA↑j
                jsr     sub_24B6
                ais     #$A
                rts
; End of function sub_42F4


; =============== S U B R O U T I N E =======================================


sub_43AA:                               ; CODE XREF: ROM:44A1↓P
                ais     #-9
                clrx
                clrh

loc_43AE:                               ; CODE XREF: sub_43AA+54↓j
                sthx    8, sp
                sthx    6, sp
                ldhx    word_51D
                sthx    4, sp
                ldhx    word_51B
                sthx    2, sp
                tsx
                lda     4, x
                ora     3, x
                ora     2, x
                ora     1, x
                bne     loc_43CE
                jmp     loc_447E
; ---------------------------------------------------------------------------

loc_43CE:                               ; CODE XREF: sub_43AA+1F↑j
                clr     , x

loc_43CF:                               ; CODE XREF: sub_43AA+D1↓J
                lda     4, x
                bit     #1
                beq     loc_443E
                ldx     , x
                cpx     #$1F
                bhi     loc_4435
                cpx     #0
                bcs     loc_4435
                cpx     #5
                bhi     loc_43EC
                clra
                jsr     sub_1DDA
                bset    4, byte_1B
                bset    7, byte_21
                bcc     loc_4413

loc_43EC:                               ; CODE XREF: sub_43AA+36↑j
                cpx     #$1D
                bcs     loc_4435
                cpx     #$1F
                bhi     loc_4435
                txa
                sub     #$1D
                tax
                clra
                jsr     sub_1DDA
                bset    5, word_23
                bmc     loc_43AE
                brclr   0, byte_20, loc_4436
                ldx     #2
                bra     loc_4436
; ---------------------------------------------------------------------------
                ldx     #4
                bra     loc_4436
; ---------------------------------------------------------------------------
                ldx     #8
                bra     loc_4436
; ---------------------------------------------------------------------------
                ldx     #$10
                bra     loc_4436
; ---------------------------------------------------------------------------

loc_4413:                               ; CODE XREF: sub_43AA+40↑j
                ldx     #$20 ; ' '
                bra     loc_4436
; ---------------------------------------------------------------------------
                clrx
                clrh
                sthx    8, sp
                ldhx    #$2000
                bra     loc_443B
; ---------------------------------------------------------------------------
                clrx
                clrh
                sthx    8, sp
                ldhx    #$4000
                bra     loc_443B
; ---------------------------------------------------------------------------
                clrx
                clrh
                sthx    8, sp
                ldhx    #$8000
                bra     loc_443B
; ---------------------------------------------------------------------------

loc_4435:                               ; CODE XREF: sub_43AA+2E↑j
                                        ; sub_43AA+32↑j ...
                clrx

loc_4436:                               ; CODE XREF: sub_43AA+56↑j
                                        ; sub_43AA+5B↑j ...
                clrh
                sthx    8, sp
                clrx

loc_443B:                               ; CODE XREF: sub_43AA+75↑j
                                        ; sub_43AA+7F↑j ...
                sthx    6, sp

loc_443E:                               ; CODE XREF: sub_43AA+29↑j
                tsx
                lda     8, x
                ora     7, x
                ora     6, x
                ora     5, x
                beq     loc_446C
                aix     #5
                jsr     sub_1D24
                tsx
                pshx
                pshh
                ldhx    #$51B
                jsr     sub_1D3A
                jsr     sub_1DC0
                ldhx    $C, sp
                pshx
                pshh
                ldhx    $C, sp
                pshx
                pshh
                tsx
                lda     8, x
                jsr     sub_42F4
                ais     #8

loc_446C:                               ; CODE XREF: sub_43AA+9D↑j
                tsx
                lsr     1, x
                ror     2, x
                ror     3, x
                ror     4, x
                inc     , x
                lda     , x
                cmp     #$20 ; ' '
                bcc     loc_447E
                jmp     loc_43CF
; ---------------------------------------------------------------------------

loc_447E:                               ; CODE XREF: sub_43AA+21↑J
                                        ; sub_43AA+CF↑j
                ais     #9
                rts
; End of function sub_43AA


; =============== S U B R O U T I N E =======================================


sub_4481:                               ; CODE XREF: ROM:3170↑P
                                        ; sub_3CF8+3E↑P ...
                tsx
                aix     #2
                pshx
                pshh
                ldhx    #$51B
                jsr     sub_1D46
                jsr     sub_1DC0
                rts
; End of function sub_4481

; ---------------------------------------------------------------------------

loc_4490:                               ; CODE XREF: rst+1B2↑P
                ais     #-5
                jsr     loc_30F3
                ldhx    #$51B
                lda     3, x
                ora     2, x
                ora     1, x
                ora     , x
                beq     loc_44A4
                jsr     sub_43AA

loc_44A4:                               ; CODE XREF: ROM:449F↑j
                lda     byte_51F
                bne     loc_450C
                lda     #1
                sta     byte_51F
                tsx
                aix     #1
                jsr     sub_41DB
                tsx
                lda     4, x
                clrh
                tax
                sthx    word_522
                clra
                clrx
                sthx    word_520
                ldhx    #$520
                jsr     sub_1D8A
                brset   0, byte_0, *+3

loc_44CA:                               ; CODE XREF: ROM:44C7↑j
                bra     loc_44EF
; ---------------------------------------------------------------------------
                brset   4, byte_8C, loc_452E
                sthx    word_522
                sthx    word_520
                inca
                tsx
                sta     , x
                bra     loc_44F9
; ---------------------------------------------------------------------------

loc_44DA:                               ; CODE XREF: ROM:450A↓j
                tsx
                aix     #1
                lda     1, sp
                asla
                asla
                jsr     sub_4203
                tsx
                lda     , x
                asla
                asla
                add     #$20 ; ' '
                psha
                clra
                adc     #5

loc_44EF:                               ; CODE XREF: ROM:loc_44CA↑j
                psha
                aix     #1
                lda     #4
                jsr     sub_1D90
                tsx
                inc     , x

loc_44F9:                               ; CODE XREF: ROM:44D8↑j
                lda     , x
                clrx
                psha
                pshx
                pshx
                pshx
                tsx
                pshx
                pshh
                ldhx    #$520

loc_4505:                               ; DATA XREF: ROM:3160↑r
                jsr     sub_1D84
                ais     #4
                bcc     loc_44DA

loc_450C:                               ; CODE XREF: ROM:44A7↑j
                ais     #5
                rts
; ---------------------------------------------------------------------------
                brset   0, byte_8, loc_4512+1

loc_4512:                               ; CODE XREF: ROM:450F↑j
                brset   0, byte_FF, *+3

loc_4515:                               ; CODE XREF: ROM:loc_4512↑j
                asl     byte_0
                nega
                ldhx    word_10D

loc_451B:                               ; CODE XREF: ROM:loc_451B↑j
                brset   0, byte_0, loc_451B+2
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x
                stx     , x

loc_452E:                               ; CODE XREF: ROM:44CC↑j
