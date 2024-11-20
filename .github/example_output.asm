;  Original filename: E.T. - The Extra-Terrestrial (USA).a26
;  Generated 2024-11-20 @ 15:15:34
;  Created using A2600Disassembler <IcePanorama/A2600Disassembler>
LABEL_0095:
  0000  AD F8 FF  LDA LABEL_0000    ; ROM address $F80F via mirror
  0003  4C 7F BC  JMP LABEL_0001    ; ROM address $7F0C via mirror
  0006  A2 04     LDX #$04          
  0008  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  000A  B5 95     LDA $95,X         ; TIM8T
  000C  A8        TAY               
LABEL_0118:
  000D  B9 00 BC  LDA LABEL_0002,Y  ; ROM address $000C via mirror
  0010  95 20     STA $20,X         ; HMP0 (W)
  0012  29 0F     AND #$0F          
  0014  A8        TAY               
  0015  88        DEY               
  0016  10 FD     BPL FD            
  0018  95 10     STA $10,X         ; RESM0 (W)
  001A  CA        DEX               
  001B  10 EB     BPL EB            
  001D  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  001F  85 2A     STA $2A           ; in TIA Addresses
  0021  68        PLA               
  0022  85 96     STA $96           ; TIM64T
  0024  AA        TAX               
  0025  BD 00 BC  LDA LABEL_0002,X  ; ROM address $000C via mirror
  0028  85 D5     STA $D5           ; in RIOT RAM
  002A  4C AB BC  JMP $ABBC         ; ROM address $AB0C via mirror
  002D  A5 E2     LDA $E2           ; in RIOT RAM
  002F  10 09     BPL 09            
  0031  29 7F     AND #$7F          
  0033  85 80     STA $80           ; SWCHA
  0035  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
LABEL_0231:
  0038  46 E2     LSR $E2           ; in RIOT RAM
  003A  24 EB     BIT $EB           ; in RIOT RAM
  003C  30 06     BMI 06            
  003E  A5 80     LDA $80           ; SWCHA
  0040  C9 08     CMP #$08          
  0042  D0 03     BNE 03            
  0044  4C 38 B4  JMP LABEL_0005    ; ROM address $3804 via mirror
  0047  A5 80     LDA $80           ; SWCHA
  0049  C9 07     CMP #$07          
  004B  D0 03     BNE 03            
  004D  4C 38 B4  JMP LABEL_0005    ; ROM address $3804 via mirror
  0050  24 E3     BIT $E3           ; in RIOT RAM
  0052  10 1B     BPL 1B            
  0054  50 19     BVC 19            
  0056  A5 A1     LDA $A1           ; in RIOT RAM
  0058  10 15     BPL 15            
  005A  A2 01     LDX #$01          
  005C  86 A1     STX $A1           ; in RIOT RAM
  005E  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0061  A9 0E     LDA #$0E          
  0063  85 A3     STA $A3           ; in RIOT RAM
  0065  A5 80     LDA $80           ; SWCHA
  0067  85 A6     STA $A6           ; in RIOT RAM
  0069  A9 05     LDA #$05          
  006B  85 A9     STA $A9           ; in RIOT RAM
  006D  85 AC     STA $AC           ; in RIOT RAM
  006F  24 94     BIT $94           ; TIM1T
  0071  10 03     BPL 03            
  0073  4C 53 B1  JMP $53B1         ; ROM address $5301 via mirror
  0076  24 37     BIT $37           ; in TIA Addresses
  0078  10 F9     BPL F9            
  007A  A6 A1     LDX $A1           ; in RIOT RAM
  007C  10 03     BPL 03            
LABEL_0308:
  007E  4C 39 B1  JMP $39B1         ; ROM address $3901 via mirror
  0081  B5 A2     LDA $A2,X         ; in RIOT RAM
LABEL_0084:
  0083  30 EE     BMI EE            
  0085  8A        TXA               
  0086  D0 1E     BNE 1E            
  0088  A2 02     LDX #$02          
  008A  B5 CA     LDA $CA,X         ; in RIOT RAM
  008C  30 09     BMI 09            
  008E  CA        DEX               
  008F  10 F9     BPL F9            
  0091  A9 0A     LDA #$0A          
  0093  85 D2     STA $D2           ; in RIOT RAM
  0095  D0 08     BNE 08            
  0097  A5 81     LDA $81           ; SWACNT
  0099  29 0F     AND #$0F          
  009B  09 20     ORA #$20          
  009D  95 CA     STA $CA,X         ; in RIOT RAM
  009F  A9 9C     LDA #$9C          
  00A1  85 8A     STA $8A           ; in RIOT RAM
  00A3  4C 30 B1  JMP $30B1         ; ROM address $3001 via mirror
  00A6  E0 02     CPX #$02          
  00A8  D0 12     BNE 12            
  00AA  A5 91     LDA $91           ; in RIOT RAM
  00AC  09 40     ORA #$40          
  00AE  85 91     STA $91           ; in RIOT RAM
  00B0  26 A2     ROL $A2           ; in RIOT RAM
  00B2  38        SEC               
  00B3  66 A2     ROR $A2           ; in RIOT RAM
  00B5  26 A3     ROL $A3           ; in RIOT RAM
  00B7  38        SEC               
  00B8  66 A3     ROR $A3           ; in RIOT RAM
  00BA  D0 74     BNE 74            
  00BC  A9 8C     LDA #$8C          
  00BE  85 8A     STA $8A           ; in RIOT RAM
  00C0  24 E3     BIT $E3           ; in RIOT RAM
  00C2  10 25     BPL 25            
  00C4  A4 E5     LDY $E5           ; in RIOT RAM
  00C6  10 0B     BPL 0B            
  00C8  26 E4     ROL $E4           ; in RIOT RAM
  00CA  38        SEC               
  00CB  66 E4     ROR $E4           ; in RIOT RAM
  00CD  20 AA BF  JSR LABEL_0010    ; ROM address $AA0F via mirror
  00D0  4C 38 B4  JMP LABEL_0005    ; ROM address $3804 via mirror
  00D3  C6 E5     DEC $E5           ; in RIOT RAM
  00D5  A2 15     LDX #$15          
  00D7  A0 00     LDY #$00          
  00D9  20 8E BF  JSR LABEL_0011    ; ROM address $8E0F via mirror
  00DC  84 8C     STY $8C           ; in RIOT RAM
  00DE  84 E3     STY $E3           ; in RIOT RAM
  00E0  88        DEY               
  00E1  84 A1     STY $A1           ; in RIOT RAM
  00E3  84 A6     STY $A6           ; in RIOT RAM
  00E5  84 A3     STY $A3           ; in RIOT RAM
  00E7  D0 47     BNE 47            
  00E9  A2 00     LDX #$00          
  00EB  A9 10     LDA #$10          
  00ED  24 CA     BIT $CA           ; in RIOT RAM
  00EF  D0 0A     BNE 0A            
  00F1  E8        INX               
  00F2  24 CB     BIT $CB           ; in RIOT RAM
LABEL_0298:
  00F4  D0 05     BNE 05            
  00F6  E8        INX               
  00F7  24 CC     BIT $CC           ; in RIOT RAM
  00F9  F0 06     BEQ 06            
  00FB  A9 80     LDA #$80          
  00FD  95 CA     STA $CA,X         ; in RIOT RAM
  00FF  D0 2F     BNE 2F            
  0101  A5 D2     LDA $D2           ; in RIOT RAM
  0103  4A        LSR A             
  0104  4A        LSR A             
  0105  4A        LSR A             
  0106  4A        LSR A             
  0107  F0 27     BEQ 27            
  0109  18        CLC               
  010A  65 DD     ADC $DD           ; in RIOT RAM
  010C  85 DD     STA $DD           ; in RIOT RAM
  010E  A5 D2     LDA $D2           ; in RIOT RAM
  0110  C9 90     CMP #$90          
  0112  90 16     BCC 16            
  0114  A2 02     LDX #$02          
  0116  A9 F0     LDA #$F0          
  0118  24 CC     BIT $CC           ; in RIOT RAM
  011A  F0 0A     BEQ 0A            
  011C  CA        DEX               
  011D  24 CB     BIT $CB           ; in RIOT RAM
  011F  F0 05     BEQ 05            
  0121  CA        DEX               
  0122  24 CA     BIT $CA           ; in RIOT RAM
  0124  D0 04     BNE 04            
  0126  A9 10     LDA #$10          
  0128  95 CA     STA $CA,X         ; in RIOT RAM
  012A  A5 D2     LDA $D2           ; in RIOT RAM
  012C  29 0F     AND #$0F          
  012E  85 D2     STA $D2           ; in RIOT RAM
  0130  A6 A1     LDX $A1           ; in RIOT RAM
  0132  36 A2     ROL $A2,X         ; in RIOT RAM
  0134  38        SEC               
  0135  76 A2     ROR $A2,X         ; in RIOT RAM
  0137  30 1A     BMI 1A            
  0139  E0 86     CPX #$86          
  013B  B0 16     BCS 16            
  013D  A9 8D     LDA #$8D          
  013F  85 8A     STA $8A           ; in RIOT RAM
  0141  8A        TXA               
  0142  29 0F     AND #$0F          
  0144  38        SEC               
  0145  E9 03     SBC #$03          
  0147  AA        TAX               
  0148  C9 03     CMP #$03          
  014A  B0 07     BCS 07            
  014C  A9 80     LDA #$80          
  014E  95 CA     STA $CA,X         ; in RIOT RAM
  0150  0A        ASL A             
  0151  85 8C     STA $8C           ; in RIOT RAM
  0153  A5 80     LDA $80           ; SWCHA
  0155  C9 04     CMP #$04          
  0157  90 03     BCC 03            
  0159  4C E8 B1  JMP $E8B1         ; ROM address $E801 via mirror
  015C  24 91     BIT $91           ; in RIOT RAM
  015E  70 F9     BVS F9            
  0160  24 33     BIT $33           ; in TIA Addresses
  0162  30 06     BMI 06            
  0164  A9 00     LDA #$00          
  0166  85 D9     STA $D9           ; in RIOT RAM
  0168  F0 EF     BEQ EF            
  016A  24 94     BIT $94           ; TIM1T
  016C  30 EB     BMI EB            
  016E  A5 9C     LDA $9C           ; in RIOT RAM
  0170  85 D7     STA $D7           ; in RIOT RAM
  0172  A5 96     LDA $96           ; TIM64T
  0174  85 D6     STA $D6           ; in RIOT RAM
  0176  A0 00     LDY #$00          
  0178  A6 80     LDX $80           ; SWCHA
  017A  86 D8     STX $D8           ; in RIOT RAM
  017C  F0 20     BEQ 20            
  017E  CA        DEX               
  017F  F0 39     BEQ 39            
  0181  CA        DEX               
  0182  F0 04     BEQ 04            
  0184  A2 0C     LDX #$0C          
  0186  D0 02     BNE 02            
  0188  A2 08     LDX #$08          
  018A  86 83     STX $83           ; SWBCNT
  018C  C9 3B     CMP #$3B          
  018E  90 01     BCC 01            
  0190  C8        INY               
  0191  A5 9C     LDA $9C           ; in RIOT RAM
  0193  C9 21     CMP #$21          
  0195  90 02     BCC 02            
  0197  C8        INY               
  0198  C8        INY               
  0199  98        TYA               
  019A  05 83     ORA $83           ; SWBCNT
  019C  D0 41     BNE 41            
  019E  C9 29     CMP #$29          
  01A0  B0 04     BCS 04            
  01A2  A9 01     LDA #$01          
  01A4  D0 39     BNE 39            
  01A6  C9 51     CMP #$51          
  01A8  90 04     BCC 04            
  01AA  A9 02     LDA #$02          
  01AC  D0 31     BNE 31            
  01AE  A5 9C     LDA $9C           ; in RIOT RAM
  01B0  C9 1D     CMP #$1D          
  01B2  A9 00     LDA #$00          
  01B4  90 29     BCC 29            
  01B6  A9 03     LDA #$03          
  01B8  D0 25     BNE 25            
  01BA  A6 9C     LDX $9C           ; in RIOT RAM
  01BC  E0 13     CPX #$13          
  01BE  90 06     BCC 06            
  01C0  E0 28     CPX #$28          
  01C2  90 13     BCC 13            
  01C4  A0 03     LDY #$03          
  01C6  C9 20     CMP #$20          
  01C8  90 09     BCC 09            
  01CA  C9 60     CMP #$60          
  01CC  B0 05     BCS 05            
  01CE  98        TYA               
  01CF  09 04     ORA #$04          
  01D1  D0 0C     BNE 0C            
  01D3  A9 FF     LDA #$FF          
  01D5  D0 08     BNE 08            
  01D7  C8        INY               
  01D8  C9 40     CMP #$40          
  01DA  90 F2     BCC F2            
  01DC  C8        INY               
  01DD  D0 EF     BNE EF            
  01DF  85 DA     STA $DA           ; in RIOT RAM
  01E1  A9 06     LDA #$06          
  01E3  85 80     STA $80           ; SWCHA
  01E5  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
  01E8  A5 81     LDA $81           ; SWACNT
  01EA  29 03     AND #$03          
  01EC  C9 03     CMP #$03          
  01EE  F0 54     BEQ 54            
  01F0  AA        TAX               
  01F1  B5 A5     LDA $A5,X         ; in RIOT RAM
  01F3  10 29     BPL 29            
  01F5  B5 A2     LDA $A2,X         ; in RIOT RAM
  01F7  30 4B     BMI 4B            
  01F9  A9 05     LDA #$05          
  01FB  20 80 BF  JSR LABEL_0013    ; ROM address $800F via mirror
  01FE  B0 44     BCS 44            
  0200  95 A5     STA $A5,X         ; in RIOT RAM
  0202  BD 95 BD  LDA LABEL_0014,X  ; ROM address $950D via mirror
  0205  95 AB     STA $AB,X         ; in RIOT RAM
  0207  BD 92 BD  LDA LABEL_0015,X  ; ROM address $920D via mirror
  020A  95 A8     STA $A8,X         ; in RIOT RAM
  020C  A9 0B     LDA #$0B          
  020E  95 A2     STA $A2,X         ; in RIOT RAM
  0210  A9 05     LDA #$05          
  0212  C5 80     CMP $80           ; SWCHA
  0214  D0 2E     BNE 2E            
  0216  86 A1     STX $A1           ; in RIOT RAM
  0218  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  021B  4C 44 B2  JMP $44B2         ; ROM address $4402 via mirror
  021E  0A        ASL A             
  021F  0A        ASL A             
  0220  0A        ASL A             
  0221  85 83     STA $83           ; SWBCNT
  0223  B5 A2     LDA $A2,X         ; in RIOT RAM
  0225  10 05     BPL 05            
  0227  A9 05     LDA #$05          
  0229  18        CLC               
  022A  90 06     BCC 06            
  022C  A5 80     LDA $80           ; SWCHA
  022E  C9 06     CMP #$06          
  0230  B0 12     BCS 12            
  0232  65 83     ADC $83           ; SWBCNT
  0234  A8        TAY               
  0235  B9 FC BD  LDA $FCBD,Y       ; ROM address $FC0D via mirror
  0238  30 0A     BMI 0A            
  023A  85 83     STA $83           ; SWBCNT
  023C  B5 A2     LDA $A2,X         ; in RIOT RAM
  023E  29 F0     AND #$F0          
  0240  05 83     ORA $83           ; SWBCNT
  0242  95 A2     STA $A2,X         ; in RIOT RAM
  0244  24 33     BIT $33           ; in TIA Addresses
  0246  50 1F     BVC 1F            
  0248  A6 80     LDX $80           ; SWCHA
  024A  E0 04     CPX #$04          
  024C  B0 19     BCS 19            
  024E  A5 D2     LDA $D2           ; in RIOT RAM
  0250  C9 90     CMP #$90          
  0252  B0 13     BCS 13            
  0254  69 10     ADC #$10          
  0256  85 D2     STA $D2           ; in RIOT RAM
  0258  A9 9C     LDA #$9C          
  025A  85 8A     STA $8A           ; in RIOT RAM
  025C  A9 7F     LDA #$7F          
  025E  85 9F     STA $9F           ; in RIOT RAM
  0260  BD 50 BE  LDA $50BE,X       ; ROM address $500E via mirror
  0263  25 D1     AND $D1           ; in RIOT RAM
  0265  85 D1     STA $D1           ; in RIOT RAM
  0267  A5 82     LDA $82           ; SWCHB
  0269  29 0F     AND #$0F          
  026B  D0 1D     BNE 1D            
  026D  A5 81     LDA $81           ; SWACNT
  026F  29 3F     AND #$3F          
  0271  C9 17     CMP #$17          
  0273  D0 15     BNE 15            
  0275  A5 D1     LDA $D1           ; in RIOT RAM
  0277  29 0F     AND #$0F          
  0279  AA        TAX               
  027A  A5 DC     LDA $DC           ; in RIOT RAM
  027C  38        SEC               
  027D  FD 58 BE  SBC $58BE,X       ; ROM address $580E via mirror
LABEL_0039:
  0280  30 08     BMI 08            
LABEL_0030:
  0282  85 DC     STA $DC           ; in RIOT RAM
LABEL_0034:
  0284  A9 0F     LDA #$0F          
  0286  05 D1     ORA $D1           ; in RIOT RAM
  0288  85 D1     STA $D1           ; in RIOT RAM
  028A  24 94     BIT $94           ; TIM1T
  028C  30 03     BMI 03            
  028E  4C CE B3  JMP $CEB3         ; ROM address $CE03 via mirror
  0291  A5 81     LDA $81           ; SWACNT
  0293  29 03     AND #$03          
  0295  D0 25     BNE 25            
  0297  50 26     BVC 26            
  0299  24 D9     BIT $D9           ; in RIOT RAM
  029B  70 1F     BVS 1F            
  029D  C6 94     DEC $94           ; TIM1T
  029F  A5 94     LDA $94           ; TIM1T
  02A1  29 07     AND #$07          
  02A3  C9 07     CMP #$07          
  02A5  F0 04     BEQ 04            
  02A7  E6 9C     INC $9C           ; in RIOT RAM
  02A9  D0 11     BNE 11            
  02AB  A9 00     LDA #$00          
  02AD  85 94     STA $94           ; TIM1T
  02AF  E6 9C     INC $9C           ; in RIOT RAM
  02B1  A2 02     LDX #$02          
  02B3  B5 CA     LDA $CA,X         ; in RIOT RAM
  02B5  29 BF     AND #$BF          
  02B7  95 CA     STA $CA,X         ; in RIOT RAM
  02B9  CA        DEX               
  02BA  10 F7     BPL F7            
  02BC  4C A1 B3  JMP LABEL_0021    ; ROM address $A103 via mirror
  02BF  E6 94     INC $94           ; TIM1T
  02C1  A5 94     LDA $94           ; TIM1T
  02C3  29 07     AND #$07          
  02C5  C9 04     CMP #$04          
  02C7  B0 09     BCS 09            
  02C9  A5 9C     LDA $9C           ; in RIOT RAM
  02CB  F0 02     BEQ 02            
  02CD  C6 9C     DEC $9C           ; in RIOT RAM
  02CF  4C A1 B3  JMP LABEL_0021    ; ROM address $A103 via mirror
  02D2  A9 C3     LDA #$C3          
  02D4  85 94     STA $94           ; TIM1T
  02D6  A2 00     LDX #$00          
  02D8  A0 19     LDY #$19          
  02DA  20 CF BF  JSR LABEL_0022    ; ROM address $CF0F via mirror
  02DD  A4 80     LDY $80           ; SWCHA
  02DF  A5 CF     LDA $CF           ; in RIOT RAM
  02E1  0A        ASL A             
  02E2  AA        TAX               
  02E3  BD 2F BE  LDA $2FBE,X       ; ROM address $2F0E via mirror
  02E6  48        PHA               
  02E7  BD 2E BE  LDA $2EBE,X       ; ROM address $2E0E via mirror
  02EA  48        PHA               
  02EB  A5 EA     LDA $EA           ; in RIOT RAM
  02ED  C9 02     CMP #$02          
  02EF  B0 09     BCS 09            
  02F1  A5 A7     LDA $A7           ; in RIOT RAM
  02F3  10 05     BPL 05            
  02F5  26 A4     ROL $A4           ; in RIOT RAM
  02F7  18        CLC               
  02F8  66 A4     ROR $A4           ; in RIOT RAM
  02FA  60        RTS               
  02FB  24 E6     BIT $E6           ; in RIOT RAM
  02FD  30 11     BMI 11            
  02FF  E6 E5     INC $E5           ; in RIOT RAM
  0301  26 E6     ROL $E6           ; in RIOT RAM
  0303  38        SEC               
  0304  66 E6     ROR $E6           ; in RIOT RAM
  0306  30 08     BMI 08            
  0308  A9 40     LDA #$40          
  030A  85 D9     STA $D9           ; in RIOT RAM
  030C  C6 9C     DEC $9C           ; in RIOT RAM
  030E  C6 9C     DEC $9C           ; in RIOT RAM
  0310  4C A1 B3  JMP LABEL_0021    ; ROM address $A103 via mirror
  0313  A2 02     LDX #$02          
  0315  B5 CA     LDA $CA,X         ; in RIOT RAM
  0317  29 F0     AND #$F0          
  0319  D0 0A     BNE 0A            
  031B  B5 CA     LDA $CA,X         ; in RIOT RAM
  031D  29 0F     AND #$0F          
  031F  4A        LSR A             
  0320  4A        LSR A             
  0321  C5 80     CMP $80           ; SWCHA
  0323  F0 06     BEQ 06            
  0325  CA        DEX               
  0326  10 ED     BPL ED            
  0328  4C A1 B3  JMP LABEL_0021    ; ROM address $A103 via mirror
  032B  B5 CA     LDA $CA,X         ; in RIOT RAM
  032D  09 40     ORA #$40          
  032F  95 CA     STA $CA,X         ; in RIOT RAM
  0331  D0 F5     BNE F5            
  0333  B9 80 BD  LDA LABEL_0025,Y  ; ROM address $800D via mirror
  0336  4C 48 B3  JMP LABEL_0026    ; ROM address $4803 via mirror
  0339  B9 7A BD  LDA LABEL_0027,Y  ; ROM address $7A0D via mirror
  033C  4C 48 B3  JMP LABEL_0026    ; ROM address $4803 via mirror
  033F  B9 86 BD  LDA LABEL_0028,Y  ; ROM address $860D via mirror
  0342  4C 48 B3  JMP LABEL_0026    ; ROM address $4803 via mirror
  0345  B9 8C BD  LDA LABEL_0029,Y  ; ROM address $8C0D via mirror
LABEL_0026:
  0348  85 80     STA $80           ; SWCHA
  034A  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
  034D  4C A1 B3  JMP LABEL_0021    ; ROM address $A103 via mirror
  0350  26 A3     ROL $A3           ; in RIOT RAM
  0352  18        CLC               
  0353  66 A3     ROR $A3           ; in RIOT RAM
  0355  10 4A     BPL 4A            
  0357  A6 A1     LDX $A1           ; in RIOT RAM
  0359  30 09     BMI 09            
  035B  2C 82 02  BIT LABEL_0030    
  035E  70 41     BVS 41            
  0360  E0 01     CPX #$01          
  0362  D0 3D     BNE 3D            
  0364  A5 D0     LDA $D0           ; in RIOT RAM
  0366  10 39     BPL 39            
  0368  24 CA     BIT $CA           ; in RIOT RAM
  036A  10 35     BPL 35            
  036C  24 CB     BIT $CB           ; in RIOT RAM
  036E  10 31     BPL 31            
  0370  24 CC     BIT $CC           ; in RIOT RAM
  0372  10 2D     BPL 2D            
  0374  A9 8C     LDA #$8C          
  0376  85 8A     STA $8A           ; in RIOT RAM
  0378  A9 3F     LDA #$3F          
  037A  85 D0     STA $D0           ; in RIOT RAM
  037C  A9 8F     LDA #$8F          
  037E  85 A2     STA $A2           ; in RIOT RAM
  0380  85 A3     STA $A3           ; in RIOT RAM
  0382  85 A4     STA $A4           ; in RIOT RAM
  0384  D0 1B     BNE 1B            
  0386  A6 A1     LDX $A1           ; in RIOT RAM
  0388  30 17     BMI 17            
  038A  36 A2     ROL $A2,X         ; in RIOT RAM
  038C  38        SEC               
  038D  76 A2     ROR $A2,X         ; in RIOT RAM
  038F  30 10     BMI 10            
  0391  A5 D2     LDA $D2           ; in RIOT RAM
  0393  38        SEC               
  0394  E9 10     SBC #$10          
  0396  90 09     BCC 09            
  0398  85 D2     STA $D2           ; in RIOT RAM
  039A  A2 03     LDX #$03          
  039C  A0 60     LDY #$60          
  039E  20 8E BF  JSR LABEL_0011    ; ROM address $8E0F via mirror
LABEL_0021:
  03A1  A2 02     LDX #$02          
  03A3  24 CC     BIT $CC           ; in RIOT RAM
  03A5  70 0A     BVS 0A            
  03A7  CA        DEX               
  03A8  24 CB     BIT $CB           ; in RIOT RAM
  03AA  70 05     BVS 05            
  03AC  CA        DEX               
  03AD  24 CA     BIT $CA           ; in RIOT RAM
  03AF  50 14     BVC 14            
  03B1  B5 CA     LDA $CA,X         ; in RIOT RAM
  03B3  29 0F     AND #$0F          
  03B5  A8        TAY               
  03B6  B9 12 BD  LDA $12BD,Y       ; ROM address $120D via mirror
  03B9  85 98     STA $98           ; in RIOT RAM
  03BB  BE 02 BD  LDX $02BD,Y       ; ROM address $020D via mirror
  03BE  A5 81     LDA $81           ; SWACNT
  03C0  6A        ROR A             
  03C1  6A        ROR A             
  03C2  6A        ROR A             
  03C3  90 02     BCC 02            
  03C5  A2 7F     LDX #$7F          
  03C7  86 9E     STX $9E           ; in RIOT RAM
  03C9  A5 CF     LDA $CF           ; in RIOT RAM
  03CB  4C 33 B4  JMP $33B4         ; ROM address $3304 via mirror
  03CE  A5 80     LDA $80           ; SWCHA
  03D0  C9 06     CMP #$06          
  03D2  D0 16     BNE 16            
  03D4  A5 A1     LDA $A1           ; in RIOT RAM
  03D6  C9 86     CMP #$86          
  03D8  D0 0C     BNE 0C            
  03DA  A5 96     LDA $96           ; TIM64T
  03DC  E5 95     SBC $95           ; TIM8T
  03DE  C9 10     CMP #$10          
  03E0  B0 04     BCS 04            
  03E2  A9 0C     LDA #$0C          
  03E4  D0 4B     BNE 4B            
  03E6  A9 0B     LDA #$0B          
  03E8  D0 47     BNE 47            
  03EA  A5 96     LDA $96           ; TIM64T
  03EC  4A        LSR A             
  03ED  4A        LSR A             
  03EE  4A        LSR A             
  03EF  29 0C     AND #$0C          
  03F1  85 83     STA $83           ; SWBCNT
LABEL_0148:
  03F3  A5 9C     LDA $9C           ; in RIOT RAM
  03F5  4A        LSR A             
  03F6  4A        LSR A             
  03F7  4A        LSR A             
  03F8  4A        LSR A             
  03F9  05 83     ORA $83           ; SWBCNT
  03FB  4A        LSR A             
  03FC  A8        TAY               
  03FD  B1 CD     LDA ($CD),Y       
LABEL_0219:
  03FF  90 04     BCC 04            
  0401  4A        LSR A             
  0402  4A        LSR A             
  0403  4A        LSR A             
  0404  4A        LSR A             
  0405  29 0F     AND #$0F          
  0407  C9 05     CMP #$05          
  0409  D0 06     BNE 06            
  040B  A6 80     LDX $80           ; SWCHA
  040D  E0 04     CPX #$04          
  040F  B0 1E     BCS 1E            
  0411  C9 08     CMP #$08          
  0413  D0 06     BNE 06            
  0415  A2 04     LDX #$04          
  0417  E4 80     CPX $80           ; SWCHA
  0419  F0 14     BEQ 14            
  041B  C9 0A     CMP #$0A          
  041D  D0 06     BNE 06            
  041F  A2 04     LDX #$04          
  0421  E4 80     CPX $80           ; SWCHA
  0423  D0 0A     BNE 0A            
  0425  C9 09     CMP #$09          
  0427  D0 08     BNE 08            
  0429  A6 DB     LDX $DB           ; in RIOT RAM
  042B  E4 80     CPX $80           ; SWCHA
  042D  F0 02     BEQ 02            
  042F  A9 00     LDA #$00          
  0431  85 CF     STA $CF           ; in RIOT RAM
  0433  0A        ASL A             
  0434  0A        ASL A             
  0435  0A        ASL A             
  0436  85 BE     STA $BE           ; in RIOT RAM
LABEL_0005:
  0438  AD 84 02  LDA LABEL_0034    
  043B  D0 FB     BNE FB            
  043D  A9 02     LDA #$02          
  043F  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  0441  85 00     STA $00           ; VSYNC (W), CXM0P (R)
  0443  E6 81     INC $81           ; SWACNT
  0445  D0 16     BNE 16            
  0447  24 E3     BIT $E3           ; in RIOT RAM
  0449  30 12     BMI 12            
  044B  A5 EA     LDA $EA           ; in RIOT RAM
  044D  C9 03     CMP #$03          
  044F  B0 0C     BCS 0C            
  0451  A5 A5     LDA $A5           ; in RIOT RAM
  0453  10 08     BPL 08            
  0455  24 91     BIT $91           ; in RIOT RAM
  0457  70 04     BVS 04            
  0459  A9 0F     LDA #$0F          
  045B  85 A2     STA $A2           ; in RIOT RAM
  045D  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  045F  A9 3F     LDA #$3F          
  0461  25 81     AND $81           ; SWACNT
  0463  D0 14     BNE 14            
  0465  E6 82     INC $82           ; SWCHB
  0467  AD 82 02  LDA LABEL_0030    
  046A  29 02     AND #$02          
  046C  D0 0B     BNE 0B            
  046E  A6 EA     LDX $EA           ; in RIOT RAM
  0470  E8        INX               
  0471  E0 04     CPX #$04          
  0473  90 02     BCC 02            
  0475  A2 01     LDX #$01          
  0477  86 EA     STX $EA           ; in RIOT RAM
  0479  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  047B  A5 80     LDA $80           ; SWCHA
  047D  C9 08     CMP #$08          
  047F  D0 10     BNE 10            
  0481  A9 18     LDA #$18          
  0483  85 95     STA $95           ; TIM8T
  0485  A9 41     LDA #$41          
  0487  85 96     STA $96           ; TIM64T
  0489  A9 3A     LDA #$3A          
  048B  85 97     STA $97           ; TIM128T
  048D  A9 5F     LDA #$5F          
  048F  85 98     STA $98           ; in RIOT RAM
  0491  A9 00     LDA #$00          
  0493  A2 2F     LDX #$2F          
  0495  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  0497  85 00     STA $00           ; VSYNC (W), CXM0P (R)
  0499  8E 96 02  STX LABEL_0035    
  049C  24 EB     BIT $EB           ; in RIOT RAM
  049E  10 03     BPL 03            
  04A0  4C 84 B7  JMP LABEL_0036    ; ROM address $8407 via mirror
  04A3  A5 80     LDA $80           ; SWCHA
  04A5  C9 08     CMP #$08          
  04A7  F0 09     BEQ 09            
  04A9  24 E3     BIT $E3           ; in RIOT RAM
  04AB  10 2F     BPL 2F            
  04AD  A6 A1     LDX $A1           ; in RIOT RAM
  04AF  CA        DEX               
  04B0  D0 2A     BNE 2A            
  04B2  A9 07     LDA #$07          
  04B4  85 1A     STA $1A           ; AUDV1 (W)
  04B6  A9 0C     LDA #$0C          
  04B8  85 16     STA $16           ; AUDC1 (W)
  04BA  A6 EE     LDX $EE           ; in RIOT RAM
  04BC  CA        DEX               
  04BD  10 0D     BPL 0D            
  04BF  A2 0B     LDX #$0B          
  04C1  A4 EF     LDY $EF           ; in RIOT RAM
  04C3  C8        INY               
  04C4  C0 37     CPY #$37          
  04C6  90 02     BCC 02            
  04C8  A0 00     LDY #$00          
  04CA  84 EF     STY $EF           ; in RIOT RAM
  04CC  86 EE     STX $EE           ; in RIOT RAM
  04CE  A4 EF     LDY $EF           ; in RIOT RAM
  04D0  B9 C4 BE  LDA $C4BE,Y       ; ROM address $C40E via mirror
  04D3  85 18     STA $18           ; AUDF1 (W)
  04D5  A9 00     LDA #$00          
  04D7  85 19     STA $19           ; AUDV0 (W)
  04D9  4C 48 B5  JMP $48B5         ; ROM address $4805 via mirror
  04DC  24 D9     BIT $D9           ; in RIOT RAM
  04DE  10 0E     BPL 0E            
  04E0  A9 05     LDA #$05          
  04E2  85 16     STA $16           ; AUDC1 (W)
  04E4  0A        ASL A             
  04E5  85 1A     STA $1A           ; AUDV1 (W)
  04E7  A5 9C     LDA $9C           ; in RIOT RAM
  04E9  4A        LSR A             
  04EA  85 18     STA $18           ; AUDF1 (W)
  04EC  D0 5A     BNE 5A            
  04EE  50 0E     BVC 0E            
  04F0  A5 D4     LDA $D4           ; in RIOT RAM
  04F2  29 0F     AND #$0F          
  04F4  D0 4A     BNE 4A            
  04F6  A9 04     LDA #$04          
  04F8  85 1A     STA $1A           ; AUDV1 (W)
  04FA  A9 1C     LDA #$1C          
  04FC  D0 46     BNE 46            
  04FE  A5 94     LDA $94           ; TIM1T
  0500  10 0A     BPL 0A            
  0502  38        SEC               
  0503  2A        ROL A             
  0504  38        SEC               
  0505  2A        ROL A             
  0506  85 1A     STA $1A           ; AUDV1 (W)
LABEL_0147:
  0508  A9 0E     LDA #$0E          
  050A  D0 38     BNE 38            
  050C  AD 80 02  LDA LABEL_0039    
  050F  C9 F0     CMP #$F0          
  0511  B0 2D     BCS 2D            
  0513  24 91     BIT $91           ; in RIOT RAM
  0515  10 12     BPL 12            
  0517  A5 81     LDA $81           ; SWACNT
  0519  4A        LSR A             
  051A  4A        LSR A             
  051B  29 07     AND #$07          
  051D  85 18     STA $18           ; AUDF1 (W)
  051F  A9 05     LDA #$05          
  0521  85 16     STA $16           ; AUDC1 (W)
  0523  A9 07     LDA #$07          
  0525  85 1A     STA $1A           ; AUDV1 (W)
  0527  D0 1F     BNE 1F            
  0529  A5 81     LDA $81           ; SWACNT
  052B  29 07     AND #$07          
  052D  D0 11     BNE 11            
  052F  A5 81     LDA $81           ; SWACNT
  0531  4A        LSR A             
  0532  4A        LSR A             
  0533  4A        LSR A             
  0534  29 03     AND #$03          
  0536  F0 08     BEQ 08            
  0538  A2 07     LDX #$07          
  053A  86 1A     STX $1A           ; AUDV1 (W)
  053C  69 16     ADC #$16          
  053E  D0 04     BNE 04            
  0540  A9 00     LDA #$00          
  0542  85 1A     STA $1A           ; AUDV1 (W)
  0544  85 16     STA $16           ; AUDC1 (W)
  0546  85 18     STA $18           ; AUDF1 (W)
  0548  A5 80     LDA $80           ; SWCHA
  054A  C9 07     CMP #$07          
  054C  D0 03     BNE 03            
  054E  4C 69 BA  JMP $69BA         ; ROM address $690A via mirror
  0551  C9 08     CMP #$08          
  0553  D0 03     BNE 03            
  0555  4C C7 BA  JMP LABEL_0041    ; ROM address $C70A via mirror
  0558  A5 D0     LDA $D0           ; in RIOT RAM
  055A  10 06     BPL 06            
  055C  A9 00     LDA #$00          
  055E  85 C0     STA $C0           ; in RIOT RAM
  0560  F0 7F     BEQ 7F            
  0562  A5 81     LDA $81           ; SWACNT
  0564  29 1F     AND #$1F          
  0566  D0 69     BNE 69            
  0568  C6 D0     DEC $D0           ; in RIOT RAM
  056A  10 53     BPL 53            
  056C  A9 00     LDA #$00          
  056E  85 C0     STA $C0           ; in RIOT RAM
  0570  A5 CF     LDA $CF           ; in RIOT RAM
  0572  C9 0A     CMP #$0A          
  0574  D0 43     BNE 43            
  0576  A5 A1     LDA $A1           ; in RIOT RAM
  0578  30 09     BMI 09            
  057A  2C 82 02  BIT LABEL_0030    
  057D  70 3A     BVS 3A            
  057F  C9 01     CMP #$01          
  0581  D0 36     BNE 36            
  0583  A9 8D     LDA #$8D          
  0585  85 8A     STA $8A           ; in RIOT RAM
  0587  A5 D2     LDA $D2           ; in RIOT RAM
  0589  4A        LSR A             
  058A  4A        LSR A             
  058B  4A        LSR A             
  058C  4A        LSR A             
  058D  18        CLC               
  058E  65 DD     ADC $DD           ; in RIOT RAM
  0590  85 83     STA $83           ; SWBCNT
  0592  4A        LSR A             
  0593  18        CLC               
  0594  65 83     ADC $83           ; SWBCNT
  0596  C9 10     CMP #$10          
  0598  B0 02     BCS 02            
  059A  A9 10     LDA #$10          
  059C  85 DC     STA $DC           ; in RIOT RAM
  059E  A2 07     LDX #$07          
  05A0  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  05A3  A9 F0     LDA #$F0          
  05A5  85 9B     STA $9B           ; in RIOT RAM
  05A7  A5 96     LDA $96           ; TIM64T
  05A9  38        SEC               
  05AA  E9 05     SBC #$05          
  05AC  10 02     BPL 02            
  05AE  A9 00     LDA #$00          
  05B0  85 95     STA $95           ; TIM8T
  05B2  A9 C0     LDA #$C0          
  05B4  85 EB     STA $EB           ; in RIOT RAM
  05B6  4C 84 B7  JMP LABEL_0036    ; ROM address $8407 via mirror
  05B9  A9 9F     LDA #$9F          
  05BB  85 8A     STA $8A           ; in RIOT RAM
  05BD  D0 22     BNE 22            
  05BF  A5 D0     LDA $D0           ; in RIOT RAM
  05C1  A2 84     LDX #$84          
  05C3  C9 07     CMP #$07          
  05C5  90 08     BCC 08            
  05C7  29 07     AND #$07          
  05C9  C9 07     CMP #$07          
  05CB  D0 04     BNE 04            
  05CD  A2 8C     LDX #$8C          
  05CF  86 8A     STX $8A           ; in RIOT RAM
  05D1  A5 D0     LDA $D0           ; in RIOT RAM
  05D3  C9 08     CMP #$08          
  05D5  B0 03     BCS 03            
  05D7  0A        ASL A             
  05D8  0A        ASL A             
  05D9  0A        ASL A             
  05DA  29 38     AND #$38          
  05DC  18        CLC               
  05DD  69 68     ADC #$68          
  05DF  85 C0     STA $C0           ; in RIOT RAM
  05E1  AD 80 02  LDA LABEL_0039    
  05E4  4A        LSR A             
  05E5  4A        LSR A             
  05E6  4A        LSR A             
  05E7  4A        LSR A             
  05E8  85 83     STA $83           ; SWBCNT
  05EA  A5 91     LDA $91           ; in RIOT RAM
  05EC  29 F0     AND #$F0          
  05EE  05 83     ORA $83           ; SWBCNT
  05F0  85 91     STA $91           ; in RIOT RAM
  05F2  24 E3     BIT $E3           ; in RIOT RAM
  05F4  30 38     BMI 38            
  05F6  24 3C     BIT $3C           ; in TIA Addresses
  05F8  30 2A     BMI 2A            
  05FA  A5 89     LDA $89           ; in RIOT RAM
  05FC  30 30     BMI 30            
  05FE  09 80     ORA #$80          
LABEL_0240:
  0600  85 89     STA $89           ; in RIOT RAM
  0602  AD 80 02  LDA LABEL_0039    
  0605  C9 F0     CMP #$F0          
  0607  B0 07     BCS 07            
  0609  26 91     ROL $91           ; in RIOT RAM
  060B  38        SEC               
  060C  66 91     ROR $91           ; in RIOT RAM
  060E  D0 1E     BNE 1E            
  0610  24 91     BIT $91           ; in RIOT RAM
  0612  70 1A     BVS 1A            
  0614  24 94     BIT $94           ; TIM1T
  0616  30 16     BMI 16            
  0618  C6 9C     DEC $9C           ; in RIOT RAM
  061A  10 02     BPL 02            
  061C  E6 9C     INC $9C           ; in RIOT RAM
  061E  A9 80     LDA #$80          
  0620  85 94     STA $94           ; TIM1T
  0622  D0 0A     BNE 0A            
  0624  26 89     ROL $89           ; in RIOT RAM
  0626  18        CLC               
  0627  66 89     ROR $89           ; in RIOT RAM
  0629  26 91     ROL $91           ; in RIOT RAM
  062B  18        CLC               
  062C  66 91     ROR $91           ; in RIOT RAM
  062E  24 91     BIT $91           ; in RIOT RAM
  0630  50 22     BVC 22            
  0632  A5 A7     LDA $A7           ; in RIOT RAM
  0634  C5 80     CMP $80           ; SWCHA
  0636  F0 11     BEQ 11            
  0638  24 91     BIT $91           ; in RIOT RAM
  063A  10 08     BPL 08            
  063C  A5 91     LDA $91           ; in RIOT RAM
  063E  29 BF     AND #$BF          
  0640  85 91     STA $91           ; in RIOT RAM
  0642  D0 0D     BNE 0D            
  0644  85 80     STA $80           ; SWCHA
  0646  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
  0649  A5 9B     LDA $9B           ; in RIOT RAM
  064B  85 9C     STA $9C           ; in RIOT RAM
  064D  A5 95     LDA $95           ; TIM8T
  064F  85 96     STA $96           ; TIM64T
  0651  4C E3 B6  JMP LABEL_0042    ; ROM address $E306 via mirror
  0654  A5 D9     LDA $D9           ; in RIOT RAM
  0656  D0 04     BNE 04            
  0658  24 94     BIT $94           ; TIM1T
  065A  10 F5     BPL F5            
  065C  29 20     AND #$20          
  065E  F0 19     BEQ 19            
  0660  A6 96     LDX $96           ; TIM64T
  0662  A5 91     LDA $91           ; in RIOT RAM
  0664  29 0F     AND #$0F          
  0666  09 03     ORA #$03          
  0668  E0 20     CPX #$20          
  066A  B0 02     BCS 02            
  066C  09 04     ORA #$04          
  066E  E0 58     CPX #$58          
  0670  90 02     BCC 02            
  0672  09 08     ORA #$08          
  0674  85 91     STA $91           ; in RIOT RAM
  0676  4C E3 B6  JMP LABEL_0042    ; ROM address $E306 via mirror
  0679  24 D9     BIT $D9           ; in RIOT RAM
  067B  50 48     BVC 48            
  067D  A5 81     LDA $81           ; SWACNT
  067F  29 07     AND #$07          
  0681  D0 07     BNE 07            
  0683  A2 00     LDX #$00          
  0685  A0 01     LDY #$01          
  0687  20 CF BF  JSR LABEL_0022    ; ROM address $CF0F via mirror
  068A  A5 80     LDA $80           ; SWCHA
  068C  C9 04     CMP #$04          
  068E  D0 07     BNE 07            
  0690  A9 00     LDA #$00          
  0692  85 D9     STA $D9           ; in RIOT RAM
  0694  4C 84 B7  JMP LABEL_0036    ; ROM address $8407 via mirror
  0697  C9 06     CMP #$06          
  0699  D0 48     BNE 48            
  069B  A5 9C     LDA $9C           ; in RIOT RAM
  069D  C9 2D     CMP #$2D          
  069F  90 06     BCC 06            
  06A1  A9 20     LDA #$20          
  06A3  85 D9     STA $D9           ; in RIOT RAM
  06A5  D0 13     BNE 13            
  06A7  C9 02     CMP #$02          
  06A9  B0 12     BCS 12            
  06AB  A5 D7     LDA $D7           ; in RIOT RAM
  06AD  85 9C     STA $9C           ; in RIOT RAM
  06AF  A5 D6     LDA $D6           ; in RIOT RAM
  06B1  85 96     STA $96           ; TIM64T
  06B3  A6 D8     LDX $D8           ; in RIOT RAM
  06B5  86 80     STX $80           ; SWCHA
  06B7  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
  06BA  4C 84 B7  JMP LABEL_0036    ; ROM address $8407 via mirror
  06BD  A5 91     LDA $91           ; in RIOT RAM
  06BF  29 0F     AND #$0F          
  06C1  09 0C     ORA #$0C          
  06C3  D0 AF     BNE AF            
  06C5  10 F3     BPL F3            
  06C7  A6 9C     LDX $9C           ; in RIOT RAM
  06C9  E0 31     CPX #$31          
  06CB  B0 04     BCS 04            
  06CD  E6 9C     INC $9C           ; in RIOT RAM
  06CF  D0 E9     BNE E9            
  06D1  A9 9F     LDA #$9F          
  06D3  85 8A     STA $8A           ; in RIOT RAM
  06D5  A2 02     LDX #$02          
  06D7  A0 69     LDY #$69          
  06D9  20 CF BF  JSR LABEL_0022    ; ROM address $CF0F via mirror
  06DC  A9 20     LDA #$20          
  06DE  85 D9     STA $D9           ; in RIOT RAM
  06E0  4C 84 B7  JMP LABEL_0036    ; ROM address $8407 via mirror
LABEL_0042:
  06E3  24 E3     BIT $E3           ; in RIOT RAM
  06E5  30 F9     BMI F9            
  06E7  A2 00     LDX #$00          
  06E9  A5 91     LDA $91           ; in RIOT RAM
  06EB  10 01     BPL 01            
  06ED  E8        INX               
  06EE  29 0F     AND #$0F          
  06F0  C9 0F     CMP #$0F          
  06F2  F0 2C     BEQ 2C            
  06F4  A5 92     LDA $92           ; in RIOT RAM
  06F6  18        CLC               
  06F7  7D 2C BE  ADC $2CBE,X       ; ROM address $2C0E via mirror
  06FA  85 92     STA $92           ; in RIOT RAM
  06FC  90 22     BCC 22            
  06FE  A5 91     LDA $91           ; in RIOT RAM
  0700  A2 01     LDX #$01          
  0702  20 CF BC  JSR LABEL_0044    ; ROM address $CF0C via mirror
  0705  A2 00     LDX #$00          
  0707  A0 01     LDY #$01          
  0709  20 CF BF  JSR LABEL_0022    ; ROM address $CF0F via mirror
  070C  A5 D9     LDA $D9           ; in RIOT RAM
  070E  D0 74     BNE 74            
  0710  A5 91     LDA $91           ; in RIOT RAM
  0712  10 0C     BPL 0C            
  0714  A2 01     LDX #$01          
  0716  20 CF BC  JSR LABEL_0044    ; ROM address $CF0C via mirror
  0719  A2 00     LDX #$00          
  071B  A0 01     LDY #$01          
  071D  20 CF BF  JSR LABEL_0022    ; ROM address $CF0F via mirror
  0720  A6 80     LDX $80           ; SWCHA
  0722  A5 96     LDA $96           ; TIM64T
  0724  C9 78     CMP #$78          
  0726  90 2A     BCC 2A            
  0728  10 14     BPL 14            
  072A  BD 4A BD  LDA LABEL_0045,X  ; ROM address $4A0D via mirror
  072D  F0 02     BEQ 02            
  072F  85 96     STA $96           ; TIM64T
  0731  BD 62 BD  LDA LABEL_0046,X  ; ROM address $620D via mirror
  0734  F0 02     BEQ 02            
  0736  85 9C     STA $9C           ; in RIOT RAM
  0738  BD 7A BD  LDA LABEL_0027,X  ; ROM address $7A0D via mirror
  073B  4C 7F B7  JMP LABEL_0047    ; ROM address $7F07 via mirror
  073E  BD 50 BD  LDA LABEL_0048,X  ; ROM address $500D via mirror
  0741  F0 02     BEQ 02            
  0743  85 96     STA $96           ; TIM64T
  0745  BD 68 BD  LDA LABEL_0049,X  ; ROM address $680D via mirror
  0748  F0 02     BEQ 02            
  074A  85 9C     STA $9C           ; in RIOT RAM
  074C  BD 80 BD  LDA LABEL_0025,X  ; ROM address $800D via mirror
  074F  4C 7F B7  JMP LABEL_0047    ; ROM address $7F07 via mirror
  0752  A5 9C     LDA $9C           ; in RIOT RAM
  0754  C9 3B     CMP #$3B          
  0756  90 2C     BCC 2C            
  0758  10 14     BPL 14            
  075A  BD 56 BD  LDA LABEL_0050,X  ; ROM address $560D via mirror
  075D  F0 02     BEQ 02            
  075F  85 96     STA $96           ; TIM64T
  0761  BD 6E BD  LDA LABEL_0051,X  ; ROM address $6E0D via mirror
  0764  F0 02     BEQ 02            
  0766  85 9C     STA $9C           ; in RIOT RAM
  0768  BD 86 BD  LDA LABEL_0028,X  ; ROM address $860D via mirror
  076B  4C 7F B7  JMP LABEL_0047    ; ROM address $7F07 via mirror
  076E  BD 5C BD  LDA LABEL_0052,X  ; ROM address $5C0D via mirror
  0771  F0 02     BEQ 02            
  0773  85 96     STA $96           ; TIM64T
  0775  BD 74 BD  LDA LABEL_0053,X  ; ROM address $740D via mirror
  0778  F0 02     BEQ 02            
  077A  85 9C     STA $9C           ; in RIOT RAM
  077C  BD 8C BD  LDA LABEL_0029,X  ; ROM address $8C0D via mirror
LABEL_0047:
  077F  85 80     STA $80           ; SWCHA
  0781  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
LABEL_0036:
  0784  24 EB     BIT $EB           ; in RIOT RAM
  0786  30 03     BMI 03            
  0788  4C 1D B8  JMP $1DB8         ; ROM address $1D08 via mirror
  078B  A5 EB     LDA $EB           ; in RIOT RAM
  078D  70 43     BVS 43            
  078F  6A        ROR A             
  0790  B0 2E     BCS 2E            
  0792  A5 81     LDA $81           ; SWACNT
  0794  29 03     AND #$03          
  0796  D0 11     BNE 11            
  0798  E6 9B     INC $9B           ; in RIOT RAM
  079A  E6 9C     INC $9C           ; in RIOT RAM
  079C  A5 9B     LDA $9B           ; in RIOT RAM
  079E  30 09     BMI 09            
  07A0  C9 20     CMP #$20          
  07A2  90 05     BCC 05            
  07A4  66 EB     ROR $EB           ; in RIOT RAM
  07A6  38        SEC               
  07A7  26 EB     ROL $EB           ; in RIOT RAM
  07A9  20 6C BE  JSR $6CBE         ; ROM address $6C0E via mirror
  07AC  A5 81     LDA $81           ; SWACNT
  07AE  29 07     AND #$07          
  07B0  D0 0B     BNE 0B            
  07B2  A6 B2     LDX $B2           ; in RIOT RAM
  07B4  E8        INX               
  07B5  E0 E6     CPX #$E6          
  07B7  90 02     BCC 02            
  07B9  A2 E0     LDX #$E0          
  07BB  86 B2     STX $B2           ; in RIOT RAM
  07BD  4C C7 BA  JMP LABEL_0041    ; ROM address $C70A via mirror
  07C0  C6 9B     DEC $9B           ; in RIOT RAM
  07C2  A5 9B     LDA $9B           ; in RIOT RAM
  07C4  10 E3     BPL E3            
  07C6  C9 F0     CMP #$F0          
  07C8  B0 DF     BCS DF            
  07CA  A9 00     LDA #$00          
  07CC  85 EB     STA $EB           ; in RIOT RAM
  07CE  85 C0     STA $C0           ; in RIOT RAM
  07D0  F0 EB     BEQ EB            
  07D2  6A        ROR A             
  07D3  B0 25     BCS 25            
  07D5  A5 81     LDA $81           ; SWACNT
  07D7  29 03     AND #$03          
  07D9  D0 CE     BNE CE            
  07DB  E6 9B     INC $9B           ; in RIOT RAM
  07DD  A9 40     LDA #$40          
  07DF  38        SEC               
  07E0  E5 9B     SBC $9B           ; in RIOT RAM
  07E2  C9 10     CMP #$10          
  07E4  90 02     BCC 02            
  07E6  A9 10     LDA #$10          
  07E8  85 8C     STA $8C           ; in RIOT RAM
  07EA  A5 9C     LDA $9C           ; in RIOT RAM
  07EC  18        CLC               
  07ED  E9 03     SBC #$03          
  07EF  C5 9B     CMP $9B           ; in RIOT RAM
  07F1  D0 B6     BNE B6            
  07F3  66 EB     ROR $EB           ; in RIOT RAM
  07F5  38        SEC               
  07F6  26 EB     ROL $EB           ; in RIOT RAM
  07F8  D0 AF     BNE AF            
  07FA  C6 9C     DEC $9C           ; in RIOT RAM
  07FC  C6 9B     DEC $9B           ; in RIOT RAM
  07FE  A9 40     LDA #$40          
  0800  38        SEC               
  0801  E5 9B     SBC $9B           ; in RIOT RAM
  0803  C9 10     CMP #$10          
  0805  90 02     BCC 02            
  0807  A9 10     LDA #$10          
  0809  85 8C     STA $8C           ; in RIOT RAM
  080B  A5 9B     LDA $9B           ; in RIOT RAM
  080D  10 9A     BPL 9A            
  080F  C9 F0     CMP #$F0          
  0811  B0 96     BCS 96            
  0813  A9 00     LDA #$00          
  0815  85 EB     STA $EB           ; in RIOT RAM
  0817  20 AA BF  JSR LABEL_0010    ; ROM address $AA0F via mirror
  081A  4C C7 BA  JMP LABEL_0041    ; ROM address $C70A via mirror
  081D  A5 94     LDA $94           ; TIM1T
  081F  30 10     BMI 10            
  0821  A9 5D     LDA #$5D          
  0823  2C 82 02  BIT LABEL_0030    
  0826  30 02     BMI 02            
  0828  A9 3B     LDA #$3B          
  082A  18        CLC               
  082B  65 93     ADC $93           ; in RIOT RAM
  082D  85 93     STA $93           ; in RIOT RAM
  082F  B0 03     BCS 03            
  0831  4C 06 BA  JMP $06BA         ; ROM address $060A via mirror
  0834  A2 03     LDX #$03          
LABEL_0059:
  0836  CA        DEX               
  0837  30 F8     BMI F8            
  0839  B5 A5     LDA $A5,X         ; in RIOT RAM
  083B  30 F9     BMI F9            
  083D  C9 05     CMP #$05          
  083F  D0 6B     BNE 6B            
  0841  B4 A2     LDY $A2,X         ; in RIOT RAM
  0843  10 67     BPL 67            
  0845  BD 95 BD  LDA LABEL_0014,X  ; ROM address $950D via mirror
  0848  85 A0     STA $A0           ; in RIOT RAM
  084A  BC 92 BD  LDY LABEL_0015,X  ; ROM address $920D via mirror
  084D  84 9A     STY $9A           ; in RIOT RAM
  084F  D5 AB     CMP $AB,X         ; in RIOT RAM
  0851  D0 55     BNE 55            
  0853  98        TYA               
  0854  D5 A8     CMP $A8,X         ; in RIOT RAM
  0856  D0 50     BNE 50            
  0858  A9 FF     LDA #$FF          
  085A  95 A5     STA $A5,X         ; in RIOT RAM
  085C  8A        TXA               
  085D  D0 12     BNE 12            
  085F  A9 DF     LDA #$DF          
  0861  25 CA     AND $CA           ; in RIOT RAM
  0863  85 CA     STA $CA           ; in RIOT RAM
  0865  A9 DF     LDA #$DF          
  0867  25 CB     AND $CB           ; in RIOT RAM
  0869  85 CB     STA $CB           ; in RIOT RAM
  086B  A9 DF     LDA #$DF          
  086D  25 CC     AND $CC           ; in RIOT RAM
  086F  85 CC     STA $CC           ; in RIOT RAM
  0871  E0 01     CPX #$01          
  0873  D0 1B     BNE 1B            
  0875  24 91     BIT $91           ; in RIOT RAM
  0877  70 17     BVS 17            
  0879  24 E3     BIT $E3           ; in RIOT RAM
  087B  30 13     BMI 13            
  087D  A9 10     LDA #$10          
  087F  24 CA     BIT $CA           ; in RIOT RAM
  0881  D0 08     BNE 08            
  0883  24 CB     BIT $CB           ; in RIOT RAM
  0885  D0 04     BNE 04            
  0887  24 CC     BIT $CC           ; in RIOT RAM
  0889  F0 05     BEQ 05            
  088B  26 A3     ROL $A3           ; in RIOT RAM
  088D  18        CLC               
  088E  66 A3     ROR $A3           ; in RIOT RAM
  0890  E0 02     CPX #$02          
  0892  D0 06     BNE 06            
  0894  A5 91     LDA $91           ; in RIOT RAM
  0896  29 BF     AND #$BF          
  0898  85 91     STA $91           ; in RIOT RAM
  089A  E4 A1     CPX $A1           ; in RIOT RAM
  089C  D0 98     BNE 98            
  089E  A9 FF     LDA #$FF          
  08A0  85 A1     STA $A1           ; in RIOT RAM
  08A2  A9 00     LDA #$00          
  08A4  85 8C     STA $8C           ; in RIOT RAM
  08A6  F0 8E     BEQ 8E            
  08A8  A0 04     LDY #$04          
  08AA  D0 13     BNE 13            
  08AC  C5 80     CMP $80           ; SWCHA
  08AE  D0 15     BNE 15            
  08B0  B4 A2     LDY $A2,X         ; in RIOT RAM
  08B2  30 11     BMI 11            
  08B4  B5 AB     LDA $AB,X         ; in RIOT RAM
  08B6  DD 98 BD  CMP LABEL_0057,X  ; ROM address $980D via mirror
  08B9  90 02     BCC 02            
  08BB  D6 AB     DEC $AB,X         ; in RIOT RAM
  08BD  A0 00     LDY #$00          
  08BF  20 E4 BC  JSR $E4BC         ; ROM address $E40C via mirror
  08C2  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  08C5  B5 A2     LDA $A2,X         ; in RIOT RAM
  08C7  4A        LSR A             
  08C8  90 0F     BCC 0F            
  08CA  4A        LSR A             
  08CB  90 55     BCC 55            
  08CD  4A        LSR A             
  08CE  B0 03     BCS 03            
  08D0  4C 70 B9  JMP $70B9         ; ROM address $7009 via mirror
  08D3  4A        LSR A             
  08D4  B0 EC     BCS EC            
  08D6  4C B9 B9  JMP $B9B9         ; ROM address $B909 via mirror
  08D9  D6 AB     DEC $AB,X         ; in RIOT RAM
  08DB  10 3B     BPL 3B            
  08DD  B4 A5     LDY $A5,X         ; in RIOT RAM
  08DF  B9 86 BD  LDA LABEL_0028,Y  ; ROM address $860D via mirror
  08E2  20 80 BF  JSR LABEL_0013    ; ROM address $800F via mirror
  08E5  B0 34     BCS 34            
  08E7  95 A5     STA $A5,X         ; in RIOT RAM
  08E9  E4 A1     CPX $A1           ; in RIOT RAM
  08EB  D0 08     BNE 08            
  08ED  A9 FF     LDA #$FF          
  08EF  85 A1     STA $A1           ; in RIOT RAM
  08F1  A9 00     LDA #$00          
  08F3  85 8C     STA $8C           ; in RIOT RAM
  08F5  B9 6E BD  LDA LABEL_0051,Y  ; ROM address $6E0D via mirror
  08F8  F0 0C     BEQ 0C            
  08FA  DD 98 BD  CMP LABEL_0057,X  ; ROM address $980D via mirror
  08FD  90 05     BCC 05            
  08FF  BD 98 BD  LDA LABEL_0057,X  ; ROM address $980D via mirror
  0902  E9 01     SBC #$01          
  0904  95 AB     STA $AB,X         ; in RIOT RAM
  0906  B9 56 BD  LDA LABEL_0050,Y  ; ROM address $560D via mirror
  0909  F0 02     BEQ 02            
  090B  95 A8     STA $A8,X         ; in RIOT RAM
  090D  B5 A5     LDA $A5,X         ; in RIOT RAM
  090F  C5 80     CMP $80           ; SWCHA
  0911  D0 05     BNE 05            
  0913  86 A1     STX $A1           ; in RIOT RAM
  0915  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0918  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  091B  F6 AB     INC $AB,X         ; in RIOT RAM
  091D  F6 AB     INC $AB,X         ; in RIOT RAM
  091F  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  0922  F6 AB     INC $AB,X         ; in RIOT RAM
  0924  BD 98 BD  LDA LABEL_0057,X  ; ROM address $980D via mirror
  0927  D5 AB     CMP $AB,X         ; in RIOT RAM
  0929  B0 3B     BCS 3B            
  092B  B4 A5     LDY $A5,X         ; in RIOT RAM
  092D  B9 8C BD  LDA LABEL_0029,Y  ; ROM address $8C0D via mirror
  0930  20 80 BF  JSR LABEL_0013    ; ROM address $800F via mirror
  0933  B0 34     BCS 34            
  0935  95 A5     STA $A5,X         ; in RIOT RAM
  0937  E4 A1     CPX $A1           ; in RIOT RAM
  0939  D0 08     BNE 08            
  093B  A9 FF     LDA #$FF          
  093D  85 A1     STA $A1           ; in RIOT RAM
  093F  A9 00     LDA #$00          
  0941  85 8C     STA $8C           ; in RIOT RAM
  0943  B9 74 BD  LDA LABEL_0053,Y  ; ROM address $740D via mirror
  0946  F0 0C     BEQ 0C            
  0948  DD 98 BD  CMP LABEL_0057,X  ; ROM address $980D via mirror
  094B  90 05     BCC 05            
  094D  BD 98 BD  LDA LABEL_0057,X  ; ROM address $980D via mirror
  0950  E9 01     SBC #$01          
  0952  95 AB     STA $AB,X         ; in RIOT RAM
  0954  B9 5C BD  LDA LABEL_0052,Y  ; ROM address $5C0D via mirror
  0957  F0 02     BEQ 02            
  0959  95 A8     STA $A8,X         ; in RIOT RAM
  095B  B5 A5     LDA $A5,X         ; in RIOT RAM
  095D  C5 80     CMP $80           ; SWCHA
  095F  D0 05     BNE 05            
  0961  86 A1     STX $A1           ; in RIOT RAM
  0963  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0966  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  0969  D6 AB     DEC $AB,X         ; in RIOT RAM
  096B  D6 AB     DEC $AB,X         ; in RIOT RAM
  096D  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  0970  D6 A8     DEC $A8,X         ; in RIOT RAM
  0972  10 3B     BPL 3B            
  0974  B4 A5     LDY $A5,X         ; in RIOT RAM
  0976  B9 7A BD  LDA LABEL_0027,Y  ; ROM address $7A0D via mirror
  0979  20 80 BF  JSR LABEL_0013    ; ROM address $800F via mirror
  097C  B0 34     BCS 34            
  097E  95 A5     STA $A5,X         ; in RIOT RAM
  0980  E4 A1     CPX $A1           ; in RIOT RAM
  0982  D0 08     BNE 08            
  0984  A9 FF     LDA #$FF          
  0986  85 A1     STA $A1           ; in RIOT RAM
  0988  A9 00     LDA #$00          
  098A  85 8C     STA $8C           ; in RIOT RAM
  098C  B9 62 BD  LDA LABEL_0046,Y  ; ROM address $620D via mirror
  098F  F0 0C     BEQ 0C            
  0991  DD 98 BD  CMP LABEL_0057,X  ; ROM address $980D via mirror
  0994  90 05     BCC 05            
  0996  BD 98 BD  LDA LABEL_0057,X  ; ROM address $980D via mirror
  0999  E9 01     SBC #$01          
  099B  95 AB     STA $AB,X         ; in RIOT RAM
  099D  B9 4A BD  LDA LABEL_0045,Y  ; ROM address $4A0D via mirror
  09A0  F0 02     BEQ 02            
  09A2  95 A8     STA $A8,X         ; in RIOT RAM
  09A4  B5 A5     LDA $A5,X         ; in RIOT RAM
  09A6  C5 80     CMP $80           ; SWCHA
  09A8  D0 05     BNE 05            
  09AA  86 A1     STX $A1           ; in RIOT RAM
  09AC  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  09AF  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  09B2  F6 A8     INC $A8,X         ; in RIOT RAM
  09B4  F6 A8     INC $A8,X         ; in RIOT RAM
  09B6  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  09B9  F6 A8     INC $A8,X         ; in RIOT RAM
  09BB  B4 A8     LDY $A8,X         ; in RIOT RAM
  09BD  C0 78     CPY #$78          
  09BF  90 3B     BCC 3B            
  09C1  B4 A5     LDY $A5,X         ; in RIOT RAM
  09C3  B9 80 BD  LDA LABEL_0025,Y  ; ROM address $800D via mirror
  09C6  20 80 BF  JSR LABEL_0013    ; ROM address $800F via mirror
  09C9  B0 34     BCS 34            
  09CB  95 A5     STA $A5,X         ; in RIOT RAM
  09CD  E4 A1     CPX $A1           ; in RIOT RAM
  09CF  D0 08     BNE 08            
  09D1  A9 FF     LDA #$FF          
  09D3  85 A1     STA $A1           ; in RIOT RAM
  09D5  A9 00     LDA #$00          
  09D7  85 8C     STA $8C           ; in RIOT RAM
  09D9  B9 68 BD  LDA LABEL_0049,Y  ; ROM address $680D via mirror
  09DC  F0 0C     BEQ 0C            
  09DE  DD 98 BD  CMP LABEL_0057,X  ; ROM address $980D via mirror
  09E1  90 05     BCC 05            
  09E3  BD 98 BD  LDA LABEL_0057,X  ; ROM address $980D via mirror
  09E6  E9 01     SBC #$01          
  09E8  95 AB     STA $AB,X         ; in RIOT RAM
  09EA  B9 50 BD  LDA LABEL_0048,Y  ; ROM address $500D via mirror
  09ED  F0 02     BEQ 02            
  09EF  95 A8     STA $A8,X         ; in RIOT RAM
  09F1  B5 A5     LDA $A5,X         ; in RIOT RAM
  09F3  C5 80     CMP $80           ; SWCHA
  09F5  D0 05     BNE 05            
  09F7  86 A1     STX $A1           ; in RIOT RAM
  09F9  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  09FC  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  09FF  D6 A8     DEC $A8,X         ; in RIOT RAM
  0A01  D6 A8     DEC $A8,X         ; in RIOT RAM
  0A03  4C 36 B8  JMP LABEL_0059    ; ROM address $3608 via mirror
  0A06  24 E3     BIT $E3           ; in RIOT RAM
  0A08  10 0E     BPL 0E            
  0A0A  A9 74     LDA #$74          
  0A0C  85 B8     STA $B8           ; in RIOT RAM
  0A0E  A9 6E     LDA #$6E          
  0A10  85 B6     STA $B6           ; in RIOT RAM
  0A12  A9 06     LDA #$06          
  0A14  85 8D     STA $8D           ; in RIOT RAM
  0A16  D0 4B     BNE 4B            
  0A18  A5 94     LDA $94           ; TIM1T
  0A1A  10 14     BPL 14            
  0A1C  29 03     AND #$03          
  0A1E  AA        TAX               
  0A1F  BD 68 BE  LDA $68BE,X       ; ROM address $680E via mirror
  0A22  85 8D     STA $8D           ; in RIOT RAM
  0A24  BD 48 BE  LDA $48BE,X       ; ROM address $480E via mirror
  0A27  85 B6     STA $B6           ; in RIOT RAM
  0A29  BD 4C BE  LDA $4CBE,X       ; ROM address $4C0E via mirror
  0A2C  85 B8     STA $B8           ; in RIOT RAM
  0A2E  D0 33     BNE 33            
  0A30  A9 09     LDA #$09          
  0A32  85 8D     STA $8D           ; in RIOT RAM
  0A34  AD 80 02  LDA LABEL_0039    
  0A37  C9 F0     CMP #$F0          
  0A39  B0 20     BCS 20            
  0A3B  A9 03     LDA #$03          
  0A3D  24 91     BIT $91           ; in RIOT RAM
  0A3F  10 01     BPL 01            
  0A41  4A        LSR A             
  0A42  25 81     AND $81           ; SWACNT
  0A44  D0 1D     BNE 1D            
  0A46  A6 EC     LDX $EC           ; in RIOT RAM
  0A48  CA        DEX               
  0A49  10 02     BPL 02            
  0A4B  A2 02     LDX #$02          
  0A4D  86 EC     STX $EC           ; in RIOT RAM
  0A4F  BD F6 BD  LDA $F6BD,X       ; ROM address $F60D via mirror
  0A52  85 B6     STA $B6           ; in RIOT RAM
  0A54  BD F9 BD  LDA $F9BD,X       ; ROM address $F90D via mirror
  0A57  85 B8     STA $B8           ; in RIOT RAM
  0A59  D0 08     BNE 08            
  0A5B  A9 00     LDA #$00          
  0A5D  85 B6     STA $B6           ; in RIOT RAM
  0A5F  A9 37     LDA #$37          
  0A61  85 B8     STA $B8           ; in RIOT RAM
  0A63  A9 F9     LDA #$F9          
  0A65  85 B7     STA $B7           ; in RIOT RAM
  0A67  85 B9     STA $B9           ; in RIOT RAM
  0A69  A5 A1     LDA $A1           ; in RIOT RAM
  0A6B  C9 86     CMP #$86          
  0A6D  D0 2C     BNE 2C            
  0A6F  24 F2     BIT $F2           ; in RIOT RAM
  0A71  10 12     BPL 12            
  0A73  A2 0A     LDX #$0A          
  0A75  70 08     BVS 08            
  0A77  CA        DEX               
  0A78  A5 81     LDA $81           ; SWACNT
  0A7A  29 02     AND #$02          
  0A7C  D0 01     BNE 01            
  0A7E  CA        DEX               
  0A7F  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0A82  4C C7 BA  JMP LABEL_0041    ; ROM address $C70A via mirror
  0A85  A5 E6     LDA $E6           ; in RIOT RAM
  0A87  4A        LSR A             
  0A88  4A        LSR A             
  0A89  4A        LSR A             
  0A8A  4A        LSR A             
  0A8B  29 03     AND #$03          
  0A8D  AA        TAX               
  0A8E  BD 9B BD  LDA $9BBD,X       ; ROM address $9B0D via mirror
  0A91  85 AE     STA $AE           ; in RIOT RAM
  0A93  BD 9F BD  LDA $9FBD,X       ; ROM address $9F0D via mirror
  0A96  85 B0     STA $B0           ; in RIOT RAM
  0A98  4C C7 BA  JMP LABEL_0041    ; ROM address $C70A via mirror
  0A9B  A6 A1     LDX $A1           ; in RIOT RAM
  0A9D  30 28     BMI 28            
  0A9F  BD F3 BD  LDA $F3BD,X       ; ROM address $F30D via mirror
  0AA2  25 81     AND $81           ; SWACNT
  0AA4  D0 21     BNE 21            
  0AA6  A5 AE     LDA $AE           ; in RIOT RAM
  0AA8  18        CLC               
  0AA9  7D E8 BD  ADC LABEL_0070,X  ; ROM address $E80D via mirror
  0AAC  DD E5 BD  CMP $E5BD,X       ; ROM address $E50D via mirror
  0AAF  90 0C     BCC 0C            
  0AB1  BD AE BD  LDA LABEL_0072,X  ; ROM address $AE0D via mirror
  0AB4  85 AE     STA $AE           ; in RIOT RAM
  0AB6  BD B9 BD  LDA LABEL_0073,X  ; ROM address $B90D via mirror
  0AB9  85 B0     STA $B0           ; in RIOT RAM
  0ABB  D0 0A     BNE 0A            
  0ABD  85 AE     STA $AE           ; in RIOT RAM
  0ABF  A5 B0     LDA $B0           ; in RIOT RAM
  0AC1  18        CLC               
  0AC2  7D E8 BD  ADC LABEL_0070,X  ; ROM address $E80D via mirror
  0AC5  85 B0     STA $B0           ; in RIOT RAM
LABEL_0041:
  0AC7  A5 80     LDA $80           ; SWCHA
  0AC9  C9 07     CMP #$07          
  0ACB  F0 0C     BEQ 0C            
  0ACD  A6 A1     LDX $A1           ; in RIOT RAM
  0ACF  30 08     BMI 08            
  0AD1  B5 AB     LDA $AB,X         ; in RIOT RAM
  0AD3  85 9B     STA $9B           ; in RIOT RAM
  0AD5  B5 A8     LDA $A8,X         ; in RIOT RAM
  0AD7  85 95     STA $95           ; TIM8T
  0AD9  A5 96     LDA $96           ; TIM64T
  0ADB  48        PHA               
  0ADC  A9 1E     LDA #$1E          
  0ADE  85 96     STA $96           ; TIM64T
  0AE0  4C 06 B0  JMP $06B0         ; ROM address $0600 via mirror
LABEL_0004:
  0AE3  A6 80     LDX $80           ; SWCHA
  0AE5  BD 32 BD  LDA $32BD,X       ; ROM address $320D via mirror
  0AE8  85 BB     STA $BB           ; in RIOT RAM
  0AEA  85 BD     STA $BD           ; in RIOT RAM
  0AEC  BD 3A BD  LDA $3ABD,X       ; ROM address $3A0D via mirror
  0AEF  85 BA     STA $BA           ; in RIOT RAM
  0AF1  BD 42 BD  LDA $42BD,X       ; ROM address $420D via mirror
  0AF4  85 BC     STA $BC           ; in RIOT RAM
  0AF6  A9 00     LDA #$00          
  0AF8  85 F2     STA $F2           ; in RIOT RAM
  0AFA  85 F1     STA $F1           ; in RIOT RAM
  0AFC  A0 BF     LDY #$BF          
  0AFE  98        TYA               
  0AFF  25 CA     AND $CA           ; in RIOT RAM
  0B01  85 CA     STA $CA           ; in RIOT RAM
  0B03  98        TYA               
  0B04  25 CB     AND $CB           ; in RIOT RAM
  0B06  85 CB     STA $CB           ; in RIOT RAM
  0B08  98        TYA               
  0B09  25 CC     AND $CC           ; in RIOT RAM
  0B0B  85 CC     STA $CC           ; in RIOT RAM
  0B0D  A9 7F     LDA #$7F          
  0B0F  85 9D     STA $9D           ; in RIOT RAM
  0B11  85 9E     STA $9E           ; in RIOT RAM
  0B13  85 9F     STA $9F           ; in RIOT RAM
  0B15  24 EB     BIT $EB           ; in RIOT RAM
  0B17  10 2C     BPL 2C            
  0B19  A9 FF     LDA #$FF          
  0B1B  85 A1     STA $A1           ; in RIOT RAM
  0B1D  A9 3D     LDA #$3D          
  0B1F  85 96     STA $96           ; TIM64T
  0B21  A9 F4     LDA #$F4          
  0B23  85 9C     STA $9C           ; in RIOT RAM
  0B25  A9 09     LDA #$09          
  0B27  85 8D     STA $8D           ; in RIOT RAM
  0B29  A9 00     LDA #$00          
  0B2B  85 B6     STA $B6           ; in RIOT RAM
  0B2D  A9 37     LDA #$37          
  0B2F  85 B8     STA $B8           ; in RIOT RAM
  0B31  A9 F9     LDA #$F9          
  0B33  85 B7     STA $B7           ; in RIOT RAM
  0B35  85 B9     STA $B9           ; in RIOT RAM
  0B37  A2 07     LDX #$07          
  0B39  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0B3C  A9 38     LDA #$38          
  0B3E  85 95     STA $95           ; TIM8T
  0B40  A9 F0     LDA #$F0          
  0B42  85 9B     STA $9B           ; in RIOT RAM
  0B44  60        RTS               
  0B45  E0 07     CPX #$07          
  0B47  D0 0D     BNE 0D            
  0B49  24 E3     BIT $E3           ; in RIOT RAM
  0B4B  10 08     BPL 08            
  0B4D  A9 33     LDA #$33          
  0B4F  85 9D     STA $9D           ; in RIOT RAM
  0B51  A9 40     LDA #$40          
  0B53  85 97     STA $97           ; TIM128T
  0B55  60        RTS               
  0B56  E0 06     CPX #$06          
  0B58  F0 51     BEQ 51            
  0B5A  8A        TXA               
  0B5B  A2 02     LDX #$02          
  0B5D  D5 A5     CMP $A5,X         ; in RIOT RAM
  0B5F  F0 0F     BEQ 0F            
  0B61  CA        DEX               
  0B62  10 F9     BPL F9            
  0B64  A9 FF     LDA #$FF          
  0B66  85 A1     STA $A1           ; in RIOT RAM
  0B68  A9 00     LDA #$00          
  0B6A  85 8C     STA $8C           ; in RIOT RAM
  0B6C  85 9B     STA $9B           ; in RIOT RAM
  0B6E  F0 05     BEQ 05            
  0B70  86 A1     STX $A1           ; in RIOT RAM
  0B72  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0B75  A6 80     LDX $80           ; SWCHA
  0B77  E0 04     CPX #$04          
  0B79  B0 11     BCS 11            
  0B7B  BD 54 BE  LDA $54BE,X       ; ROM address $540E via mirror
  0B7E  25 D1     AND $D1           ; in RIOT RAM
  0B80  F0 0A     BEQ 0A            
  0B82  BD A3 BB  LDA $A3BB,X       ; ROM address $A30B via mirror
  0B85  85 9F     STA $9F           ; in RIOT RAM
  0B87  BD A7 BB  LDA $A7BB,X       ; ROM address $A70B via mirror
  0B8A  85 99     STA $99           ; in RIOT RAM
  0B8C  A5 80     LDA $80           ; SWCHA
  0B8E  C9 06     CMP #$06          
  0B90  B0 10     BCS 10            
  0B92  4A        LSR A             
  0B93  AA        TAX               
  0B94  B5 E7     LDA $E7,X         ; in RIOT RAM
  0B96  B0 03     BCS 03            
  0B98  4A        LSR A             
  0B99  10 03     BPL 03            
  0B9B  0A        ASL A             
  0B9C  0A        ASL A             
  0B9D  0A        ASL A             
  0B9E  29 78     AND #$78          
  0BA0  85 CD     STA $CD           ; in RIOT RAM
  0BA2  60        RTS               
  0BA3  20 20 20  JSR $2020         
  0BA6  20 3C 3C  JSR LABEL_0082    
  0BA9  26 26     ROL $26           ; in TIA Addresses
  0BAB  A9 45     LDA #$45          
  0BAD  85 96     STA $96           ; TIM64T
  0BAF  A9 03     LDA #$03          
  0BB1  85 9C     STA $9C           ; in RIOT RAM
  0BB3  A9 80     LDA #$80          
  0BB5  85 D9     STA $D9           ; in RIOT RAM
  0BB7  24 E3     BIT $E3           ; in RIOT RAM
  0BB9  30 1F     BMI 1F            
  0BBB  A2 02     LDX #$02          
  0BBD  B5 CA     LDA $CA,X         ; in RIOT RAM
  0BBF  29 F0     AND #$F0          
  0BC1  D0 08     BNE 08            
  0BC3  B5 CA     LDA $CA,X         ; in RIOT RAM
  0BC5  29 0F     AND #$0F          
  0BC7  C5 DA     CMP $DA           ; in RIOT RAM
  0BC9  F0 17     BEQ 17            
  0BCB  CA        DEX               
  0BCC  10 EF     BPL EF            
  0BCE  A5 E6     LDA $E6           ; in RIOT RAM
  0BD0  29 0F     AND #$0F          
  0BD2  C5 DA     CMP $DA           ; in RIOT RAM
  0BD4  D0 04     BNE 04            
  0BD6  A9 86     LDA #$86          
  0BD8  D0 0B     BNE 0B            
  0BDA  A2 FF     LDX #$FF          
  0BDC  86 A1     STX $A1           ; in RIOT RAM
  0BDE  E8        INX               
  0BDF  86 8C     STX $8C           ; in RIOT RAM
  0BE1  60        RTS               
  0BE2  8A        TXA               
  0BE3  69 82     ADC #$82          
  0BE5  85 A1     STA $A1           ; in RIOT RAM
  0BE7  29 0F     AND #$0F          
  0BE9  AA        TAX               
  0BEA  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0BED  A9 32     LDA #$32          
  0BEF  85 9B     STA $9B           ; in RIOT RAM
  0BF1  A9 29     LDA #$29          
  0BF3  85 95     STA $95           ; TIM8T
  0BF5  60        RTS               
  0BF6  00        BRK               
  0BF7  00        BRK               
  0BF8  00        BRK               
  0BF9  00        BRK               
  0BFA  00        BRK               
  0BFB  00        BRK               
  0BFC  00        BRK               
  0BFD  00        BRK               
  0BFE  00        BRK               
  0BFF  00        BRK               
LABEL_0002:
  0C00  F0 E0     BEQ E0            
  0C02  D0 C0     BNE C0            
  0C04  B0 A0     BCS A0            
  0C06  90 71     BCC 71            
  0C08  61 51     ADC ($51,X)       
  0C0A  41 31     EOR ($31,X)       
  0C0C  21 11     AND ($11,X)       
  0C0E  01 F1     ORA ($F1,X)       
  0C10  E1 D1     SBC ($D1,X)       
  0C12  C1 B1     CMP ($B1,X)       
  0C14  A1 91     LDA ($91,X)       
  0C16  72        JAM               
  0C17  62        JAM               
  0C18  52        JAM               
  0C19  42        JAM               
  0C1A  32        JAM               
  0C1B  22        JAM               
  0C1C  12        JAM               
  0C1D  02        JAM               
  0C1E  F2        JAM               
  0C1F  E2 D2     NOP #$D2          
  0C21  C2 B2     NOP #$B2          
  0C23  A2 92     LDX #$92          
  0C25  73 63     RRA ($63),Y       
  0C27  53 43     SRE ($43),Y       
  0C29  33 23     RLA ($23),Y       
  0C2B  13 03     SLO ($03),Y       
  0C2D  F3 E3     ISC ($E3),Y       
  0C2F  D3 C3     DCP ($C3),Y       
  0C31  B3 A3     LAX ($A3),Y       
  0C33  93 74     SHA ($74),Y       
  0C35  64 54     NOP $54           
  0C37  44 34     NOP $34           ; in TIA Addresses
  0C39  24 14     BIT $14           ; RESBL (W)
  0C3B  04 F4     NOP $F4           ; in RIOT RAM
  0C3D  E4 D4     CPX $D4           ; in RIOT RAM
  0C3F  C4 B4     CPY $B4           ; in RIOT RAM
  0C41  A4 94     LDY $94           ; TIM1T
  0C43  75 65     ADC $65,X         
  0C45  55 45     EOR $45,X         
  0C47  35 25     AND $25,X         ; in TIA Addresses
  0C49  15 05     ORA $05,X         ; NUSIZ1 (W), CXM1FB (R)
  0C4B  F5 E5     SBC $E5,X         ; in RIOT RAM
  0C4D  D5 C5     CMP $C5,X         ; in RIOT RAM
  0C4F  B5 A5     LDA $A5,X         ; in RIOT RAM
  0C51  95 76     STA $76,X         
  0C53  66 56     ROR $56           
  0C55  46 36     LSR $36           ; in TIA Addresses
  0C57  26 16     ROL $16           ; AUDC1 (W)
  0C59  06 F6     ASL $F6           ; in RIOT RAM
  0C5B  E6 D6     INC $D6           ; in RIOT RAM
  0C5D  C6 B6     DEC $B6           ; in RIOT RAM
  0C5F  A6 96     LDX $96           ; TIM64T
  0C61  77 67     RRA $67,X         
  0C63  57 47     SRE $47,X         
  0C65  37 27     RLA $27,X         ; in TIA Addresses
  0C67  17 07     SLO $07,X         ; COLUP1 (W), CXPPMM (R)
  0C69  F7 E7     ISC $E7,X         ; in RIOT RAM
  0C6B  D7 C7     DCP $C7,X         ; in RIOT RAM
  0C6D  B7 A7     LAX $A7,Y         ; in RIOT RAM
  0C6F  97 78     SAX $78,Y         
  0C71  68        PLA               
  0C72  58        CLI               
  0C73  48        PHA               
  0C74  38        SEC               
  0C75  28        PLP               
  0C76  18        CLC               
  0C77  68        PHP               
  0C78  F8        SED               
  0C79  E8        INX               
  0C7A  D8        CLD               
  0C7B  C8        INY               
LABEL_0314:
  0C7C  B8        CLV               
  0C7D  A8        TAY               
  0C7E  98        TYA               
LABEL_0001:
  0C7F  78        SEI               
  0C80  D8        CLD               
  0C81  A2 FF     LDX #$FF          
  0C83  9A        TXS               
  0C84  E8        INX               
  0C85  8A        TXA               
  0C86  95 00     STA $00,X         ; VSYNC (W), CXM0P (R)
  0C88  CA        DEX               
  0C89  D0 FB     BNE FB            
  0C8B  A9 01     LDA #$01          
  0C8D  85 0A     STA $0A           ; CTRLPF (W), INPT2 (R)
  0C8F  85 EA     STA $EA           ; in RIOT RAM
  0C91  A9 BF     LDA #$BF          
  0C93  85 CE     STA $CE           ; in RIOT RAM
  0C95  A9 4A     LDA #$4A          
  0C97  85 90     STA $90           ; in RIOT RAM
  0C99  A9 9C     LDA #$9C          
  0C9B  85 8E     STA $8E           ; in RIOT RAM
  0C9D  A9 FA     LDA #$FA          
  0C9F  85 8F     STA $8F           ; in RIOT RAM
  0CA1  A9 08     LDA #$08          
  0CA3  85 80     STA $80           ; SWCHA
  0CA5  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
  0CA8  4C 3D B4  JMP $3DB4         ; ROM address $3D04 via mirror
  0CAB  AD 84 02  LDA LABEL_0034    
  0CAE  D0 FB     BNE FB            
  0CB0  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  0CB2  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  0CB4  A9 48     LDA #$48          
  0CB6  85 87     STA $87           ; in RIOT RAM
  0CB8  A9 F5     LDA #$F5          
  0CBA  85 88     STA $88           ; in RIOT RAM
  0CBC  A9 AD     LDA #$AD          
  0CBE  85 83     STA $83           ; SWBCNT
  0CC0  A9 F9     LDA #$F9          
  0CC2  85 84     STA $84           ; INTIM
  0CC4  A9 FF     LDA #$FF          
  0CC6  85 85     STA $85           ; TIMINT
  0CC8  A9 4C     LDA #$4C          
  0CCA  85 86     STA $86           ; in RIOT RAM
  0CCC  4C 83 00  JMP LABEL_0084    
LABEL_0044:
  0CCF  6A        ROR A             
  0CD0  B0 02     BCS 02            
  0CD2  D6 9B     DEC $9B,X         ; in RIOT RAM
  0CD4  6A        ROR A             
  0CD5  B0 02     BCS 02            
  0CD7  F6 9B     INC $9B,X         ; in RIOT RAM
  0CD9  6A        ROR A             
  0CDA  B0 02     BCS 02            
  0CDC  D6 95     DEC $95,X         ; TIM8T
  0CDE  6A        ROR A             
  0CDF  B0 02     BCS 02            
  0CE1  F6 95     INC $95,X         ; TIM8T
  0CE3  60        RTS               
  0CE4  B5 AB     LDA $AB,X         ; in RIOT RAM
  0CE6  D9 9C 00  CMP $9C00,Y       
  0CE9  F0 08     BEQ 08            
  0CEB  B0 04     BCS 04            
  0CED  F6 AB     INC $AB,X         ; in RIOT RAM
  0CEF  D0 02     BNE 02            
  0CF1  D6 AB     DEC $AB,X         ; in RIOT RAM
  0CF3  B5 A8     LDA $A8,X         ; in RIOT RAM
  0CF5  D9 96 00  CMP $9600,Y       
  0CF8  F0 04     BEQ 04            
  0CFA  B0 03     BCS 03            
LABEL_0340:
  0CFC  F6 A8     INC $A8,X         ; in RIOT RAM
  0CFE  60        RTS               
  0CFF  D6 A8     DEC $A8,X         ; in RIOT RAM
  0D01  60        RTS               
  0D02  13 20     SLO ($20),Y       
  0D04  20 2C 0B  JSR $2C0B         
  0D07  20 20 34  JSR $2034         
  0D0A  15 15     ORA $15,X         ; AUDC0 (W)
  0D0C  2D 2D 0F  AND $2D0F         
  0D0F  0F 2F 2F  SLO $2F2F         
  0D12  36 19 65  ROL $1965,X       
  0D15  36 3E 1E  ROL $3E1E,X       
  0D18  5F 3E 19  SRE $3E19,X       
  0D1B  64 1C     NOP $1C           ; GRP1 (W)
  0D1D  60        RTS               
  0D1E  1E 5F 1E  ASL $5F1E,X       
  0D21  5F 00 00  SRE LABEL_0095,X  
  0D24  00        BRK               
  0D25  00        BRK               
  0D26  00        BRK               
  0D27  0A        ASL A             
  0D28  09 0B     ORA #$0B          
  0D2A  00        BRK               
  0D2B  06 05     ASL $05           ; NUSIZ1 (W), CXM1FB (R)
  0D2D  07 00     SLO $00           ; VSYNC (W), CXM0P (R)
  0D2F  0E 0D 0F  ASL $0D0F         
  0D32  F8        SED               
  0D33  FB FB FB  ISC $FBFB,Y       ; ROM address $FB0B via mirror
  0D36  F8        SED               
  0D37  FD FD FF  SBC $FDFF,X       ; ROM address $FD0F via mirror
  0D3A  00        BRK               
  0D3B  38        SEC               
  0D3C  70 00     BVS 00            
  0D3E  73 79     RRA ($79),Y       
  0D40  00        BRK               
  0D41  19 33 38  ORA $3338,Y       
  0D44  A0 00     LDY #$00          
  0D46  B3 40     LAX ($40),Y       
  0D48  99 00 77  STA $0077,Y       ; ROM address $0007 via mirror
  0D4B  77 77     RRA $77,X         
  0D4D  77 44     RRA $44,X         
  0D4F  44 01     NOP $01           ; VBLANK (W), CXM1P (R)
  0D51  01 01     ORA ($01,X)       
  0D53  01 3A     ORA ($3A,X)       
  0D55  3A        NOP               
LABEL_0050:
  0D56  00        BRK               
  0D57  75 00     ADC $00,X         ; VSYNC (W), CXM0P (R)
  0D59  04 00     NOP $00           ; VSYNC (W), CXM0P (R)
  0D5B  00        BRK               
LABEL_0052:
  0D5C  00        BRK               
  0D5D  04 00     NOP $00           ; VSYNC (W), CXM0P (R)
  0D5F  75 00     ADC $00,X         ; VSYNC (W), CXM0P (R)
  0D61  00        BRK               
LABEL_0046:
  0D62  00        BRK               
  0D63  00        BRK               
  0D64  00        BRK               
  0D65  00        BRK               
  0D66  04 35     NOP $35           ; in TIA Addresses
LABEL_0049:
  0D68  00        BRK               
  0D69  00        BRK               
  0D6A  00        BRK               
  0D6B  00        BRK               
  0D6C  04 35     NOP $35           ; in TIA Addresses
LABEL_0051:
  0D6E  68        PHP               
  0D6F  24 39     BIT $39           ; in TIA Addresses
  0D71  24 08     BIT $08           ; COLUPF (W), INPT0 (R)
  0D73  39 02 1C  AND $021C,Y       
  0D76  32        JAM               
  0D77  1C 02 32  NOP $0232,X       
LABEL_0027:
  0D7A  01 02     ORA ($02,X)       
  0D7C  03 00     SLO ($00,X)       
  0D7E  03 01     SLO ($01,X)       
LABEL_0025:
  0D80  03 00     SLO ($00,X)       
  0D82  01 02     ORA ($02,X)       
  0D84  01 03     ORA ($03,X)       
LABEL_0028:
  0D86  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  0D88  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  0D8A  00        BRK               
  0D8B  00        BRK               
LABEL_0029:
  0D8C  05 05     ORA $05           ; NUSIZ1 (W), CXM1FB (R)
  0D8E  05 05     ORA $05           ; NUSIZ1 (W), CXM1FB (R)
  0D90  02        JAM               
  0D91  02        JAM               
LABEL_0015:
  0D92  1C 3C 5E  NOP LABEL_0103,X  
LABEL_0014:
  0D95  0F 2F 0F  SLO $2F0F         
LABEL_0057:
  0D98  30 34     BMI 34            
  0D9A  30 BE     BMI BE            
  0D9C  C5 CC     CMP $CC           ; in RIOT RAM
  0D9E  D3 DA     DCP ($DA),Y       
  0DA0  E1 E8     SBC ($E8,X)       
  0DA2  EF FF FA  ISC $FFFA         ; ROM address $FF0A via mirror
  0DA5  FE FE FE  INC LABEL_0106,X  ; ROM address $FE0E via mirror
  0DA8  FE F9 FE  INC $F9FE,X       ; ROM address $F90E via mirror
  0DAB  FB FB FF  ISC $FBFF,Y       ; ROM address $FB0F via mirror
LABEL_0072:
  0DAE  5A        NOP               
  0DAF  68        PLA               
  0DB0  00        BRK               
  0DB1  A8        TAY               
  0DB2  B2        JAM               
  0DB3  BC BE D0  LDY $BED0,X       
  0DB6  EC F4 E9  CPX $F4E9         
LABEL_0073:
  0DB9  92        JAM               
  0DBA  B4 46     LDY $46,X         
  0DBC  AD B7 C1  LDA $B7C1         
  0DBF  DA        NOP               
  0DC0  D0 EC     BNE EC            
  0DC2  F4 E9     NOP $E9,X         ; in RIOT RAM
  0DC4  FF FA FE  ISC $FAFE,X       ; ROM address $FA0E via mirror
  0DC7  FE FE FE  INC LABEL_0106,X  ; ROM address $FE0E via mirror
  0DCA  FD FE FD  SBC $FEFD,Y       ; ROM address $FE0D via mirror
  0DCD  FD FD CA  SBC $FDCA,X       
  0DD0  A9 8C     LDA #$8C          
  0DD2  C6 C6     DEC $C6           ; in RIOT RAM
  0DD4  C6 F6     DEC $F6           ; in RIOT RAM
  0DD6  E0 D1     CPX #$D1          
  0DD8  D1 30     CMP ($30),Y       
  0DDA  D8        CLD               
  0DDB  F5 9A     SBC $9A,X         ; in RIOT RAM
  0DDD  CB CB     SBX #$CB          
  0DDF  CB F6     SBX #$F6          
  0DE1  E0 D1     CPX #$D1          
  0DE3  D1 30     CMP ($30),Y       
  0DE5  92        JAM               
  0DE6  A9 46     LDA #$46          
LABEL_0070:
  0DE8  0E 0B 0E  ASL $0B0E         
  0DEB  05 05     ORA $05           ; NUSIZ1 (W), CXM1FB (R)
  0DED  05 07     ORA $07           ; COLUP1 (W), CXPPMM (R)
  0DEF  10 08     BPL 08            
  0DF1  68        PHP               
  0DF2  0A        ASL A             
  0DF3  03 03     SLO ($03,X)       
  0DF5  03 00     SLO ($00,X)       
  0DF7  7A        NOP               
  0DF8  8C 37 83  STY $3783         
  0DFB  95 FF     STA $FF,X         ; in RIOT RAM
  0DFD  0B 0E     ANC #$0E          
  0DFF  07 0E     SLO $0E           ; PF1 (W)
  0E01  0D F0 F0  ORA LABEL_0117    ; ROM address $F000 via mirror
  0E04  07 FF     SLO $FF           ; in RIOT RAM
  0E06  0B 0E     ANC #$0E          
  0E08  0E 0D F0  ASL LABEL_0118    ; ROM address $0D00 via mirror
  0E0B  F0 0E     BEQ 0E            
  0E0D  07 FF     SLO $FF           ; in RIOT RAM
  0E0F  0B 0E     ANC #$0E          
  0E11  0D F0 F0  ORA LABEL_0117    ; ROM address $F000 via mirror
  0E14  0B 0D     ANC #$0D          
  0E16  07 FF     SLO $FF           ; in RIOT RAM
  0E18  0E 0D F0  ASL LABEL_0118    ; ROM address $0D00 via mirror
  0E1B  F0 0E     BEQ 0E            
  0E1D  07 0D     SLO $0D           ; PF0 (W), INPT5 (R)
  0E1F  0B FF     ANC #$FF          
  0E21  0D F0 F0  ORA LABEL_0117    ; ROM address $F000 via mirror
  0E24  0E 0B 0D  ASL $0B0D         
  0E27  07 0E     SLO $0E           ; PF1 (W)
  0E29  FF F0 F0  ISC LABEL_0117,X  ; ROM address $F000 via mirror
  0E2C  3F 81 A0  RLA $81A0,X       
  0E2F  B3 38     LAX ($38),Y       
  0E31  B3 32     LAX ($32),Y       
  0E33  B3 3E     LAX ($3E),Y       
  0E35  B3 44     LAX ($44),Y       
  0E37  B3 12     LAX ($12),Y       
  0E39  B3 90     LAX ($90),Y       
  0E3B  B3 85     LAX ($85),Y       
  0E3D  B3 4F     LAX ($4F),Y       
  0E3F  B3 56     LAX ($56),Y       
  0E41  B3 A0     LAX ($A0),Y       
  0E43  B3 07     LAX ($07),Y       
  0E45  B3 FA     LAX ($FA),Y       
  0E47  B2        JAM               
  0E48  09 13     ORA #$13          
  0E4A  1E 2A 40  ASL $2A40,X       
  0E4D  4A        LSR A             
  0E4E  55 61     EOR $61,X         
  0E50  FE FD FB  INC $FDFB,X       ; ROM address $FD0B via mirror
  0E53  F7 01     ISC $01,X         ; VBLANK (W), CXM1P (R)
  0E55  02        JAM               
  0E56  04 08     NOP $08           ; COLUPF (W), INPT0 (R)
  0E58  04 03     NOP $03           ; RSYNC (W), CXP1FB (R)
  0E5A  03 02     SLO ($02,X)       
  0E5C  03 02     SLO ($02,X)       
  0E5E  02        JAM               
  0E5F  01 03     ORA ($03,X)       
  0E61  02        JAM               
  0E62  02        JAM               
  0E63  01 02     ORA ($02,X)       
  0E65  01 01     ORA ($01,X)       
  0E67  00        BRK               
  0E68  0A        ASL A             
  0E69  0B 0C     ANC #$0C          
  0E6B  0D A5 81  ORA $A581         
  0E6E  09 18     ORA #$18          
  0E70  85 17     STA $17           ; AUDF0 (W)
  0E72  29 07     AND #$07          
  0E74  85 18     STA $18           ; AUDF1 (W)
  0E76  A5 81     LDA $81           ; SWACNT
  0E78  4A        LSR A             
  0E79  29 1F     AND #$1F          
  0E7B  C9 10     CMP #$10          
  0E7D  90 02     BCC 02            
  0E7F  49 0F     EOR #$0F          
  0E81  85 19     STA $19           ; AUDV0 (W)
  0E83  49 0F     EOR #$0F          
  0E85  85 1A     STA $1A           ; AUDV1 (W)
  0E87  A9 0F     LDA #$0F          
  0E89  85 15     STA $15           ; AUDC0 (W)
  0E8B  A9 0D     LDA #$0D          
  0E8D  85 16     STA $16           ; AUDC1 (W)
  0E8F  60        RTS               
LABEL_0006:
  0E90  BD E8 BD  LDA LABEL_0070,X  ; ROM address $E80D via mirror
  0E93  85 8C     STA $8C           ; in RIOT RAM
  0E95  BD AE BD  LDA LABEL_0072,X  ; ROM address $AE0D via mirror
  0E98  85 AE     STA $AE           ; in RIOT RAM
  0E9A  BD B9 BD  LDA LABEL_0073,X  ; ROM address $B90D via mirror
  0E9D  85 B0     STA $B0           ; in RIOT RAM
  0E9F  BD A3 BD  LDA $A3BD,X       ; ROM address $A30D via mirror
  0EA2  85 AF     STA $AF           ; in RIOT RAM
  0EA4  85 B1     STA $B1           ; in RIOT RAM
  0EA6  BD CF BD  LDA $CFBD,X       ; ROM address $CF0D via mirror
  0EA9  85 B2     STA $B2           ; in RIOT RAM
  0EAB  BD DA BD  LDA $DABD,X       ; ROM address $DA0D via mirror
  0EAE  85 B4     STA $B4           ; in RIOT RAM
  0EB0  BD C4 BD  LDA $C4BD,X       ; ROM address $C40D via mirror
  0EB3  85 B3     STA $B3           ; in RIOT RAM
  0EB5  85 B5     STA $B5           ; in RIOT RAM
  0EB7  24 F2     BIT $F2           ; in RIOT RAM
  0EB9  30 08     BMI 08            
  0EBB  B5 A8     LDA $A8,X         ; in RIOT RAM
  0EBD  85 95     STA $95           ; TIM8T
  0EBF  B5 AB     LDA $AB,X         ; in RIOT RAM
  0EC1  85 9B     STA $9B           ; in RIOT RAM
  0EC3  60        RTS               
  0EC4  17 17     SLO $17,X         ; AUDF0 (W)
  0EC6  17 17     SLO $17,X         ; AUDF0 (W)
  0EC8  0F 0F 0F  SLO LABEL_0128    
  0ECB  0F 11 12  SLO $1112         
  0ECE  14 12     NOP $12,X         ; in TIA Addresses
  0ED0  17 17     SLO $17,X         ; AUDF0 (W)
  0ED2  17 17     SLO $17,X         ; AUDF0 (W)
  0ED4  1F 1F 1F  SLO LABEL_0130,X  
  0ED7  1F 1F 1F  SLO LABEL_0130,X  
  0EDA  1F 1F 1B  SLO $1F1B,X       
  0EDD  1B 1B 1B  SLO LABEL_0132,Y  
  0EE0  0D 0D 0D  ORA $0D0D         
  0EE3  0D 0F 10  ORA $0F10         
  0EE6  12        JAM               
  0EE7  10 14     BPL 14            
  0EE9  14 14     NOP $14,X         ; RESBL (W)
  0EEB  14 1B     NOP $1B,X         ; GRP0 (W)
  0EED  1B 1B 1B  SLO LABEL_0132,Y  
  0EF0  18        CLC               
  0EF1  18        CLC               
  0EF2  18        CLC               
  0EF3  14 12     NOP $12,X         ; in TIA Addresses
  0EF5  17 1F     SLO $1F,X         ; ENABL (W)
  0EF7  1F 1F 1F  SLO LABEL_0130,X  
  0EFA  1F 00 00  SLO LABEL_0095,X  
  0EFD  00        BRK               
LABEL_0106:
  0EFE  00        BRK               
  0EFF  00        BRK               
  0F00  37 39     RLA $39,X         ; in TIA Addresses
  0F02  22        JAM               
  0F03  4A        LSR A             
  0F04  54 81     NOP $81,X         ; SWACNT
  0F06  00        BRK               
  0F07  61 A6     ADC ($A6,X)       
  0F09  74 10     NOP $10,X         ; RESM0 (W)
  0F0B  03 22     SLO ($22,X)       
  0F0D  48        PHA               
  0F0E  59 13 A0  EOR $13A0,Y       
  0F11  21 31     AND ($31,X)       
  0F13  63 40     RRA ($40,X)       
  0F15  45 27     EOR $27           ; in TIA Addresses
  0F17  98        TYA               
  0F18  43 65     SRE ($65,X)       
  0F1A  00        BRK               
  0F1B  2A        ROL A             
  0F1C  71 48     ADC ($48),Y       
  0F1E  93 12     SHA ($12),Y       
  0F20  68        PLA               
  0F21  92        JAM               
  0F22  53 31     SRE ($31),Y       
  0F24  7A        NOP               
  0F25  41 04     EOR ($04,X)       
  0F27  20 31 A2  JSR $31A2         
  0F2A  31 06     AND ($06),Y       
  0F2C  89 07     NOP #$07          
  0F2E  54 42     NOP $42,X         
  0F30  64 81     NOP $81           ; SWACNT
  0F32  52        JAM               
  0F33  21 03     AND ($03,X)       
  0F35  4A        LSR A             
  0F36  39 07 16  AND $0716,Y       
  0F39  73 03     RRA ($03),Y       
  0F3B  A5 14     LDA $14           ; RESBL (W)
  0F3D  04 89     NOP $89           ; in RIOT RAM
  0F3F  22        JAM               
  0F40  2A        ROL A             
  0F41  73 04     RRA ($04),Y       
  0F43  10 38     BPL 38            
  0F45  45 26     EOR $26           ; in TIA Addresses
  0F47  91 61     STA ($61),Y       
  0F49  29 12     AND #$12          
  0F4B  44 7A     NOP $7A           
  0F4D  03 80     SLO ($80,X)       
  0F4F  53 96     SRE ($96),Y       
  0F51  40        RTI               
  0F52  35 02     AND $02,X         ; WSYNC (W), CXP0FB (R)
  0F54  38        SEC               
  0F55  14 17     NOP $17,X         ; AUDF0 (W)
  0F57  A2 13     LDX #$13          
  0F59  A4 71     LDY $71           
  0F5B  23 80     RLA ($80,X)       
  0F5D  60        RTS               
  0F5E  42        JAM               
  0F5F  59 42 14  EOR $4214,Y       
  0F62  53 96     SRE ($96),Y       
  0F64  13 20     SLO ($20),Y       
  0F66  A7 80     LAX $80           ; SWCHA
  0F68  23 84     RLA ($84,X)       
  0F6A  32        JAM               
  0F6B  54 01     NOP $01,X         ; VBLANK (W), CXM1P (R)
  0F6D  69 7A     ADC #$7A          
  0F6F  10 43     BPL 43            
  0F71  02        JAM               
  0F72  97 85     SAX $85,Y         ; TIMINT
  0F74  20 43 11  JSR $4311         
  0F77  6A        ROR A             
  0F78  24 83     BIT $83           ; SWBCNT
  0F7A  43 01     SRE ($01,X)       
  0F7C  6A        ROR A             
  0F7D  29 15     AND #$15          
  0F7F  07 C5     SLO $C5           ; in RIOT RAM
  0F81  A5 F0     LDA $F0           ; in RIOT RAM
  0F83  09 C5     ORA #$C5          
  0F85  A6 F0     LDX $F0           ; in RIOT RAM
  0F87  05 C5     ORA $C5           ; in RIOT RAM
  0F89  A7 F0     LAX $F0           ; in RIOT RAM
  0F8B  01 18     ORA ($18,X)       
  0F8D  60        RTS               
LABEL_0011:
  0F8E  F8        SED               
  0F8F  84 83     STY $83           ; SWBCNT
  0F91  A5 D4     LDA $D4           ; in RIOT RAM
  0F93  18        CLC               
  0F94  65 83     ADC $83           ; SWBCNT
  0F96  85 D4     STA $D4           ; in RIOT RAM
  0F98  86 83     STX $83           ; SWBCNT
  0F9A  A5 D3     LDA $D3           ; in RIOT RAM
  0F9C  65 83     ADC $83           ; SWBCNT
  0F9E  85 D3     STA $D3           ; in RIOT RAM
  0FA0  90 06     BCC 06            
  0FA2  A9 99     LDA #$99          
  0FA4  85 D3     STA $D3           ; in RIOT RAM
  0FA6  85 D4     STA $D4           ; in RIOT RAM
  0FA8  D8        CLD               
  0FA9  60        RTS               
LABEL_0010:
  0FAA  A9 07     LDA #$07          
  0FAC  85 80     STA $80           ; SWCHA
  0FAE  85 81     STA $81           ; SWACNT
  0FB0  20 E3 BA  JSR LABEL_0004    ; ROM address $E30A via mirror
  0FB3  A2 01     LDX #$01          
  0FB5  86 A1     STX $A1           ; in RIOT RAM
  0FB7  20 90 BE  JSR LABEL_0006    ; ROM address $900E via mirror
  0FBA  A9 3C     LDA #$3C          
  0FBC  85 95     STA $95           ; TIM8T
LABEL_0213:
  0FBE  85 96     STA $96           ; TIM64T
  0FC0  A9 0F     LDA #$0F          
  0FC2  85 9B     STA $9B           ; in RIOT RAM
  0FC4  A9 30     LDA #$30          
  0FC6  85 9C     STA $9C           ; in RIOT RAM
  0FC8  A9 00     LDA #$00          
  0FCA  85 DE     STA $DE           ; in RIOT RAM
  0FCC  85 ED     STA $ED           ; in RIOT RAM
  0FCE  60        RTS               
LABEL_0022:
  0FCF  84 86     STY $86           ; in RIOT RAM
  0FD1  F8        SED               
  0FD2  A5 D4     LDA $D4           ; in RIOT RAM
  0FD4  38        SEC               
  0FD5  E5 86     SBC $86           ; in RIOT RAM
  0FD7  85 D4     STA $D4           ; in RIOT RAM
  0FD9  86 86     STX $86           ; in RIOT RAM
  0FDB  A5 D3     LDA $D3           ; in RIOT RAM
  0FDD  E5 86     SBC $86           ; in RIOT RAM
  0FDF  85 D3     STA $D3           ; in RIOT RAM
  0FE1  B0 0B     BCS 0B            
  0FE3  A9 00     LDA #$00          
  0FE5  85 D3     STA $D3           ; in RIOT RAM
  0FE7  85 D4     STA $D4           ; in RIOT RAM
  0FE9  26 E3     ROL $E3           ; in RIOT RAM
  0FEB  38        SEC               
  0FEC  66 E3     ROR $E3           ; in RIOT RAM
  0FEE  D8        CLD               
  0FEF  60        RTS               
  0FF0  00        BRK               
  0FF1  00        BRK               
  0FF2  00        BRK               
  0FF3  00        BRK               
  0FF4  00        BRK               
  0FF5  00        BRK               
  0FF6  00        BRK               
  0FF7  00        BRK               
LABEL_0000:
  0FF8  00        BRK               
  0FF9  00        BRK               
  0FFA  7F BC 7F  RRA $BC7F,X       ; ROM address $BC0F via mirror
  0FFD  BC 7F BC  LDY LABEL_0001,X  ; ROM address $7F0C via mirror
  1000  AD F8 FF  LDA LABEL_0000    ; ROM address $F80F via mirror
  1003  4C 7F BC  JMP LABEL_0001    ; ROM address $7F0C via mirror
  1006  E0 40     CPX #$40          
  1008  90 03     BCC 03            
  100A  4C 33 F1  JMP $33F1         ; ROM address $3301 via mirror
  100D  A9 00     LDA #$00          
  100F  85 1B     STA $1B           ; GRP0 (W)
  1011  85 87     STA $87           ; in RIOT RAM
  1013  A5 81     LDA $81           ; SWACNT
  1015  4A        LSR A             
  1016  29 1F     AND #$1F          
  1018  09 40     ORA #$40          
  101A  85 06     STA $06           ; COLUP0 (W), CXBLPF (R)
  101C  A5 83     LDA $83           ; SWBCNT
  101E  EA        NOP               
  101F  4C 4B F0  JMP $4BF0         ; ROM address $4B00 via mirror
  1022  E4 9F     CPX $9F           ; in RIOT RAM
  1024  68        PHP               
  1025  E4 9E     CPX $9E           ; in RIOT RAM
  1027  68        PHP               
  1028  E4 9D     CPX $9D           ; in RIOT RAM
  102A  68        PHP               
  102B  E8        INX               
  102C  A4 86     LDY $86           ; in RIOT RAM
  102E  8A        TXA               
  102F  38        SEC               
  1030  E5 9B     SBC $9B           ; in RIOT RAM
  1032  C5 8C     CMP $8C           ; in RIOT RAM
  1034  84 1C     STY $1C           ; GRP1 (W)
  1036  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1038  B0 CC     BCS CC            
  103A  A8        TAY               
  103B  B1 AE     LDA ($AE),Y       
  103D  85 1B     STA $1B           ; GRP0 (W)
  103F  B1 B2     LDA ($B2),Y       
  1041  85 06     STA $06           ; COLUP0 (W), CXBLPF (R)
  1043  B1 B0     LDA ($B0),Y       
  1045  85 87     STA $87           ; in RIOT RAM
  1047  B1 B4     LDA ($B4),Y       
  1049  85 88     STA $88           ; in RIOT RAM
  104B  8A        TXA               
  104C  A2 1F     LDX #$1F          
  104E  9A        TXS               
  104F  AA        TAX               
  1050  38        SEC               
  1051  E5 9C     SBC $9C           ; in RIOT RAM
  1053  C5 8D     CMP $8D           ; in RIOT RAM
  1055  B0 20     BCS 20            
  1057  A8        TAY               
  1058  B1 B8     LDA ($B8),Y       
  105A  85 86     STA $86           ; in RIOT RAM
  105C  B1 B6     LDA ($B6),Y       
  105E  85 1C     STA $1C           ; GRP1 (W)
  1060  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1062  A5 87     LDA $87           ; in RIOT RAM
  1064  85 1B     STA $1B           ; GRP0 (W)
  1066  A5 88     LDA $88           ; in RIOT RAM
  1068  85 06     STA $06           ; COLUP0 (W), CXBLPF (R)
  106A  8A        TXA               
  106B  A8        TAY               
  106C  B1 BA     LDA ($BA),Y       
  106E  85 0E     STA $0E           ; PF1 (W)
  1070  B1 BC     LDA ($BC),Y       
  1072  85 0F     STA $0F           ; PF2 (W)
  1074  4C 22 F0  JMP $22F0         ; ROM address $2200 via mirror
  1077  A9 00     LDA #$00          
  1079  85 1C     STA $1C           ; GRP1 (W)
  107B  85 86     STA $86           ; in RIOT RAM
  107D  F0 E1     BEQ E1            
  107F  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1081  E8        INX               
  1082  E0 10     CPX #$10          
  1084  90 F9     BCC F9            
  1086  A9 24     LDA #$24          
  1088  85 06     STA $06           ; COLUP0 (W), CXBLPF (R)
  108A  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  108C  A9 17     LDA #$17          
  108E  85 04     STA $04           ; NUSIZ0 (W), CXM0FB (R)
  1090  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  1092  A9 00     LDA #$00          
  1094  85 0B     STA $0B           ; REFP0 (W), INPT3 (R)
  1096  85 0C     STA $0C           ; REFP1 (W), INPT4 (R)
  1098  A2 0F     LDX #$0F          
  109A  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  109C  BD 9E F9  LDA $9EF9,X       ; ROM address $9E09 via mirror
  109F  85 1B     STA $1B           ; GRP0 (W)
  10A1  BD AE F9  LDA $AEF9,X       ; ROM address $AE09 via mirror
  10A4  85 1C     STA $1C           ; GRP1 (W)
  10A6  E0 02     CPX #$02          
  10A8  B0 06     BCS 06            
  10AA  A9 0F     LDA #$0F          
  10AC  85 1D     STA $1D           ; ENAM0 (W)
  10AE  85 1E     STA $1E           ; ENAM1 (W)
  10B0  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  10B2  CA        DEX               
  10B3  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  10B5  10 E5     BPL E5            
  10B7  A9 00     LDA #$00          
  10B9  85 1B     STA $1B           ; GRP0 (W)
  10BB  85 1C     STA $1C           ; GRP1 (W)
  10BD  85 1D     STA $1D           ; ENAM0 (W)
  10BF  85 1E     STA $1E           ; ENAM1 (W)
  10C1  A2 2F     LDX #$2F          
  10C3  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  10C5  E8        INX               
  10C6  E0 40     CPX #$40          
  10C8  90 F9     BCC F9            
  10CA  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  10CC  85 2A     STA $2A           ; in TIA Addresses
  10CE  A9 03     LDA #$03          
  10D0  A0 00     LDY #$00          
  10D2  84 0C     STY $0C           ; REFP1 (W), INPT4 (R)
  10D4  85 04     STA $04           ; NUSIZ0 (W), CXM0FB (R)
  10D6  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  10D8  85 25     STA $25           ; in TIA Addresses
  10DA  85 26     STA $26           ; in TIA Addresses
  10DC  84 1B     STY $1B           ; GRP0 (W)
  10DE  84 1C     STY $1C           ; GRP1 (W)
  10E0  84 1B     STY $1B           ; GRP0 (W)
  10E2  84 1C     STY $1C           ; GRP1 (W)
  10E4  EA        NOP               
  10E5  85 10     STA $10           ; RESM0 (W)
  10E7  85 11     STA $11           ; RESM1 (W)
  10E9  84 21     STY $21           ; in TIA Addresses
  10EB  A9 F0     LDA #$F0          
  10ED  85 20     STA $20           ; HMP0 (W)
  10EF  84 0B     STY $0B           ; REFP0 (W), INPT3 (R)
  10F1  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  10F3  85 2A     STA $2A           ; in TIA Addresses
  10F5  A9 F7     LDA #$F7          
  10F7  85 BF     STA $BF           ; in RIOT RAM
  10F9  85 C1     STA $C1           ; in RIOT RAM
  10FB  85 C3     STA $C3           ; in RIOT RAM
  10FD  85 C5     STA $C5           ; in RIOT RAM
  10FF  85 C7     STA $C7           ; in RIOT RAM
  1101  85 C9     STA $C9           ; in RIOT RAM
  1103  A9 21     LDA #$21          
  1105  85 BE     STA $BE           ; in RIOT RAM
  1107  A9 49     LDA #$49          
  1109  85 C0     STA $C0           ; in RIOT RAM
  110B  A9 71     LDA #$71          
  110D  85 C2     STA $C2           ; in RIOT RAM
  110F  A9 99     LDA #$99          
  1111  85 C4     STA $C4           ; in RIOT RAM
  1113  A9 C1     LDA #$C1          
  1115  85 C6     STA $C6           ; in RIOT RAM
  1117  A9 00     LDA #$00          
  1119  85 C8     STA $C8           ; in RIOT RAM
  111B  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  111D  A9 EA     LDA #$EA          
  111F  85 06     STA $06           ; COLUP0 (W), CXBLPF (R)
  1121  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  1123  A9 27     LDA #$27          
  1125  85 83     STA $83           ; SWBCNT
  1127  20 09 F5  JSR LABEL_0146    ; ROM address $0905 via mirror
  112A  A2 6E     LDX #$6E          
  112C  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  112E  E8        INX               
  112F  E0 80     CPX #$80          
  1131  90 F9     BCC F9            
  1133  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1135  A2 FF     LDX #$FF          
  1137  9A        TXS               
  1138  86 0E     STX $0E           ; PF1 (W)
  113A  86 0F     STX $0F           ; PF2 (W)
  113C  E8        INX               
  113D  86 1B     STX $1B           ; GRP0 (W)
  113F  86 1C     STX $1C           ; GRP1 (W)
  1141  86 1D     STX $1D           ; ENAM0 (W)
  1143  86 1E     STX $1E           ; ENAM1 (W)
  1145  86 1F     STX $1F           ; ENABL (W)
  1147  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1149  A5 81     LDA $81           ; SWACNT
  114B  29 07     AND #$07          
  114D  D0 12     BNE 12            
  114F  A5 E6     LDA $E6           ; in RIOT RAM
  1151  10 0E     BPL 0E            
  1153  29 7F     AND #$7F          
  1155  C9 30     CMP #$30          
  1157  B0 08     BCS 08            
  1159  69 90     ADC #$90          
  115B  85 E6     STA $E6           ; in RIOT RAM
  115D  A9 83     LDA #$83          
  115F  85 8A     STA $8A           ; in RIOT RAM
  1161  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1163  A9 C0     LDA #$C0          
  1165  85 06     STA $06           ; COLUP0 (W), CXBLPF (R)
  1167  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  1169  A2 00     LDX #$00          
  116B  86 20     STX $20           ; HMP0 (W)
  116D  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  116F  86 0D     STX $0D           ; PF0 (W), INPT5 (R)
  1171  86 09     STX $09           ; COLUBK (W), INPT1 (R)
  1173  86 0E     STX $0E           ; PF1 (W)
  1175  86 0F     STX $0F           ; PF2 (W)
  1177  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1179  85 2A     STA $2A           ; in TIA Addresses
  117B  A9 03     LDA #$03          
  117D  A0 00     LDY #$00          
  117F  84 0C     STY $0C           ; REFP1 (W), INPT4 (R)
  1181  85 04     STA $04           ; NUSIZ0 (W), CXM0FB (R)
  1183  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  1185  85 25     STA $25           ; in TIA Addresses
  1187  85 26     STA $26           ; in TIA Addresses
  1189  84 1B     STY $1B           ; GRP0 (W)
  118B  84 1C     STY $1C           ; GRP1 (W)
  118D  84 1B     STY $1B           ; GRP0 (W)
  118F  84 1C     STY $1C           ; GRP1 (W)
  1191  EA        NOP               
  1192  85 10     STA $10           ; RESM0 (W)
  1194  85 11     STA $11           ; RESM1 (W)
  1196  84 21     STY $21           ; in TIA Addresses
  1198  A9 F0     LDA #$F0          
  119A  85 20     STA $20           ; HMP0 (W)
  119C  84 0B     STY $0B           ; REFP0 (W), INPT3 (R)
  119E  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  11A0  85 2A     STA $2A           ; in TIA Addresses
  11A2  A5 D2     LDA $D2           ; in RIOT RAM
  11A4  85 83     STA $83           ; SWBCNT
  11A6  A5 D3     LDA $D3           ; in RIOT RAM
  11A8  85 84     STA $84           ; INTIM
  11AA  A5 D4     LDA $D4           ; in RIOT RAM
  11AC  85 85     STA $85           ; TIMINT
  11AE  A5 80     LDA $80           ; SWCHA
  11B0  C9 08     CMP #$08          
  11B2  D0 08     BNE 08            
  11B4  24 E4     BIT $E4           ; in RIOT RAM
  11B6  30 04     BMI 04            
  11B8  A9 FC     LDA #$FC          
  11BA  D0 02     BNE 02            
  11BC  A9 FA     LDA #$FA          
  11BE  85 BF     STA $BF           ; in RIOT RAM
  11C0  85 C1     STA $C1           ; in RIOT RAM
  11C2  85 C3     STA $C3           ; in RIOT RAM
  11C4  85 C5     STA $C5           ; in RIOT RAM
  11C6  85 C7     STA $C7           ; in RIOT RAM
  11C8  85 C9     STA $C9           ; in RIOT RAM
  11CA  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  11CC  A5 80     LDA $80           ; SWCHA
  11CE  C9 07     CMP #$07          
  11D0  90 0C     BCC 0C            
  11D2  A5 DF     LDA $DF           ; in RIOT RAM
  11D4  85 83     STA $83           ; SWBCNT
  11D6  A5 E0     LDA $E0           ; in RIOT RAM
  11D8  85 84     STA $84           ; INTIM
  11DA  A5 E1     LDA $E1           ; in RIOT RAM
  11DC  85 85     STA $85           ; TIMINT
  11DE  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  11E0  A9 9A     LDA #$9A          
  11E2  85 09     STA $09           ; COLUBK (W), INPT1 (R)
  11E4  A5 83     LDA $83           ; SWBCNT
  11E6  29 F0     AND #$F0          
  11E8  D0 02     BNE 02            
  11EA  A9 A0     LDA #$A0          
  11EC  4A        LSR A             
  11ED  85 BE     STA $BE           ; in RIOT RAM
  11EF  A5 83     LDA $83           ; SWBCNT
  11F1  29 0F     AND #$0F          
  11F3  0A        ASL A             
  11F4  0A        ASL A             
  11F5  0A        ASL A             
  11F6  85 C0     STA $C0           ; in RIOT RAM
  11F8  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  11FA  A5 84     LDA $84           ; INTIM
  11FC  29 F0     AND #$F0          
  11FE  4A        LSR A             
  11FF  85 C2     STA $C2           ; in RIOT RAM
  1201  A5 84     LDA $84           ; INTIM
  1203  29 0F     AND #$0F          
  1205  0A        ASL A             
  1206  0A        ASL A             
  1207  0A        ASL A             
  1208  85 C4     STA $C4           ; in RIOT RAM
  120A  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  120C  A9 69     LDA #$69          
  120E  C5 F1     CMP $F1           ; in RIOT RAM
  1210  D0 04     BNE 04            
  1212  A9 BC     LDA #$BC          
  1214  85 85     STA $85           ; TIMINT
  1216  A5 85     LDA $85           ; TIMINT
  1218  29 F0     AND #$F0          
  121A  4A        LSR A             
  121B  85 C6     STA $C6           ; in RIOT RAM
  121D  A5 85     LDA $85           ; TIMINT
  121F  29 0F     AND #$0F          
  1221  0A        ASL A             
  1222  0A        ASL A             
  1223  0A        ASL A             
  1224  85 C8     STA $C8           ; in RIOT RAM
  1226  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1228  A0 50     LDY #$50          
  122A  A6 80     LDX $80           ; SWCHA
  122C  E0 07     CPX #$07          
  122E  90 0A     BCC 0A            
  1230  C4 BE     CPY $BE           ; in RIOT RAM
  1232  D0 18     BNE 18            
  1234  A5 C0     LDA $C0           ; in RIOT RAM
  1236  D0 14     BNE 14            
  1238  84 C0     STY $C0           ; in RIOT RAM
  123A  A5 C2     LDA $C2           ; in RIOT RAM
  123C  D0 0E     BNE 0E            
  123E  84 C2     STY $C2           ; in RIOT RAM
  1240  A5 C4     LDA $C4           ; in RIOT RAM
  1242  D0 08     BNE 08            
  1244  84 C4     STY $C4           ; in RIOT RAM
  1246  A5 C6     LDA $C6           ; in RIOT RAM
  1248  D0 02     BNE 02            
  124A  84 C6     STY $C6           ; in RIOT RAM
  124C  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  124E  A9 FC     LDA #$FC          
  1250  C5 BF     CMP $BF           ; in RIOT RAM
  1252  D0 18     BNE 18            
  1254  A9 00     LDA #$00          
  1256  85 BE     STA $BE           ; in RIOT RAM
  1258  A9 B0     LDA #$B0          
  125A  85 C0     STA $C0           ; in RIOT RAM
  125C  A9 B8     LDA #$B8          
  125E  85 C2     STA $C2           ; in RIOT RAM
  1260  A9 C0     LDA #$C0          
  1262  85 C4     STA $C4           ; in RIOT RAM
  1264  A9 C8     LDA #$C8          
  1266  85 C6     STA $C6           ; in RIOT RAM
  1268  A9 D0     LDA #$D0          
  126A  85 C8     STA $C8           ; in RIOT RAM
  126C  A9 07     LDA #$07          
  126E  85 83     STA $83           ; SWBCNT
  1270  20 09 F5  JSR LABEL_0146    ; ROM address $0905 via mirror
  1273  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1275  A9 02     LDA #$02          
  1277  2D 82 02  AND LABEL_0030    
  127A  D0 0A     BNE 0A            
  127C  A9 88     LDA #$88          
  127E  85 E2     STA $E2           ; in RIOT RAM
  1280  85 E4     STA $E4           ; in RIOT RAM
  1282  A9 00     LDA #$00          
  1284  85 EB     STA $EB           ; in RIOT RAM
  1286  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1288  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  128A  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  128C  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  128E  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1290  A2 0F     LDX #$0F          
  1292  86 01     STX $01           ; VBLANK (W), CXM1P (R)
  1294  20 08 F5  JSR LABEL_0147    ; ROM address $0805 via mirror
  1297  20 08 F5  JSR LABEL_0147    ; ROM address $0805 via mirror
  129A  A2 2D     LDX #$2D          
  129C  8E 96 02  STX LABEL_0035    
  129F  6E 82 02  ROR LABEL_0030    
  12A2  B0 0D     BCS 0D            
  12A4  A9 40     LDA #$40          
  12A6  24 89     BIT $89           ; in RIOT RAM
  12A8  70 0D     BVS 0D            
  12AA  05 89     ORA $89           ; in RIOT RAM
  12AC  85 89     STA $89           ; in RIOT RAM
  12AE  4C F3 F3  JMP LABEL_0148    ; ROM address $F303 via mirror
  12B1  A5 89     LDA $89           ; in RIOT RAM
  12B3  29 BF     AND #$BF          
  12B5  85 89     STA $89           ; in RIOT RAM
  12B7  20 B6 F6  JSR $B6F6         ; ROM address $B606 via mirror
  12BA  20 EB FD  JSR $EBFD         ; ROM address $EB0D via mirror
  12BD  20 E0 FC  JSR $E0FC         ; ROM address $E00C via mirror
  12C0  A5 8A     LDA $8A           ; in RIOT RAM
  12C2  30 4D     BMI 4D            
  12C4  A6 A1     LDX $A1           ; in RIOT RAM
  12C6  30 0C     BMI 0C            
  12C8  A5 80     LDA $80           ; SWCHA
  12CA  C9 07     CMP #$07          
  12CC  F0 43     BEQ 43            
  12CE  A5 81     LDA $81           ; SWACNT
  12D0  29 0F     AND #$0F          
  12D2  F0 05     BEQ 05            
  12D4  A9 80     LDA #$80          
  12D6  4C 15 F3  JMP $15F3         ; ROM address $1503 via mirror
  12D9  A9 13     LDA #$13          
  12DB  85 15     STA $15           ; AUDC0 (W)
  12DD  24 81     BIT $81           ; SWACNT
  12DF  D0 02     BNE 02            
  12E1  A9 16     LDA #$16          
  12E3  85 17     STA $17           ; AUDF0 (W)
  12E5  A5 96     LDA $96           ; TIM64T
  12E7  E5 95     SBC $95           ; TIM8T
  12E9  10 02     BPL 02            
  12EB  49 FF     EOR #$FF          
  12ED  85 83     STA $83           ; SWBCNT
  12EF  A5 9C     LDA $9C           ; in RIOT RAM
  12F1  E5 9B     SBC $9B           ; in RIOT RAM
  12F3  0A        ASL A             
  12F4  10 02     BPL 02            
  12F6  49 FF     EOR #$FF          
  12F8  C5 83     CMP $83           ; SWBCNT
  12FA  B0 03     BCS 03            
  12FC  4A        LSR A             
  12FD  10 02     BPL 02            
  12FF  46 83     LSR $83           ; SWBCNT
  1301  18        CLC               
  1302  65 83     ADC $83           ; SWBCNT
  1304  10 04     BPL 04            
  1306  A9 00     LDA #$00          
  1308  F0 05     BEQ 05            
  130A  4A        LSR A             
  130B  4A        LSR A             
  130C  4A        LSR A             
  130D  49 0F     EOR #$0F          
  130F  85 19     STA $19           ; AUDV0 (W)
  1311  A5 8A     LDA $8A           ; in RIOT RAM
  1313  10 0F     BPL 0F            
  1315  85 15     STA $15           ; AUDC0 (W)
  1317  85 19     STA $19           ; AUDV0 (W)
  1319  85 17     STA $17           ; AUDF0 (W)
  131B  0A        ASL A             
  131C  F0 06     BEQ 06            
  131E  A9 80     LDA #$80          
  1320  85 8A     STA $8A           ; in RIOT RAM
  1322  D0 02     BNE 02            
  1324  46 8A     LSR $8A           ; in RIOT RAM
  1326  24 EB     BIT $EB           ; in RIOT RAM
  1328  30 11     BMI 11            
  132A  A5 80     LDA $80           ; SWCHA
  132C  C9 07     CMP #$07          
  132E  F0 25     BEQ 25            
  1330  C9 08     CMP #$08          
  1332  D0 0A     BNE 0A            
  1334  24 3C     BIT $3C           ; in TIA Addresses
  1336  30 03     BMI 03            
  1338  4C F3 F3  JMP LABEL_0148    ; ROM address $F303 via mirror
  133B  4C D4 F4  JMP LABEL_0153    ; ROM address $D404 via mirror
  133E  4C A5 F4  JMP $A5F4         ; ROM address $A504 via mirror
  1341  00        BRK               
  1342  90 80     BCC 80            
  1344  70 60     BVS 60            
  1346  50 40     BVC 40            
  1348  30 20     BMI 20            
  134A  10 00     BPL 00            
  134C  04 09     NOP $09           ; COLUBK (W), INPT1 (R)
  134E  14 19     NOP $19,X         ; AUDV0 (W)
  1350  24 29     BIT $29           ; in TIA Addresses
  1352  34 39     NOP $39,X         ; in TIA Addresses
  1354  44 A9     NOP $A9           ; in RIOT RAM
  1356  03 25     SLO ($25,X)       
  1358  81 D0     STA ($D0,X)       
  135A  19 24 ED  ORA $24ED,Y       
  135D  10 04     BPL 04            
  135F  E6 95     INC $95           ; TIM8T
  1361  D0 02     BNE 02            
  1363  C6 95     DEC $95           ; TIM8T
  1365  A5 95     LDA $95           ; TIM8T
  1367  38        SEC               
  1368  E9 1C     SBC #$1C          
  136A  C9 40     CMP #$40          
  136C  90 06     BCC 06            
  136E  A9 80     LDA #$80          
  1370  45 ED     EOR $ED           ; in RIOT RAM
  1372  85 ED     STA $ED           ; in RIOT RAM
  1374  24 DE     BIT $DE           ; in RIOT RAM
  1376  70 34     BVS 34            
  1378  A5 81     LDA $81           ; SWACNT
  137A  C9 60     CMP #$60          
  137C  D0 07     BNE 07            
  137E  A4 D4     LDY $D4           ; in RIOT RAM
  1380  A6 D3     LDX $D3           ; in RIOT RAM
  1382  4C A3 F3  JMP $A3F3         ; ROM address $A303 via mirror
  1385  C9 C0     CMP #$C0          
  1387  F0 0C     BEQ 0C            
  1389  C9 FF     CMP #$FF          
  138B  D0 41     BNE 41            
  138D  A9 40     LDA #$40          
  138F  05 DE     ORA $DE           ; in RIOT RAM
  1391  85 DE     STA $DE           ; in RIOT RAM
  1393  D0 39     BNE 39            
  1395  A5 D2     LDA $D2           ; in RIOT RAM
  1397  4A        LSR A             
  1398  4A        LSR A             
  1399  4A        LSR A             
  139A  4A        LSR A             
  139B  A8        TAY               
  139C  BE 4B F3  LDX $4BF3,Y       ; ROM address $4B03 via mirror
  139F  B9 41 F3  LDA $41F3,Y       ; ROM address $4103 via mirror
  13A2  A8        TAY               
  13A3  20 EF F4  JSR LABEL_0159    ; ROM address $EF04 via mirror
  13A6  A9 8C     LDA #$8C          
  13A8  85 8A     STA $8A           ; in RIOT RAM
  13AA  D0 22     BNE 22            
  13AC  A4 DD     LDY $DD           ; in RIOT RAM
  13AE  F0 32     BEQ 32            
  13B0  A5 81     LDA $81           ; SWACNT
  13B2  29 1F     AND #$1F          
  13B4  D0 1B     BNE 1B            
  13B6  88        DEY               
  13B7  84 DD     STY $DD           ; in RIOT RAM
  13B9  A9 8F     LDA #$8F          
  13BB  85 8A     STA $8A           ; in RIOT RAM
  13BD  A9 06     LDA #$06          
  13BF  85 8B     STA $8B           ; in RIOT RAM
  13C1  A9 01     LDA #$01          
  13C3  05 DE     ORA $DE           ; in RIOT RAM
  13C5  85 DE     STA $DE           ; in RIOT RAM
  13C7  A2 07     LDX #$07          
  13C9  A0 70     LDY #$70          
  13CB  20 EF F4  JSR LABEL_0159    ; ROM address $EF04 via mirror
  13CE  4C A2 F4  JMP LABEL_0160    ; ROM address $A204 via mirror
  13D1  C9 0F     CMP #$0F          
  13D3  D0 F9     BNE F9            
  13D5  A9 88     LDA #$88          
  13D7  85 8A     STA $8A           ; in RIOT RAM
  13D9  A5 DE     LDA $DE           ; in RIOT RAM
  13DB  29 FE     AND #$FE          
  13DD  85 DE     STA $DE           ; in RIOT RAM
  13DF  4C A2 F4  JMP LABEL_0160    ; ROM address $A204 via mirror
  13E2  24 E4     BIT $E4           ; in RIOT RAM
  13E4  10 07     BPL 07            
  13E6  A9 88     LDA #$88          
  13E8  85 E2     STA $E2           ; in RIOT RAM
  13EA  4C D4 F4  JMP LABEL_0153    ; ROM address $D404 via mirror
  13ED  24 3C     BIT $3C           ; in TIA Addresses
  13EF  30 DD     BMI DD            
  13F1  10 22     BPL 22            
  13F3  A9 10     LDA #$10          
  13F5  85 DC     STA $DC           ; in RIOT RAM
  13F7  85 E4     STA $E4           ; in RIOT RAM
  13F9  A9 02     LDA #$02          
  13FB  85 E5     STA $E5           ; in RIOT RAM
  13FD  A9 00     LDA #$00          
  13FF  85 E3     STA $E3           ; in RIOT RAM
  1401  85 DD     STA $DD           ; in RIOT RAM
  1403  85 EB     STA $EB           ; in RIOT RAM
  1405  85 D9     STA $D9           ; in RIOT RAM
  1407  85 94     STA $94           ; TIM1T
  1409  85 91     STA $91           ; in RIOT RAM
  140B  85 F0     STA $F0           ; in RIOT RAM
  140D  85 DF     STA $DF           ; in RIOT RAM
  140F  85 E0     STA $E0           ; in RIOT RAM
  1411  A9 03     LDA #$03          
  1413  85 E1     STA $E1           ; in RIOT RAM
  1415  26 89     ROL $89           ; in RIOT RAM
  1417  38        SEC               
  1418  66 89     ROR $89           ; in RIOT RAM
  141A  26 F0     ROL $F0           ; in RIOT RAM
  141C  18        CLC               
  141D  66 F0     ROR $F0           ; in RIOT RAM
  141F  A9 84     LDA #$84          
  1421  85 E2     STA $E2           ; in RIOT RAM
  1423  85 EB     STA $EB           ; in RIOT RAM
  1425  A9 FF     LDA #$FF          
  1427  85 A2     STA $A2           ; in RIOT RAM
  1429  85 A3     STA $A3           ; in RIOT RAM
  142B  85 A4     STA $A4           ; in RIOT RAM
  142D  85 A2     STA $A2           ; in RIOT RAM
  142F  85 A3     STA $A3           ; in RIOT RAM
  1431  85 A4     STA $A4           ; in RIOT RAM
  1433  85 D0     STA $D0           ; in RIOT RAM
  1435  A9 0A     LDA #$0A          
  1437  85 D2     STA $D2           ; in RIOT RAM
  1439  A5 81     LDA $81           ; SWACNT
  143B  45 82     EOR $82           ; SWCHB
  143D  29 07     AND #$07          
  143F  C9 06     CMP #$06          
  1441  90 02     BCC 02            
  1443  E9 04     SBC #$04          
  1445  85 DB     STA $DB           ; in RIOT RAM
  1447  A5 82     LDA $82           ; SWCHB
  1449  29 03     AND #$03          
  144B  AA        TAX               
  144C  A5 81     LDA $81           ; SWACNT
  144E  29 0F     AND #$0F          
  1450  85 E6     STA $E6           ; in RIOT RAM
  1452  7D F7 F8  ADC LABEL_0161,X  ; ROM address $F708 via mirror
  1455  29 0F     AND #$0F          
  1457  85 CB     STA $CB           ; in RIOT RAM
  1459  7D F7 F8  ADC LABEL_0161,X  ; ROM address $F708 via mirror
  145C  29 0F     AND #$0F          
  145E  85 CA     STA $CA           ; in RIOT RAM
  1460  7D F7 F8  ADC LABEL_0161,X  ; ROM address $F708 via mirror
  1463  29 0F     AND #$0F          
  1465  85 CC     STA $CC           ; in RIOT RAM
  1467  A5 81     LDA $81           ; SWACNT
  1469  29 03     AND #$03          
  146B  AA        TAX               
  146C  A5 82     LDA $82           ; SWCHB
  146E  85 E7     STA $E7           ; in RIOT RAM
  1470  7D F7 F8  ADC LABEL_0161,X  ; ROM address $F708 via mirror
  1473  85 E8     STA $E8           ; in RIOT RAM
  1475  7D F7 F8  ADC LABEL_0161,X  ; ROM address $F708 via mirror
  1478  85 E9     STA $E9           ; in RIOT RAM
  147A  A5 DC     LDA $DC           ; in RIOT RAM
  147C  C9 1F     CMP #$1F          
  147E  90 1A     BCC 1A            
  1480  E9 1F     SBC #$1F          
  1482  4A        LSR A             
  1483  AA        TAX               
  1484  BD F1 F7  LDA $F1F7,X       ; ROM address $F107 via mirror
  1487  85 D3     STA $D3           ; in RIOT RAM
  1489  85 D4     STA $D4           ; in RIOT RAM
  148B  BD E9 F7  LDA $E9F7,X       ; ROM address $E907 via mirror
  148E  AA        TAX               
  148F  A0 00     LDY #$00          
  1491  20 EF F4  JSR LABEL_0159    ; ROM address $EF04 via mirror
  1494  A9 1F     LDA #$1F          
  1496  85 DC     STA $DC           ; in RIOT RAM
  1498  D0 0B     BNE 0B            
  149A  A9 99     LDA #$99          
  149C  85 D3     STA $D3           ; in RIOT RAM
  149E  85 D4     STA $D4           ; in RIOT RAM
  14A0  D0 03     BNE 03            
  14A2  4C D4 F4  JMP LABEL_0153    ; ROM address $D404 via mirror
  14A5  24 E3     BIT $E3           ; in RIOT RAM
  14A7  10 2B     BPL 2B            
  14A9  70 29     BVS 29            
  14AB  A9 80     LDA #$80          
  14AD  85 A2     STA $A2           ; in RIOT RAM
  14AF  85 A3     STA $A3           ; in RIOT RAM
  14B1  85 A4     STA $A4           ; in RIOT RAM
  14B3  A9 00     LDA #$00          
  14B5  85 94     STA $94           ; TIM1T
  14B7  A5 80     LDA $80           ; SWCHA
  14B9  C9 06     CMP #$06          
  14BB  D0 11     BNE 11            
  14BD  A5 D9     LDA $D9           ; in RIOT RAM
  14BF  29 20     AND #$20          
  14C1  D0 0B     BNE 0B            
  14C3  A9 80     LDA #$80          
  14C5  85 D9     STA $D9           ; in RIOT RAM
  14C7  A2 FF     LDX #$FF          
  14C9  86 A1     STX $A1           ; in RIOT RAM
  14CB  E8        INX               
  14CC  86 8C     STX $8C           ; in RIOT RAM
  14CE  A9 40     LDA #$40          
  14D0  05 E3     ORA $E3           ; in RIOT RAM
  14D2  85 E3     STA $E3           ; in RIOT RAM
  14D4  A9 2D     LDA #$2D          
  14D6  85 87     STA $87           ; in RIOT RAM
  14D8  A9 B0     LDA #$B0          
  14DA  85 88     STA $88           ; in RIOT RAM
  14DC  A9 AD     LDA #$AD          
  14DE  85 83     STA $83           ; SWBCNT
  14E0  A9 F8     LDA #$F8          
  14E2  85 84     STA $84           ; INTIM
  14E4  A9 FF     LDA #$FF          
  14E6  85 85     STA $85           ; TIMINT
  14E8  A9 4C     LDA #$4C          
  14EA  85 86     STA $86           ; in RIOT RAM
  14EC  4C 83 00  JMP LABEL_0084    
  14EF  F8        SED               
  14F0  84 83     STY $83           ; SWBCNT
  14F2  18        CLC               
  14F3  A5 E1     LDA $E1           ; in RIOT RAM
  14F5  65 83     ADC $83           ; SWBCNT
  14F7  85 E1     STA $E1           ; in RIOT RAM
  14F9  86 83     STX $83           ; SWBCNT
  14FB  A5 E0     LDA $E0           ; in RIOT RAM
  14FD  65 83     ADC $83           ; SWBCNT
  14FF  85 E0     STA $E0           ; in RIOT RAM
  1501  A5 DF     LDA $DF           ; in RIOT RAM
  1503  69 00     ADC #$00          
  1505  85 DF     STA $DF           ; in RIOT RAM
  1507  D8        CLD               
  1508  60        RTS               
  1509  A4 83     LDY $83           ; SWBCNT
  150B  B1 BE     LDA ($BE),Y       
  150D  85 1B     STA $1B           ; GRP0 (W)
  150F  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1511  B1 C0     LDA ($C0),Y       
  1513  85 1C     STA $1C           ; GRP1 (W)
  1515  B1 C2     LDA ($C2),Y       
  1517  85 1B     STA $1B           ; GRP0 (W)
  1519  B1 C4     LDA ($C4),Y       
  151B  85 84     STA $84           ; INTIM
  151D  B1 C6     LDA ($C6),Y       
  151F  AA        TAX               
  1520  B1 C8     LDA ($C8),Y       
  1522  A8        TAY               
  1523  A5 84     LDA $84           ; INTIM
  1525  85 1C     STA $1C           ; GRP1 (W)
  1527  86 1B     STX $1B           ; GRP0 (W)
  1529  84 1C     STY $1C           ; GRP1 (W)
  152B  84 1B     STY $1B           ; GRP0 (W)
  152D  C6 83     DEC $83           ; SWBCNT
  152F  10 D8     BPL D8            
  1531  A9 00     LDA #$00          
  1533  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1535  85 1B     STA $1B           ; GRP0 (W)
  1537  85 1C     STA $1C           ; GRP1 (W)
  1539  85 1B     STA $1B           ; GRP0 (W)
  153B  85 1C     STA $1C           ; GRP1 (W)
  153D  85 04     STA $04           ; NUSIZ0 (W), CXM0FB (R)
LABEL_0211:
  153F  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  1541  85 25     STA $25           ; in TIA Addresses
  1543  85 26     STA $26           ; in TIA Addresses
  1545  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1547  60        RTS               
  1548  A9 06     LDA #$06          
  154A  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  154C  A9 52     LDA #$52          
  154E  85 09     STA $09           ; COLUBK (W), INPT1 (R)
  1550  A9 00     LDA #$00          
  1552  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1554  85 01     STA $01           ; VBLANK (W), CXM1P (R)
  1556  85 2B     STA $2B           ; in TIA Addresses
  1558  85 2C     STA $2C           ; in TIA Addresses
  155A  A9 FC     LDA #$FC          
  155C  85 BF     STA $BF           ; in RIOT RAM
  155E  85 C1     STA $C1           ; in RIOT RAM
  1560  A9 FB     LDA #$FB          
  1562  85 C3     STA $C3           ; in RIOT RAM
  1564  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1566  A2 03     LDX #$03          
  1568  24 CA     BIT $CA           ; in RIOT RAM
  156A  10 01     BPL 01            
  156C  CA        DEX               
  156D  24 CB     BIT $CB           ; in RIOT RAM
  156F  10 01     BPL 01            
  1571  CA        DEX               
  1572  24 CC     BIT $CC           ; in RIOT RAM
  1574  10 01     BPL 01            
  1576  CA        DEX               
  1577  BD E8 FB  LDA $E8FB,X       ; ROM address $E80B via mirror
  157A  85 C2     STA $C2           ; in RIOT RAM
  157C  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  157E  A9 00     LDA #$00          
  1580  A4 80     LDY $80           ; SWCHA
  1582  C0 07     CPY #$07          
  1584  90 1E     BCC 1E            
  1586  85 C0     STA $C0           ; in RIOT RAM
  1588  85 C2     STA $C2           ; in RIOT RAM
  158A  D0 0D     BNE 0D            
  158C  A2 30     LDX #$30          
  158E  A5 DE     LDA $DE           ; in RIOT RAM
  1590  6A        ROR A             
  1591  90 02     BCC 02            
  1593  A2 A8     LDX #$A8          
  1595  86 BE     STX $BE           ; in RIOT RAM
  1597  D0 0B     BNE 0B            
  1599  A9 FA     LDA #$FA          
  159B  85 BF     STA $BF           ; in RIOT RAM
  159D  A5 EA     LDA $EA           ; in RIOT RAM
  159F  0A        ASL A             
  15A0  0A        ASL A             
  15A1  0A        ASL A             
  15A2  85 BE     STA $BE           ; in RIOT RAM
  15A4  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15A6  24 EB     BIT $EB           ; in RIOT RAM
  15A8  10 06     BPL 06            
  15AA  A9 00     LDA #$00          
  15AC  85 C0     STA $C0           ; in RIOT RAM
  15AE  85 C2     STA $C2           ; in RIOT RAM
  15B0  A5 F3     LDA $F3           ; in RIOT RAM
  15B2  F0 04     BEQ 04            
  15B4  A9 D8     LDA #$D8          
  15B6  85 C0     STA $C0           ; in RIOT RAM
  15B8  A9 07     LDA #$07          
  15BA  85 83     STA $83           ; SWBCNT
  15BC  A4 83     LDY $83           ; SWBCNT
  15BE  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15C0  EA        NOP               
  15C1  EA        NOP               
  15C2  A5 8E     LDA $8E           ; in RIOT RAM
  15C4  48        PHA               
  15C5  A5 90     LDA $90           ; in RIOT RAM
  15C7  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  15C9  B1 C2     LDA ($C2),Y       
  15CB  85 1C     STA $1C           ; GRP1 (W)
  15CD  B1 BE     LDA ($BE),Y       
  15CF  AA        TAX               
  15D0  B1 C0     LDA ($C0),Y       
  15D2  A8        TAY               
  15D3  68        PLA               
  15D4  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  15D6  86 1C     STX $1C           ; GRP1 (W)
  15D8  A5 8F     LDA $8F           ; in RIOT RAM
  15DA  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  15DC  84 1C     STY $1C           ; GRP1 (W)
  15DE  C6 83     DEC $83           ; SWBCNT
  15E0  10 DA     BPL DA            
  15E2  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15E4  A9 00     LDA #$00          
  15E6  85 1C     STA $1C           ; GRP1 (W)
  15E8  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  15EA  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15EC  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15EE  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15F0  A9 00     LDA #$00          
  15F2  85 09     STA $09           ; COLUBK (W), INPT1 (R)
  15F4  A2 01     LDX #$01          
  15F6  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  15F8  EA        NOP               
  15F9  EA        NOP               
  15FA  A5 D5     LDA $D5           ; in RIOT RAM
  15FC  A5 D5     LDA $D5           ; in RIOT RAM
  15FE  95 20     STA $20,X         ; HMP0 (W)
  1600  29 0F     AND #$0F          
  1602  A8        TAY               
  1603  88        DEY               
  1604  10 FD     BPL FD            
  1606  95 10     STA $10,X         ; RESM0 (W)
  1608  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  160A  85 2A     STA $2A           ; in TIA Addresses
  160C  A9 11     LDA #$11          
  160E  A6 80     LDX $80           ; SWCHA
  1610  E0 05     CPX #$05          
  1612  D0 02     BNE 02            
  1614  A9 15     LDA #$15          
  1616  85 0A     STA $0A           ; CTRLPF (W), INPT2 (R)
  1618  A2 FF     LDX #$FF          
  161A  2C 80 02  BIT LABEL_0039    
  161D  10 01     BPL 01            
  161F  E8        INX               
  1620  86 0C     STX $0C           ; REFP1 (W), INPT4 (R)
  1622  A6 A1     LDX $A1           ; in RIOT RAM
  1624  30 18     BMI 18            
  1626  24 91     BIT $91           ; in RIOT RAM
  1628  70 14     BVS 14            
  162A  A0 FF     LDY #$FF          
  162C  B5 A2     LDA $A2,X         ; in RIOT RAM
  162E  10 05     BPL 05            
  1630  BD E6 FF  LDA $E6FF,X       ; ROM address $E60F via mirror
  1633  D0 02     BNE 02            
  1635  A5 96     LDA $96           ; TIM64T
  1637  C5 95     CMP $95           ; TIM8T
  1639  90 01     BCC 01            
  163B  C8        INY               
  163C  84 0B     STY $0B           ; REFP0 (W), INPT3 (R)
  163E  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1640  A6 80     LDX $80           ; SWCHA
  1642  E0 07     CPX #$07          
  1644  D0 12     BNE 12            
  1646  24 ED     BIT $ED           ; in RIOT RAM
  1648  10 06     BPL 06            
  164A  A9 11     LDA #$11          
  164C  85 0A     STA $0A           ; CTRLPF (W), INPT2 (R)
  164E  D0 06     BNE 06            
  1650  A9 15     LDA #$15          
  1652  85 0A     STA $0A           ; CTRLPF (W), INPT2 (R)
  1654  A9 FF     LDA #$FF          
  1656  85 0B     STA $0B           ; REFP0 (W), INPT3 (R)
  1658  A2 00     LDX #$00          
  165A  24 E3     BIT $E3           ; in RIOT RAM
  165C  30 09     BMI 09            
  165E  A5 D3     LDA $D3           ; in RIOT RAM
  1660  4A        LSR A             
  1661  4A        LSR A             
  1662  4A        LSR A             
  1663  4A        LSR A             
  1664  4A        LSR A             
  1665  AA        TAX               
  1666  E8        INX               
  1667  BD F9 F7  LDA $F9F7,X       ; ROM address $F907 via mirror
  166A  85 07     STA $07           ; COLUP1 (W), CXPPMM (R)
  166C  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  166E  A6 80     LDX $80           ; SWCHA
  1670  BD D9 FD  LDA $D9FD,X       ; ROM address $D90D via mirror
  1673  85 08     STA $08           ; COLUPF (W), INPT0 (R)
  1675  A0 FF     LDY #$FF          
  1677  84 0D     STY $0D           ; PF0 (W), INPT5 (R)
  1679  84 0E     STY $0E           ; PF1 (W)
  167B  84 0F     STY $0F           ; PF2 (W)
  167D  BD E2 FD  LDA $E2FD,X       ; ROM address $E20D via mirror
  1680  85 09     STA $09           ; COLUBK (W), INPT1 (R)
  1682  A9 20     LDA #$20          
  1684  24 EB     BIT $EB           ; in RIOT RAM
  1686  10 02     BPL 02            
  1688  A9 25     LDA #$25          
  168A  85 04     STA $04           ; NUSIZ0 (W), CXM0FB (R)
  168C  A9 20     LDA #$20          
  168E  85 05     STA $05           ; NUSIZ1 (W), CXM1FB (R)
  1690  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1692  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1694  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  1696  A4 80     LDY $80           ; SWCHA
  1698  85 02     STA $02           ; WSYNC (W), CXP0FB (R)
  169A  A9 00     LDA #$00          
  169C  85 0E     STA $0E           ; PF1 (W)
  169E  85 0F     STA $0F           ; PF2 (W)
  16A0  BE 05 F8  LDX $05F8,Y       ; ROM address $0508 via mirror
  16A3  BD F4 F8  LDA $F4F8,X       ; ROM address $F408 via mirror
  16A6  48        PHA               
  16A7  BD F3 F8  LDA $F3F8,X       ; ROM address $F308 via mirror
  16AA  48        PHA               
  16AB  A9 00     LDA #$00          
  16AD  AA        TAX               
  16AE  A8        TAY               
  16AF  85 86     STA $86           ; in RIOT RAM
  16B1  85 87     STA $87           ; in RIOT RAM
  16B3  85 88     STA $88           ; in RIOT RAM
  16B5  60        RTS               
  16B6  A5 E6     LDA $E6           ; in RIOT RAM
  16B8  29 F0     AND #$F0          
  16BA  C9 90     CMP #$90          
  16BC  D0 3D     BNE 3D            
  16BE  24 F0     BIT $F0           ; in RIOT RAM
  16C0  30 39     BMI 39            
  16C2  A5 DD     LDA $DD           ; in RIOT RAM
  16C4  C9 07     CMP #$07          
  16C6  D0 21     BNE 21            
  16C8  A5 F0     LDA $F0           ; in RIOT RAM
  16CA  29 03     AND #$03          
  16CC  C9 03     CMP #$03          
  16CE  D0 02     BNE 02            
  16D0  A9 02     LDA #$02          
  16D2  AA        TAX               
  16D3  B5 CA     LDA $CA,X         ; in RIOT RAM
  16D5  10 12     BPL 12            
  16D7  A6 F0     LDX $F0           ; in RIOT RAM
  16D9  E0 02     CPX #$02          
  16DB  B0 09     BCS 09            
  16DD  BD FD F9  LDA $FDF9,X       ; ROM address $FD09 via mirror
  16E0  85 F2     STA $F2           ; in RIOT RAM
  16E2  A9 32     LDA #$32          
  16E4  85 9B     STA $9B           ; in RIOT RAM
  16E6  38        SEC               
  16E7  B0 01     BCS 01            
  16E9  18        CLC               
  16EA  A5 F0     LDA $F0           ; in RIOT RAM
  16EC  2A        ROL A             
  16ED  09 80     ORA #$80          
  16EF  85 F0     STA $F0           ; in RIOT RAM
  16F1  29 07     AND #$07          
  16F3  C9 07     CMP #$07          
  16F5  D0 04     BNE 04            
  16F7  A9 69     LDA #$69          
  16F9  85 F1     STA $F1           ; in RIOT RAM
  16FB  60        RTS               
  16FC  00        BRK               
  16FD  00        BRK               
  16FE  00        BRK               
  16FF  00        BRK               
  1700  D0 00     BNE 00            
  1702  D0 E0     BNE E0            
  1704  10 E0     BPL E0            
  1706  50 F0     BVC F0            
  1708  40        RTI               
  1709  F0 A0     BEQ A0            
  170B  D0 A8     BNE A8            
  170D  F4 C8     NOP $C8,X         ; in RIOT RAM
  170F  F0 A8     BEQ A8            
  1711  D4 EC     NOP $EC,X         ; in RIOT RAM
  1713  D8        CLD               
  1714  74 F8     NOP $F8,X         ; in RIOT RAM
  1716  B4 F8     LDY $F8,X         ; in RIOT RAM
  1718  F4 58     NOP $58,X         
  171A  F8        SED               
  171B  D8        CLD               
  171C  D0 D0     BNE D0            
  171E  A0 40     LDY #$40          
  1720  80 00     NOP #$00          
  1722  00        BRK               
  1723  00        BRK               
  1724  00        BRK               
  1725  00        BRK               
  1726  00        BRK               
  1727  00        BRK               
  1728  00        BRK               
  1729  00        BRK               
  172A  00        BRK               
  172B  00        BRK               
  172C  00        BRK               
  172D  00        BRK               
  172E  00        BRK               
  172F  00        BRK               
  1730  00        BRK               
  1731  00        BRK               
  1732  00        BRK               
  1733  01 01     ORA ($01,X)       
  1735  03 02     SLO ($02,X)       
  1737  07 05     SLO $05           ; NUSIZ1 (W), CXM1FB (R)
  1739  07 0D     SLO $0D           ; PF0 (W), INPT5 (R)
  173B  0F 1D 16  SLO $1D16         
  173E  1F 1B 1D  SLO $1B1D,X       
  1741  1E 0F 07  ASL LABEL_0175,X  
  1744  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  1746  03 01     SLO ($01,X)       
  1748  00        BRK               
  1749  00        BRK               
  174A  00        BRK               
  174B  00        BRK               
  174C  00        BRK               
  174D  01 03     ORA ($03,X)       
  174F  06 0D     ASL $0D           ; PF0 (W), INPT5 (R)
  1751  68        PHP               
  1752  1B 1B 1F  SLO $1B1F,Y       
  1755  0F 2F 1F  SLO $2F1F         
  1758  37 3F     RLA $3F,X         ; in TIA Addresses
  175A  DB 7F DD  DCP $7FDD,Y       
  175D  6F B5 1B  RRA $B51B         
  1760  1D 17 3A  ORA $173A,X       
  1763  1D 1A B5  ORA $1AB5,X       ; ROM address $1A05 via mirror
  1766  5E F5 6B  LSR $F56B,X       
  1769  A7 5F     LAX $5F           
  176B  BF FF FF  LAX LABEL_0183,Y  ; ROM address $FF0F via mirror
  176E  FF FE 7B  ISC $FE7B,X       ; ROM address $FE0B via mirror
  1771  00        BRK               
  1772  00        BRK               
  1773  7F C0 AA  RRA LABEL_0185,X  
  1776  7F FF EF  RRA $FFEF,X       
  1779  00        BRK               
  177A  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  177D  DF FF FF  DCP LABEL_0183,X  ; ROM address $FF0F via mirror
  1780  DF FF FF  DCP LABEL_0183,X  ; ROM address $FF0F via mirror
  1783  DF FF FF  DCP LABEL_0183,X  ; ROM address $FF0F via mirror
  1786  FD 27 25  SBC $2725,X       
  1789  FE FB FE  INC $FBFE,X       ; ROM address $FB0E via mirror
  178C  7B D6 BF  RRA $D6BF,Y       ; ROM address $D60F via mirror
  178F  D7 EF     DCP $EF,X         ; in RIOT RAM
  1791  D7 FF     DCP $FF,X         ; in RIOT RAM
  1793  D7 E7     DCP $E7,X         ; in RIOT RAM
  1795  D3 A1     DCP ($A1),Y       
  1797  80 00     NOP #$00          
  1799  01 00     ORA ($00,X)       
  179B  81 C1     STA ($C1,X)       
  179D  61 30     ADC ($30,X)       
  179F  98        TYA               
  17A0  9E 0F E7  SHX $0FE7,Y       
  17A3  F7 FF     ISC $FF,X         ; in RIOT RAM
  17A5  FF ED FA  ISC $EDFA,X       ; ROM address $ED0A via mirror
  17A8  F7 EF     ISC $EF,X         ; in RIOT RAM
  17AA  BF FD 5A  LAX $FD5A,Y       
  17AD  FF D5 A2  ISC $D5A2,X       
  17B0  63 E3     RRA ($E3,X)       
  17B2  67 E3     RRA $E3           ; in RIOT RAM
  17B4  A2 D5     LDX #$D5          
  17B6  7F AA D5  RRA $AAD5,X       
  17B9  FB FF FF  ISC LABEL_0183,Y  ; ROM address $FF0F via mirror
  17BC  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  17BF  FF 2A FF  ISC $2AFF,X       ; ROM address $2A0F via mirror
  17C2  15 FF     ORA $FF,X         ; in RIOT RAM
  17C4  FF 4A BF  ISC $4ABF,X       ; ROM address $4A0F via mirror
  17C7  5F 2D 57  SRE $2D57,X       
  17CA  BB DD EE  LAS LABEL_0198,Y  
  17CD  FB DD EE  ISC LABEL_0198,Y  
  17D0  FF 57 FF  ISC $57FF,X       ; ROM address $570F via mirror
  17D3  BF EB B5  LAX $EBB5,Y       ; ROM address $EB05 via mirror
  17D6  DF EA FF  DCP $EAFF,X       ; ROM address $EA0F via mirror
  17D9  5A        NOP               
  17DA  FF 6D F7  ISC $6DF7,X       ; ROM address $6D07 via mirror
  17DD  BE 5F B6  LDX $5FB6,Y       ; ROM address $5F06 via mirror
  17E0  7E F6 F5  ROR $F6F5,X       ; ROM address $F605 via mirror
  17E3  F4 E8     NOP $E8,X         ; in RIOT RAM
  17E5  D0 80     BNE 80            
  17E7  00        BRK               
  17E8  00        BRK               
  17E9  00        BRK               
  17EA  10 22     BPL 22            
  17EC  34 45     NOP $45,X         
  17EE  63 78     RRA ($78,X)       
  17F0  99 99 92  STA $9992,Y       
  17F3  84 76     STY $76           
  17F5  68        PLA               
  17F6  59 51 42  EOR $5142,Y       
  17F9  0E DE DC  ASL $DEDC         
  17FC  DA        NOP               
  17FD  DA        NOP               
  17FE  DA        NOP               
  17FF  00        BRK               
LABEL_0281:
  1800  00        BRK               
  1801  00        BRK               
  1802  00        BRK               
  1803  00        BRK               
  1804  00        BRK               
  1805  00        BRK               
  1806  00        BRK               
  1807  00        BRK               
  1808  00        BRK               
  1809  00        BRK               
  180A  00        BRK               
  180B  00        BRK               
  180C  00        BRK               
  180D  02        JAM               
  180E  02        JAM               
  180F  02        JAM               
  1810  02        JAM               
  1811  02        JAM               
  1812  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  1814  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  1816  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  1818  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  181A  0F 0F 0F  SLO LABEL_0128    
  181D  0F 0F 0F  SLO LABEL_0128    
  1820  0F 0F 0F  SLO LABEL_0128    
  1823  0F 0F 0F  SLO LABEL_0128    
  1826  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  1828  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  182A  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  182C  07 07     SLO $07           ; COLUP1 (W), CXPPMM (R)
  182E  02        JAM               
  182F  02        JAM               
  1830  02        JAM               
  1831  02        JAM               
  1832  02        JAM               
  1833  00        BRK               
  1834  00        BRK               
  1835  00        BRK               
  1836  00        BRK               
  1837  00        BRK               
  1838  00        BRK               
  1839  00        BRK               
  183A  00        BRK               
  183B  00        BRK               
LABEL_0262:
  183C  00        BRK               
  183D  00        BRK               
  183E  00        BRK               
  183F  00        BRK               
  1840  00        BRK               
  1841  00        BRK               
  1842  00        BRK               
  1843  80 C0     NOP #$C0          
  1845  E0 E0     CPX #$E0          
  1847  E0 C0     CPX #$C0          
  1849  80 00     NOP #$00          
  184B  00        BRK               
  184C  00        BRK               
  184D  01 01     ORA ($01,X)       
  184F  01 01     ORA ($01,X)       
  1851  01 01     ORA ($01,X)       
  1853  01 01     ORA ($01,X)       
  1855  01 01     ORA ($01,X)       
  1857  01 01     ORA ($01,X)       
  1859  00        BRK               
  185A  00        BRK               
  185B  00        BRK               
  185C  80 C0     NOP #$C0          
  185E  E0 E0     CPX #$E0          
  1860  E0 C0     CPX #$C0          
  1862  80 00     NOP #$00          
  1864  00        BRK               
  1865  00        BRK               
  1866  00        BRK               
  1867  00        BRK               
  1868  00        BRK               
  1869  00        BRK               
  186A  00        BRK               
  186B  00        BRK               
  186C  00        BRK               
  186D  00        BRK               
  186E  00        BRK               
  186F  00        BRK               
  1870  00        BRK               
  1871  00        BRK               
  1872  00        BRK               
  1873  AA        TAX               
  1874  55 AB     EOR $AB,X         ; in RIOT RAM
  1876  57 A2     SRE $A2,X         ; in RIOT RAM
  1878  C1 C0     CMP ($C0,X)       
  187A  55 A2     EOR $A2,X         ; in RIOT RAM
  187C  C1 C0     CMP ($C0,X)       
  187E  55 A2     EOR $A2,X         ; in RIOT RAM
  1880  C1 C0     CMP ($C0,X)       
  1882  55 A2     EOR $A2,X         ; in RIOT RAM
  1884  C1 D0     CMP ($D0,X)       
  1886  55 BA     EOR $BA,X         ; in RIOT RAM
  1888  7D FC 55  ADC $FC55,X       
  188B  9A        TSX               
  188C  7D FE 54  ADC LABEL_0209,X  
  188F  38        SEC               
  1890  7D FE 54  ADC LABEL_0209,X  
  1893  38        SEC               
  1894  7D FE 54  ADC LABEL_0209,X  
  1897  38        SEC               
  1898  55 AA     EOR $AA,X         ; in RIOT RAM
  189A  55 2B     EOR $2B,X         ; in TIA Addresses
  189C  47 83     SRE $83           ; SWBCNT
  189E  01 AB     ORA ($AB,X)       
  18A0  47 83     SRE $83           ; SWBCNT
  18A2  01 AB     ORA ($AB,X)       
  18A4  47 83     SRE $83           ; SWBCNT
  18A6  01 AB     ORA ($AB,X)       
  18A8  47 83     SRE $83           ; SWBCNT
  18AA  01 AB     ORA ($AB,X)       
  18AC  C5 82     CMP $82           ; SWCHB
  18AE  C1 EA     CMP ($EA,X)       
  18B0  E5 AA     SBC $AA           ; in RIOT RAM
  18B2  D5 55     CMP $55,X         
  18B4  AB 57     LXA #$57          
  18B6  2F 15 0B  RLA $150B         
  18B9  55 2A     EOR $2A,X         ; in TIA Addresses
  18BB  15 0E     ORA $0E,X         ; PF1 (W)
  18BD  5F 3F 15  SRE LABEL_0211,X  
  18C0  0E 5F 3F  ASL LABEL_0212    
  18C3  15 0E     ORA $0E,X         ; PF1 (W)
  18C5  5F 3F 15  SRE LABEL_0211,X  
  18C8  0E 5F 3F  ASL LABEL_0212    
  18CB  55 AE     EOR $AE,X         ; in RIOT RAM
  18CD  54 A8     NOP $A8,X         ; in RIOT RAM
  18CF  D0 EA     BNE EA            
  18D1  F4 A8     NOP $A8,X         ; in RIOT RAM
  18D3  D0 EA     BNE EA            
  18D5  F4 A8     NOP $A8,X         ; in RIOT RAM
  18D7  D0 EA     BNE EA            
  18D9  F4 A8     NOP $A8,X         ; in RIOT RAM
  18DB  D1 EB     CMP ($EB),Y       
  18DD  F7 AA     ISC $AA,X         ; in RIOT RAM
  18DF  D5 EB     CMP $EB,X         ; in RIOT RAM
  18E1  C7 82     DCP $82           ; SWCHB
  18E3  81 AB     STA ($AB,X)       
  18E5  47 82     SRE $82           ; SWCHB
  18E7  01 AB     ORA ($AB,X)       
  18E9  47 8A     SRE $8A           ; in RIOT RAM
  18EB  1D BE 7F  ORA LABEL_0213,X  ; ROM address $BE0F via mirror
  18EE  AA        TAX               
  18EF  1D BE 7F  ORA LABEL_0213,X  ; ROM address $BE0F via mirror
  18F2  AA        TAX               
  18F3  2D F0 7E  AND $F07E         ; ROM address $F00E via mirror
  18F6  F0 73     BEQ 73            
  18F8  0D 5B D5  ORA $5BD5         
  18FB  00        BRK               
  18FC  00        BRK               
  18FD  00        BRK               
  18FE  00        BRK               
  18FF  00        BRK               
  1900  FE FF C3  INC LABEL_0216,X  
  1903  0F FF 3F  SLO LABEL_0217    
  1906  2B E7     ANC2 #$E7         
  1908  00        BRK               
  1909  FE FF C3  INC LABEL_0216,X  
  190C  03 0F     SLO ($0F,X)       
  190E  FF 3F 2B  ISC LABEL_0218,X  
  1911  E7 00     ISC $00           ; VSYNC (W), CXM0P (R)
  1913  FE FF C3  INC LABEL_0216,X  
  1916  03 03     SLO ($03,X)       
  1918  0F FF 3F  SLO LABEL_0217    
  191B  2B E7     ANC2 #$E7         
  191D  00        BRK               
  191E  FE FF C3  INC LABEL_0216,X  
  1921  03 03     SLO ($03,X)       
  1923  03 0F     SLO ($0F,X)       
  1925  FF 3F 2B  ISC LABEL_0218,X  
  1928  E7 00     ISC $00           ; VSYNC (W), CXM0P (R)
  192A  FE FF 03  INC LABEL_0219,X  
  192D  03 03     SLO ($03,X)       
  192F  03 03     SLO ($03,X)       
  1931  0F FF 3F  SLO LABEL_0217    
  1934  2B E7     ANC2 #$E7         
  1936  00        BRK               
  1937  BF FF 03  LAX LABEL_0219,Y  
  193A  1F BF 3F  SLO LABEL_0220,X  
  193D  63 00     RRA ($00,X)       
  193F  00        BRK               
  1940  BF FF 03  LAX LABEL_0219,Y  
  1943  03 1F     SLO ($1F,X)       
  1945  BF 3F 63  LAX LABEL_0221,Y  
  1948  00        BRK               
  1949  00        BRK               
  194A  BF FF 03  LAX LABEL_0219,Y  
  194D  03 03     SLO ($03,X)       
  194F  1F BF 3F  SLO LABEL_0220,X  
  1952  63 00     RRA ($00,X)       
  1954  00        BRK               
  1955  BF FF 03  LAX LABEL_0219,Y  
  1958  03 03     SLO ($03,X)       
  195A  03 1F     SLO ($1F,X)       
  195C  BF 3F 63  LAX LABEL_0221,Y  
  195F  00        BRK               
  1960  00        BRK               
  1961  BF FF 03  LAX LABEL_0219,Y  
  1964  03 03     SLO ($03,X)       
  1966  03 03     SLO ($03,X)       
  1968  1F BF 3F  SLO LABEL_0220,X  
  196B  63 00     RRA ($00,X)       
  196D  00        BRK               
  196E  E0 A2     CPX #$A2          
  1970  E7 EE     ISC $EE           ; in RIOT RAM
  1972  FB 00 E0  ISC $00E0,Y       
  1975  E3 EF     ISC ($EF,X)       
  1977  ED FF 00  SBC $FF00         
  197A  FE FF C3  INC LABEL_0216,X  
  197D  0F FF 3F  SLO LABEL_0217    
  1980  3F 60 00  RLA $6000,X       
  1983  BF FF 03  LAX LABEL_0219,Y  
  1986  1F BF 3F  SLO LABEL_0220,X  
  1989  27 E0     RLA $E0           ; in RIOT RAM
  198B  00        BRK               
  198C  FE FF C3  INC LABEL_0216,X  
  198F  0F FF 3F  SLO LABEL_0217    
  1992  7E 03 00  ROR $0300,X       
  1995  BF FF 03  LAX LABEL_0219,Y  
  1998  1F BF 3F  SLO LABEL_0220,X  
  199B  E1 07     SBC ($07,X)       
  199D  00        BRK               
  199E  E0 F0     CPX #$F0          
  19A0  F8        SED               
  19A1  DC CE C6  NOP $CEC6,X       
  19A4  E0 F0     CPX #$F0          
  19A6  D8        CLD               
  19A7  CC C6 E0  CPY $C6E0         
  19AA  F0 78     BEQ 78            
  19AC  3C 1E 10  NOP $1E10,X       
  19AF  18        CLC               
  19B0  18        CLC               
  19B1  18        CLC               
  19B2  18        CLC               
  19B3  18        CLC               
  19B4  18        CLC               
  19B5  18        CLC               
  19B6  18        CLC               
  19B7  18        CLC               
  19B8  18        CLC               
  19B9  F8        SED               
  19BA  78        SEI               
  19BB  3C 1E 0F  NOP $1E0F,X       
  19BE  00        BRK               
  19BF  00        BRK               
  19C0  00        BRK               
  19C1  0A        ASL A             
  19C2  1A        NOP               
  19C3  76 3A     ROR $3A,X         ; in TIA Addresses
  19C5  00        BRK               
  19C6  00        BRK               
  19C7  1C 1C 20  NOP $1C20,X       
  19CA  1C 38 00  NOP LABEL_0231,X  
  19CD  14 1C     NOP $1C,X         ; GRP1 (W)
  19CF  10 1C     BPL 1C            
  19D1  10 18     BPL 18            
  19D3  14 1C     NOP $1C,X         ; GRP1 (W)
  19D5  14 08     NOP $08,X         ; COLUPF (W), INPT0 (R)
  19D7  0C 08 18  NOP $0818         
  19DA  00        BRK               
  19DB  00        BRK               
  19DC  00        BRK               
  19DD  0D 07 40  ORA $0740         
  19E0  68        PHP               
  19E1  00        BRK               
  19E2  00        BRK               
  19E3  2A        ROL A             
  19E4  0A        ASL A             
  19E5  20 0A 08  JSR $0A08         
  19E8  00        BRK               
  19E9  2A        ROL A             
  19EA  2A        ROL A             
  19EB  10 12     BPL 12            
  19ED  28        PLP               
  19EE  68        PHP               
  19EF  2A        ROL A             
  19F0  2A        ROL A             
  19F1  68        PHP               
  19F2  0A        ASL A             
  19F3  68        PHP               
  19F4  28        PLP               
  19F5  68        PHP               
  19F6  FE FE FC  INC $FEFC,X       ; ROM address $FE0C via mirror
  19F9  4A        LSR A             
  19FA  48        PHA               
  19FB  46 44     LSR $44           
  19FD  80 C0     NOP #$C0          
  19FF  00        BRK               
  1A00  FE 86 86  INC $8686,X       
  1A03  86 82     STX $82           ; SWCHB
  1A05  82 FE     NOP #$FE          
  1A07  00        BRK               
  1A08  18        CLC               
  1A09  18        CLC               
  1A0A  18        CLC               
  1A0B  18        CLC               
  1A0C  68        PHP               
  1A0D  68        PHP               
  1A0E  68        PHP               
  1A0F  00        BRK               
  1A10  FE C0 C0  INC $C0C0,X       
  1A13  FE 02 82  INC LABEL_0238,X  
  1A16  FE 00 FE  INC LABEL_0239,X  ; ROM address $000E via mirror
  1A19  86 06     STX $06           ; COLUP0 (W), CXBLPF (R)
  1A1B  7E 02 82  ROR LABEL_0238,X  
  1A1E  FE 00 06  INC LABEL_0240,X  
  1A21  06 FE     ASL $FE           ; in RIOT RAM
  1A23  82 82     NOP #$82          
  1A25  80 80     NOP #$80          
  1A27  00        BRK               
  1A28  FE 86 06  INC $8606,X       
  1A2B  FE 80 82  INC $8082,X       
  1A2E  FE 00 FE  INC LABEL_0239,X  ; ROM address $000E via mirror
  1A31  86 86     STX $86           ; in RIOT RAM
  1A33  FE 80 88  INC $8088,X       
  1A36  F8        SED               
  1A37  00        BRK               
  1A38  06 06     ASL $06           ; COLUP0 (W), CXBLPF (R)
  1A3A  06 06     ASL $06           ; COLUP0 (W), CXBLPF (R)
  1A3C  02        JAM               
  1A3D  02        JAM               
  1A3E  FE 00 FE  INC LABEL_0239,X  ; ROM address $000E via mirror
  1A41  82 82     NOP #$82          
  1A43  FE 44 44  INC $4444,X       
  1A46  7C 00 06  NOP LABEL_0240,X  
  1A49  06 06     ASL $06           ; COLUP0 (W), CXBLPF (R)
  1A4B  FE 82 82  INC $8282,X       
  1A4E  FE 00 00  INC LABEL_0095,X  
  1A51  00        BRK               
  1A52  00        BRK               
  1A53  00        BRK               
  1A54  00        BRK               
  1A55  00        BRK               
  1A56  00        BRK               
  1A57  00        BRK               
  1A58  07 01     SLO $01           ; VBLANK (W), CXM1P (R)
  1A5A  57 54     SRE $54,X         
  1A5C  77 50     RRA $50,X         
  1A5E  50 00     BVC 00            
  1A60  07 55     SLO $55           
  1A62  71 73     ADC ($73),Y       
  1A64  51 55     EOR ($55),Y       
  1A66  57 00     SRE $00,X         ; VSYNC (W), CXM0P (R)
  1A68  10 38     BPL 38            
  1A6A  18        CLC               
  1A6B  30 7C     BMI 7C            
  1A6D  D8        CLD               
  1A6E  38        SEC               
  1A6F  38        SEC               
  1A70  EC 82 84  CPX $8284         
  1A73  10 38     BPL 38            
  1A75  18        CLC               
  1A76  30 78     BMI 78            
  1A78  5C 38 38  NOP LABEL_0247,X  
  1A7B  6C 60 06  JMP ($6006)       
  1A7E  00        BRK               
  1A7F  38        SEC               
  1A80  38        SEC               
  1A81  00        BRK               
  1A82  78        SEI               
  1A83  38        SEC               
  1A84  78        SEI               
  1A85  18        CLC               
  1A86  38        SEC               
  1A87  20 38 00  JSR LABEL_0231    
  1A8A  38        SEC               
  1A8B  38        SEC               
  1A8C  00        BRK               
  1A8D  38        SEC               
  1A8E  38        SEC               
  1A8F  38        SEC               
  1A90  18        CLC               
  1A91  30 78     BMI 78            
  1A93  00        BRK               
  1A94  10 38     BPL 38            
  1A96  18        CLC               
  1A97  30 38     BMI 38            
  1A99  78        SEI               
  1A9A  38        SEC               
  1A9B  38        SEC               
  1A9C  68        PLA               
  1A9D  CC 00 10  CPY $0010         
  1AA0  38        SEC               
  1AA1  18        CLC               
  1AA2  30 78     BMI 78            
  1AA4  DC 38 18  NOP $3818,X       
  1AA7  68        PLA               
  1AA8  CC 00 00  CPY LABEL_0095    
  1AAB  48        PHA               
  1AAC  3A        NOP               
  1AAD  3A        NOP               
  1AAE  3A        NOP               
  1AAF  9A        TXS               
  1AB0  9A        TXS               
  1AB1  9A        TXS               
  1AB2  DE DE 38  DEC $DE38,X       
  1AB5  38        SEC               
  1AB6  00        BRK               
  1AB7  78        SEI               
  1AB8  5C B8 38  NOP $B838,X       
  1ABB  68        PLA               
  1ABC  CC 86 00  CPY $8600         
  1ABF  38        SEC               
  1AC0  38        SEC               
  1AC1  00        BRK               
  1AC2  78        SEI               
  1AC3  5C 78 18  NOP $7818,X       
  1AC6  78        SEI               
  1AC7  60        RTS               
  1AC8  06 00     ASL $00           ; VSYNC (W), CXM0P (R)
  1ACA  10 38     BPL 38            
  1ACC  18        CLC               
  1ACD  38        SEC               
  1ACE  78        SEI               
  1ACF  78        SEI               
  1AD0  38        SEC               
  1AD1  38        SEC               
  1AD2  28        PLP               
  1AD3  38        SEC               
  1AD4  00        BRK               
  1AD5  10 38     BPL 38            
  1AD7  18        CLC               
  1AD8  30 38     BMI 38            
  1ADA  30 38     BMI 38            
  1ADC  18        CLC               
  1ADD  30 60     BMI 60            
  1ADF  00        BRK               
  1AE0  38        SEC               
  1AE1  38        SEC               
  1AE2  00        BRK               
  1AE3  38        SEC               
  1AE4  78        SEI               
  1AE5  38        SEC               
  1AE6  18        CLC               
  1AE7  28        PLP               
  1AE8  0C C0 00  NOP $C000         
  1AEB  38        SEC               
  1AEC  38        SEC               
  1AED  00        BRK               
  1AEE  78        SEI               
  1AEF  5C B8 18  NOP $B818,X       
  1AF2  30 CC     BMI CC            
  1AF4  CC 00 48  CPY $0048         
  1AF7  34 34     NOP $34,X         ; in TIA Addresses
  1AF9  34 9A     NOP $9A,X         ; in RIOT RAM
  1AFB  9A        TXS               
  1AFC  9A        TXS               
  1AFD  9A        TXS               
  1AFE  DE DE 00  DEC $DE00,X       
  1B01  00        BRK               
  1B02  00        BRK               
  1B03  00        BRK               
  1B04  00        BRK               
  1B05  00        BRK               
  1B06  00        BRK               
  1B07  00        BRK               
  1B08  00        BRK               
  1B09  00        BRK               
  1B0A  00        BRK               
  1B0B  01 03     ORA ($03,X)       
  1B0D  07 0F     SLO $0F           ; PF2 (W)
  1B0F  1F 1F 0F  SLO LABEL_0258,X  
  1B12  07 03     SLO $03           ; RSYNC (W), CXP1FB (R)
  1B14  01 00     ORA ($00,X)       
  1B16  00        BRK               
  1B17  00        BRK               
  1B18  00        BRK               
  1B19  00        BRK               
  1B1A  00        BRK               
LABEL_0132:
  1B1B  00        BRK               
  1B1C  00        BRK               
  1B1D  00        BRK               
  1B1E  00        BRK               
  1B1F  00        BRK               
  1B20  00        BRK               
  1B21  00        BRK               
  1B22  00        BRK               
  1B23  00        BRK               
  1B24  00        BRK               
  1B25  00        BRK               
  1B26  00        BRK               
  1B27  00        BRK               
  1B28  00        BRK               
  1B29  00        BRK               
  1B2A  00        BRK               
  1B2B  01 03     ORA ($03,X)       
  1B2D  07 0F     SLO $0F           ; PF2 (W)
  1B2F  1F 1F 0F  SLO LABEL_0258,X  
  1B32  07 03     SLO $03           ; RSYNC (W), CXP1FB (R)
  1B34  01 00     ORA ($00,X)       
  1B36  00        BRK               
  1B37  00        BRK               
  1B38  00        BRK               
  1B39  00        BRK               
  1B3A  00        BRK               
  1B3B  00        BRK               
  1B3C  00        BRK               
  1B3D  00        BRK               
  1B3E  00        BRK               
  1B3F  00        BRK               
  1B40  C0 F0     CPY #$F0          
  1B42  F8        SED               
  1B43  F8        SED               
  1B44  F8        SED               
  1B45  E0 80     CPX #$80          
  1B47  00        BRK               
  1B48  00        BRK               
  1B49  00        BRK               
  1B4A  00        BRK               
  1B4B  00        BRK               
  1B4C  00        BRK               
  1B4D  00        BRK               
  1B4E  00        BRK               
  1B4F  00        BRK               
  1B50  00        BRK               
  1B51  00        BRK               
  1B52  00        BRK               
  1B53  00        BRK               
  1B54  01 03     ORA ($03,X)       
  1B56  07 0F     SLO $0F           ; PF2 (W)
  1B58  0F 07 03  SLO $0703         
  1B5B  01 00     ORA ($00,X)       
  1B5D  00        BRK               
  1B5E  00        BRK               
  1B5F  00        BRK               
  1B60  00        BRK               
  1B61  00        BRK               
  1B62  00        BRK               
  1B63  00        BRK               
  1B64  00        BRK               
  1B65  00        BRK               
  1B66  00        BRK               
  1B67  00        BRK               
  1B68  00        BRK               
  1B69  80 E0     NOP #$E0          
  1B6B  F8        SED               
  1B6C  F8        SED               
  1B6D  F8        SED               
  1B6E  F0 C0     BEQ C0            
  1B70  00        BRK               
  1B71  00        BRK               
  1B72  00        BRK               
  1B73  00        BRK               
  1B74  00        BRK               
  1B75  00        BRK               
  1B76  00        BRK               
  1B77  00        BRK               
  1B78  00        BRK               
  1B79  00        BRK               
  1B7A  00        BRK               
  1B7B  00        BRK               
  1B7C  00        BRK               
  1B7D  00        BRK               
  1B7E  00        BRK               
  1B7F  00        BRK               
  1B80  00        BRK               
  1B81  00        BRK               
  1B82  01 03     ORA ($03,X)       
  1B84  07 0F     SLO $0F           ; PF2 (W)
  1B86  07 03     SLO $03           ; RSYNC (W), CXP1FB (R)
  1B88  01 00     ORA ($00,X)       
  1B8A  00        BRK               
  1B8B  00        BRK               
  1B8C  00        BRK               
  1B8D  00        BRK               
  1B8E  00        BRK               
  1B8F  00        BRK               
  1B90  00        BRK               
  1B91  00        BRK               
  1B92  00        BRK               
  1B93  00        BRK               
  1B94  00        BRK               
  1B95  00        BRK               
  1B96  00        BRK               
  1B97  00        BRK               
  1B98  00        BRK               
  1B99  00        BRK               
  1B9A  00        BRK               
  1B9B  01 07     ORA ($07,X)       
  1B9D  0F 07 01  SLO $0701         
  1BA0  00        BRK               
  1BA1  00        BRK               
  1BA2  00        BRK               
  1BA3  00        BRK               
  1BA4  00        BRK               
  1BA5  00        BRK               
  1BA6  00        BRK               
  1BA7  00        BRK               
  1BA8  00        BRK               
  1BA9  00        BRK               
  1BAA  00        BRK               
  1BAB  00        BRK               
  1BAC  00        BRK               
  1BAD  00        BRK               
  1BAE  00        BRK               
  1BAF  00        BRK               
  1BB0  0F 0F 07  SLO LABEL_0175    
  1BB3  03 01     SLO ($01,X)       
  1BB5  00        BRK               
  1BB6  01 03     ORA ($03,X)       
  1BB8  07 0F     SLO $0F           ; PF2 (W)
  1BBA  0F 00 00  SLO LABEL_0095    
  1BBD  00        BRK               
  1BBE  00        BRK               
  1BBF  00        BRK               
  1BC0  00        BRK               
  1BC1  00        BRK               
  1BC2  00        BRK               
  1BC3  00        BRK               
  1BC4  00        BRK               
  1BC5  00        BRK               
  1BC6  00        BRK               
  1BC7  00        BRK               
  1BC8  00        BRK               
  1BC9  00        BRK               
  1BCA  00        BRK               
  1BCB  00        BRK               
  1BCC  03 07     SLO ($07,X)       
  1BCE  03 00     SLO ($00,X)       
  1BD0  00        BRK               
  1BD1  00        BRK               
  1BD2  00        BRK               
  1BD3  00        BRK               
  1BD4  00        BRK               
  1BD5  00        BRK               
  1BD6  00        BRK               
  1BD7  00        BRK               
  1BD8  00        BRK               
  1BD9  00        BRK               
  1BDA  00        BRK               
  1BDB  00        BRK               
  1BDC  00        BRK               
  1BDD  00        BRK               
  1BDE  00        BRK               
  1BDF  00        BRK               
  1BE0  3C 20 3C  NOP $203C,X       
  1BE3  20 3C 18  JSR LABEL_0262    
  1BE6  DB FF E0  DCP $FFE0,Y       
  1BE9  DD DB D7  CMP $DBD7,X       
  1BEC  24 18     BIT $18           ; AUDF1 (W)
  1BEE  24 24     BIT $24           ; in TIA Addresses
  1BF0  7E 5A DB  ROR $5ADB,X       
  1BF3  3C 24 99  NOP $2499,X       
  1BF6  A5 E7     LDA $E7           ; in RIOT RAM
  1BF8  18        CLC               
  1BF9  18        CLC               
  1BFA  18        CLC               
  1BFB  3C 00 00  NOP LABEL_0095,X  
  1BFE  00        BRK               
  1BFF  00        BRK               
  1C00  00        BRK               
  1C01  00        BRK               
  1C02  00        BRK               
  1C03  00        BRK               
  1C04  00        BRK               
  1C05  00        BRK               
  1C06  00        BRK               
  1C07  00        BRK               
  1C08  18        CLC               
  1C09  30 60     BMI 60            
  1C0B  FF FF 60  ISC $FF60,X       
  1C0E  30 18     BMI 18            
  1C10  18        CLC               
  1C11  0C 06 FF  NOP $06FF         ; ROM address $060F via mirror
  1C14  FF 06 0C  ISC $060C,X       
  1C17  18        CLC               
  1C18  18        CLC               
  1C19  18        CLC               
  1C1A  18        CLC               
  1C1B  18        CLC               
LABEL_0345:
  1C1C  DB 7E 3C  DCP $7E3C,Y       
  1C1F  18        CLC               
  1C20  18        CLC               
  1C21  3C 7E DB  NOP $7EDB,X       
  1C24  18        CLC               
  1C25  18        CLC               
  1C26  18        CLC               
  1C27  18        CLC               
  1C28  38        SEC               
  1C29  00        BRK               
  1C2A  38        SEC               
  1C2B  1C 0E 66  NOP $0E66,X       
  1C2E  7E 3C 00  ROR $3C00,X       
  1C31  7E C3 99  ROR $C399,X       
  1C34  99 C3 66  STA $C366,Y       
  1C37  3C 7F 7F  NOP $7F7F,X       ; ROM address $7F0F via mirror
  1C3A  2A        ROL A             
  1C3B  2A        ROL A             
LABEL_0316:
  1C3C  2A        ROL A             
  1C3D  2A        ROL A             
  1C3E  36 7F 02  ROL $7F02,X       
  1C41  74 C0     NOP $C0,X         ; in RIOT RAM
  1C43  F7 D0     ISC $D0,X         ; in RIOT RAM
  1C45  F4 62     NOP $62,X         
  1C47  01 42     ORA ($42,X)       
  1C49  24 7E     BIT $7E           
  1C4B  BD FF 5A  LDA $FF5A,X       
  1C4E  3C 24 00  NOP $2400,X       
  1C51  7F 49 5D  RRA $495D,X       
  1C54  77 5D     RRA $5D,X         
  1C56  49 7F     EOR #$7F          
  1C58  FF 00 18  ISC LABEL_0281,X  
  1C5B  18        CLC               
  1C5C  18        CLC               
  1C5D  7E 3C 18  ROR LABEL_0262,X  
  1C60  00        BRK               
  1C61  36 63 41  ROL $6341,X       
  1C64  68        PHP               
  1C65  00        BRK               
  1C66  22        JAM               
  1C67  22        JAM               
  1C68  00        BRK               
  1C69  00        BRK               
  1C6A  00        BRK               
  1C6B  00        BRK               
  1C6C  00        BRK               
  1C6D  10 30     BPL 30            
  1C6F  70 00     BVS 00            
  1C71  00        BRK               
  1C72  00        BRK               
  1C73  00        BRK               
  1C74  E0 D0     CPX #$D0          
  1C76  B0 70     BCS 70            
  1C78  00        BRK               
  1C79  80 C0     NOP #$C0          
  1C7B  E0 E0     CPX #$E0          
  1C7D  D0 B0     BNE B0            
  1C7F  70 70     BVS 70            
  1C81  B0 D0     BCS D0            
  1C83  E0 E0     CPX #$E0          
  1C85  D0 B0     BNE B0            
  1C87  70 7E     BVS 7E            
  1C89  BC D8 E0  LDY $D8E0,X       
  1C8C  E0 D0     CPX #$D0          
  1C8E  B0 70     BCS 70            
  1C90  7E BD DB  ROR LABEL_0284,X  
  1C93  E7 E0     ISC $E0           ; in RIOT RAM
  1C95  D0 B0     BNE B0            
  1C97  70 7E     BVS 7E            
  1C99  BD DB E7  LDA $DBE7,X       
  1C9C  E7 D3     ISC $D3           ; in RIOT RAM
  1C9E  B1 70     LDA ($70),Y       
  1CA0  7E BD DB  ROR LABEL_0284,X  
  1CA3  E7 E7     ISC $E7           ; in RIOT RAM
  1CA5  DB BD 7E  DCP $BD7E,Y       ; ROM address $BD0E via mirror
  1CA8  00        BRK               
  1CA9  3C 7E C3  NOP $7EC3,X       
  1CAC  7E 3C 18  ROR LABEL_0262,X  
  1CAF  00        BRK               
  1CB0  79 85 B5  ADC $85B5,Y       ; ROM address $8505 via mirror
  1CB3  A5 B5     LDA $B5           ; in RIOT RAM
  1CB5  85 79     STA $79           
  1CB7  00        BRK               
  1CB8  17 15     SLO $15,X         ; AUDC0 (W)
  1CBA  15 77     ORA $77,X         
  1CBC  55 55     EOR $55,X         
  1CBE  77 00     RRA $00,X         ; VSYNC (W), CXM0P (R)
  1CC0  71 41     ADC ($41),Y       
  1CC2  41 71     EOR ($71,X)       
  1CC4  11 51     ORA ($51),Y       
  1CC6  70 00     BVS 00            
  1CC8  49 49     EOR #$49          
  1CCA  49 C9     EOR #$C9          
  1CCC  49 49     EOR #$49          
  1CCE  BE 00 55  LDX $0055,Y       
  1CD1  55 55     EOR $55,X         
  1CD3  D9 55 55  CMP $5555,Y       
  1CD6  99 00 1E  STA $001E,Y       
  1CD9  1B 7B DB  SLO $7BDB,Y       
  1CDC  DB 1E 18  DCP $1E18,Y       
  1CDF  18        CLC               
  1CE0  A2 00     LDX #$00          
  1CE2  A5 EA     LDA $EA           ; in RIOT RAM
  1CE4  C5 80     CMP $80           ; SWCHA
  1CE6  D0 13     BNE 13            
  1CE8  C5 DD     CMP $DD           ; in RIOT RAM
  1CEA  D0 0F     BNE 0F            
  1CEC  C5 A1     CMP $A1           ; in RIOT RAM
  1CEE  D0 0B     BNE 0B            
  1CF0  C9 01     CMP #$01          
  1CF2  D0 07     BNE 07            
  1CF4  A5 D2     LDA $D2           ; in RIOT RAM
  1CF6  C9 20     CMP #$20          
  1CF8  B0 01     BCS 01            
  1CFA  CA        DEX               
  1CFB  86 F3     STX $F3           ; in RIOT RAM
  1CFD  60        RTS               
  1CFE  00        BRK               
  1CFF  00        BRK               
  1D00  00        BRK               
  1D01  00        BRK               
  1D02  00        BRK               
  1D03  00        BRK               
  1D04  00        BRK               
  1D05  00        BRK               
  1D06  00        BRK               
  1D07  80 80     NOP #$80          
  1D09  80 80     NOP #$80          
  1D0B  80 C0     NOP #$C0          
  1D0D  C0 C0     CPY #$C0          
  1D0F  C0 C0     CPY #$C0          
  1D11  C0 C0     CPY #$C0          
  1D13  C0 C0     CPY #$C0          
  1D15  C0 C0     CPY #$C0          
  1D17  C0 C0     CPY #$C0          
  1D19  C0 C0     CPY #$C0          
  1D1B  E0 E0     CPX #$E0          
  1D1D  E0 E0     CPX #$E0          
  1D1F  E0 E0     CPX #$E0          
  1D21  E0 E0     CPX #$E0          
  1D23  E0 E0     CPX #$E0          
  1D25  E0 E0     CPX #$E0          
  1D27  F0 F0     BEQ F0            
  1D29  F0 F0     BEQ F0            
  1D2B  F0 F0     BEQ F0            
  1D2D  F0 F0     BEQ F0            
  1D2F  F8        SED               
  1D30  F8        SED               
  1D31  F8        SED               
  1D32  F8        SED               
  1D33  FC FC FE  NOP $FCFE,X       ; ROM address $FC0E via mirror
  1D36  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  1D39  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  1D3C  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  1D3F  FF 00 00  ISC LABEL_0095,X  
  1D42  00        BRK               
  1D43  00        BRK               
  1D44  00        BRK               
  1D45  00        BRK               
  1D46  00        BRK               
  1D47  00        BRK               
  1D48  00        BRK               
  1D49  1F 1F 00  SLO $1F00,X       
  1D4C  1F 1F 04  SLO $1F04,X       
  1D4F  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  1D51  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  1D53  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  1D55  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  1D57  04 04     NOP $04           ; NUSIZ0 (W), CXM0FB (R)
  1D59  04 0F     NOP $0F           ; PF2 (W)
  1D5B  1F 3F 00  SLO LABEL_0297,X  
  1D5E  00        BRK               
  1D5F  00        BRK               
  1D60  00        BRK               
  1D61  00        BRK               
  1D62  00        BRK               
  1D63  00        BRK               
  1D64  00        BRK               
  1D65  00        BRK               
  1D66  00        BRK               
  1D67  80 C0     NOP #$C0          
  1D69  E0 F0     CPX #$F0          
  1D6B  F8        SED               
  1D6C  FC F4 F0  NOP LABEL_0298,X  ; ROM address $F400 via mirror
  1D6F  F0 B0     BEQ B0            
  1D71  B0 F0     BCS F0            
  1D73  B0 B0     BCS B0            
  1D75  F0 F0     BEQ F0            
  1D77  F0 F0     BEQ F0            
  1D79  00        BRK               
  1D7A  00        BRK               
  1D7B  00        BRK               
  1D7C  00        BRK               
  1D7D  00        BRK               
  1D7E  00        BRK               
  1D7F  00        BRK               
  1D80  00        BRK               
  1D81  00        BRK               
  1D82  3F 3F 00  RLA LABEL_0297,X  
  1D85  3F 3F 09  RLA $3F09,X       
  1D88  09 09     ORA #$09          
  1D8A  09 09     ORA #$09          
  1D8C  09 09     ORA #$09          
  1D8E  09 09     ORA #$09          
  1D90  09 09     ORA #$09          
  1D92  09 1F     ORA #$1F          
  1D94  3F 7F 00  RLA $7F00,X       
  1D97  00        BRK               
  1D98  00        BRK               
  1D99  00        BRK               
  1D9A  00        BRK               
  1D9B  00        BRK               
  1D9C  00        BRK               
  1D9D  00        BRK               
  1D9E  00        BRK               
  1D9F  00        BRK               
  1DA0  00        BRK               
  1DA1  00        BRK               
  1DA2  00        BRK               
  1DA3  00        BRK               
  1DA4  00        BRK               
  1DA5  00        BRK               
  1DA6  00        BRK               
  1DA7  00        BRK               
  1DA8  00        BRK               
  1DA9  00        BRK               
  1DAA  00        BRK               
  1DAB  00        BRK               
  1DAC  00        BRK               
  1DAD  00        BRK               
  1DAE  00        BRK               
  1DAF  00        BRK               
  1DB0  00        BRK               
  1DB1  00        BRK               
  1DB2  00        BRK               
  1DB3  00        BRK               
  1DB4  00        BRK               
  1DB5  00        BRK               
  1DB6  00        BRK               
  1DB7  00        BRK               
  1DB8  00        BRK               
  1DB9  00        BRK               
  1DBA  00        BRK               
  1DBB  00        BRK               
  1DBC  00        BRK               
  1DBD  00        BRK               
  1DBE  00        BRK               
  1DBF  00        BRK               
  1DC0  00        BRK               
  1DC1  00        BRK               
  1DC2  00        BRK               
  1DC3  00        BRK               
  1DC4  00        BRK               
  1DC5  00        BRK               
  1DC6  00        BRK               
  1DC7  00        BRK               
  1DC8  00        BRK               
  1DC9  00        BRK               
  1DCA  00        BRK               
  1DCB  00        BRK               
  1DCC  00        BRK               
  1DCD  00        BRK               
  1DCE  00        BRK               
  1DCF  00        BRK               
  1DD0  00        BRK               
  1DD1  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  1DD4  FF FF FF  ISC LABEL_0183,X  ; ROM address $FF0F via mirror
  1DD7  FF FF C0  ISC $FFC0,X       
  1DDA  C0 C0     CPY #$C0          
  1DDC  C0 C0     CPY #$C0          
  1DDE  68        PHP               
  1DDF  00        BRK               
  1DE0  72        JAM               
  1DE1  00        BRK               
  1DE2  D4 D4     NOP $D4,X         ; in RIOT RAM
  1DE4  D4 D4     NOP $D4,X         ; in RIOT RAM
  1DE6  D4 84     NOP $84,X         ; INTIM
  1DE8  06 90     ASL $90           ; in RIOT RAM
  1DEA  80 24     NOP #$24          
  1DEC  F2        JAM               
  1DED  10 0C     BPL 0C            
  1DEF  70 0A     BVS 0A            
  1DF1  A6 9B     LDX $9B           ; in RIOT RAM
  1DF3  10 04     BPL 04            
  1DF5  E0 E0     CPX #$E0          
  1DF7  90 02     BCC 02            
  1DF9  C6 9B     DEC $9B           ; in RIOT RAM
  1DFB  60        RTS               
  1DFC  00        BRK               
  1DFD  00        BRK               
  1DFE  00        BRK               
  1DFF  00        BRK               
  1E00  1A        NOP               
  1E01  00        BRK               
  1E02  1C 18 3C  NOP LABEL_0302,X  
  1E05  7C 5E 16  NOP $5E16,X       
  1E08  3C 7E FE  NOP LABEL_0304,X  ; ROM address $7E0E via mirror
  1E0B  FE 00 E7  INC $00E7,X       
  1E0E  1A        NOP               
  1E0F  00        BRK               
  1E10  1C 18 38  NOP LABEL_0306,X  
  1E13  7C 5C 2E  NOP $5C2E,X       
  1E16  36 3C     ROL $3C,X         ; in TIA Addresses
  1E18  7E 7E 00  ROR LABEL_0308,X  
  1E1B  7C 1A 00  NOP $1A00,X       
  1E1E  1C 18 38  NOP LABEL_0306,X  
  1E21  3C 2C 2C  NOP $2C2C,X       
  1E24  3C 3C 3C  NOP LABEL_0082,X  
  1E27  3C 00 3C  NOP $003C,X       
  1E2A  1A        NOP               
  1E2B  00        BRK               
  1E2C  1C 18 38  NOP LABEL_0306,X  
  1E2F  7C 7C 6C  NOP $7C6C,X       
  1E32  38        SEC               
  1E33  3C 3C 3C  NOP LABEL_0082,X  
  1E36  00        BRK               
  1E37  76 1A     ROR $1A,X         ; AUDV1 (W)
  1E39  00        BRK               
  1E3A  1C 18 3C  NOP LABEL_0302,X  
  1E3D  7C 5E 36  NOP $5E36,X       
  1E40  7C 7C 7C  NOP LABEL_0314,X  ; ROM address $7C0C via mirror
  1E43  7C 00 EE  NOP $00EE,X       
  1E46  36 3C 1C  ROL LABEL_0316,X  
  1E49  38        SEC               
  1E4A  7C 7C 2E  NOP $7C2E,X       
  1E4D  3A        NOP               
  1E4E  36 7E FE  ROL LABEL_0304,X  ; ROM address $7E0E via mirror
  1E51  FE E6 C7  INC $E6C7,X       
  1E54  36 3C 1C  ROL LABEL_0316,X  
  1E57  38        SEC               
  1E58  7C 7C 7C  NOP LABEL_0314,X  ; ROM address $7C0C via mirror
  1E5B  36 3A 7E  ROL $3A7E,X       ; ROM address $3A0E via mirror
  1E5E  7E 7E 70  ROR LABEL_0308,X  ; ROM address $7E00 via mirror
  1E61  1C 3E 3C  NOP LABEL_0320,X  
  1E64  1C 18 38  NOP LABEL_0306,X  
  1E67  3C 3C 3C  NOP LABEL_0082,X  
  1E6A  34 38     NOP $38,X         ; in TIA Addresses
  1E6C  3C 3C 3C  NOP LABEL_0082,X  
  1E6F  38        SEC               
  1E70  36 3C 1C  ROL LABEL_0316,X  
  1E73  18        CLC               
  1E74  7C 7C 5C  NOP $7C5C,X       
  1E77  34 3C     NOP $3C,X         ; in TIA Addresses
  1E79  3C 3C 3C  NOP LABEL_0082,X  
  1E7C  76 70     ROR $70,X         
  1E7E  36 3C 1C  ROL LABEL_0316,X  
  1E81  38        SEC               
  1E82  7C 7C 6E  NOP $7C6E,X       
  1E85  7A        NOP               
  1E86  7C 7C 7C  NOP LABEL_0314,X  ; ROM address $7C0C via mirror
  1E89  7C EC CE  NOP $ECCE,X       
  1E8C  98        TYA               
  1E8D  46 46     LSR $46           
  1E8F  46 0E     LSR $0E           ; PF1 (W)
  1E91  0C 0A 0A  NOP $0A0A         
  1E94  0A        ASL A             
  1E95  0A        ASL A             
  1E96  0A        ASL A             
  1E97  68        PHP               
  1E98  00        BRK               
  1E99  48        PHA               
  1E9A  98        TYA               
  1E9B  46 46     LSR $46           
  1E9D  0E 0C 0A  ASL $0C0A         
  1EA0  0A        ASL A             
  1EA1  0A        ASL A             
  1EA2  0A        ASL A             
  1EA3  0A        ASL A             
  1EA4  68        PHP               
  1EA5  68        PHP               
  1EA6  48        PHA               
  1EA7  48        PHA               
  1EA8  90 64     BCC 64            
  1EAA  3F 64 90  RLA $6490,X       
  1EAD  C8        INY               
  1EAE  32        JAM               
  1EAF  32        JAM               
  1EB0  C8        INY               
  1EB1  00        BRK               
  1EB2  1F 54 54  SLO $5454,X       
  1EB5  15 7C     ORA $7C,X         
  1EB7  36 A8 2A  ROL $A82A,X       
  1EBA  2A        ROL A             
  1EBB  F8        SED               
  1EBC  3C C0 AA  NOP LABEL_0185,X  
  1EBF  0E E0 60  ASL $E060         
  1EC2  FE FE 38  INC $FE38,X       
  1EC5  FF FE FA  ISC $FEFA,X       ; ROM address $FE0A via mirror
  1EC8  F6 F4     INC $F4,X         ; in RIOT RAM
  1ECA  F2        JAM               
  1ECB  FC F8 E6  NOP $F8E6,X       
  1ECE  E4 E2     CPX $E2           ; in RIOT RAM
  1ED0  18        CLC               
  1ED1  3C 7E FF  NOP $7EFF,X       ; ROM address $7E0F via mirror
  1ED4  42        JAM               
  1ED5  C3 42     DCP ($42,X)       
  1ED7  C3 42     DCP ($42,X)       
  1ED9  C3 42     DCP ($42,X)       
  1EDB  C3 7E     DCP ($7E,X)       
  1EDD  5A        NOP               
  1EDE  42        JAM               
  1EDF  E7 58     ISC $58           
  1EE1  56 54     LSR $54,X         
  1EE3  52        JAM               
  1EE4  54 56     NOP $56,X         
  1EE6  58        CLI               
  1EE7  56 54     LSR $54,X         
  1EE9  52        JAM               
  1EEA  54 56     NOP $56,X         
  1EEC  58        CLI               
  1EED  56 54     LSR $54,X         
  1EEF  52        JAM               
  1EF0  54 56     NOP $56,X         
  1EF2  58        CLI               
  1EF3  56 54     LSR $54,X         
  1EF5  52        JAM               
  1EF6  00        BRK               
  1EF7  00        BRK               
  1EF8  00        BRK               
  1EF9  00        BRK               
  1EFA  00        BRK               
  1EFB  00        BRK               
  1EFC  00        BRK               
  1EFD  00        BRK               
  1EFE  00        BRK               
  1EFF  00        BRK               
  1F00  00        BRK               
  1F01  00        BRK               
  1F02  00        BRK               
  1F03  00        BRK               
  1F04  00        BRK               
  1F05  00        BRK               
  1F06  00        BRK               
  1F07  80 C0     NOP #$C0          
  1F09  E0 F0     CPX #$F0          
  1F0B  F8        SED               
  1F0C  FC F4 F0  NOP LABEL_0298,X  ; ROM address $F400 via mirror
  1F0F  F0 B0     BEQ B0            
  1F11  B0 F0     BCS F0            
  1F13  B0 B0     BCS B0            
  1F15  F0 F0     BEQ F0            
  1F17  F0 F0     BEQ F0            
  1F19  00        BRK               
  1F1A  00        BRK               
  1F1B  00        BRK               
  1F1C  00        BRK               
  1F1D  00        BRK               
  1F1E  00        BRK               
LABEL_0130:
  1F1F  00        BRK               
  1F20  00        BRK               
  1F21  00        BRK               
  1F22  00        BRK               
  1F23  00        BRK               
  1F24  00        BRK               
  1F25  00        BRK               
  1F26  00        BRK               
  1F27  00        BRK               
  1F28  00        BRK               
  1F29  00        BRK               
  1F2A  00        BRK               
  1F2B  00        BRK               
  1F2C  00        BRK               
  1F2D  00        BRK               
  1F2E  00        BRK               
  1F2F  00        BRK               
  1F30  00        BRK               
  1F31  00        BRK               
  1F32  00        BRK               
  1F33  00        BRK               
  1F34  00        BRK               
  1F35  00        BRK               
  1F36  00        BRK               
  1F37  00        BRK               
  1F38  00        BRK               
  1F39  00        BRK               
  1F3A  00        BRK               
  1F3B  00        BRK               
  1F3C  00        BRK               
  1F3D  00        BRK               
  1F3E  00        BRK               
  1F3F  00        BRK               
  1F40  00        BRK               
  1F41  00        BRK               
  1F42  00        BRK               
  1F43  00        BRK               
  1F44  00        BRK               
  1F45  00        BRK               
  1F46  00        BRK               
  1F47  00        BRK               
  1F48  00        BRK               
  1F49  00        BRK               
  1F4A  00        BRK               
  1F4B  00        BRK               
  1F4C  00        BRK               
  1F4D  00        BRK               
  1F4E  00        BRK               
  1F4F  00        BRK               
  1F50  00        BRK               
  1F51  00        BRK               
  1F52  00        BRK               
  1F53  00        BRK               
  1F54  00        BRK               
  1F55  00        BRK               
  1F56  00        BRK               
  1F57  00        BRK               
  1F58  00        BRK               
  1F59  00        BRK               
  1F5A  1C 3E 3C  NOP LABEL_0320,X  
  1F5D  1C 6C 78  NOP $6C78,X       ; ROM address $6C08 via mirror
  1F60  6E 7E 3E  ROR $7E3E         
  1F63  36 7E     ROL $7E,X         
  1F65  FE FE E7  INC $FEE7,X       
  1F68  38        SEC               
  1F69  7C 78 38  NOP $7838,X       
  1F6C  58        CLI               
  1F6D  70 7C     BVS 7C            
  1F6F  6C 7E 2E  JMP ($7E2E)       
  1F72  36 3E 3E  ROL $3E3E,X       
  1F75  36 38 7C  ROL $387C,X       ; ROM address $380C via mirror
  1F78  78        SEI               
  1F79  38        SEC               
  1F7A  58        CLI               
  1F7B  F0 FC     BEQ FC            
  1F7D  DC FC 7C  NOP LABEL_0340,X  ; ROM address $FC0C via mirror
  1F80  3C 3C 3C  NOP LABEL_0082,X  
  1F83  3C 1C 3E  NOP $1C3E,X       
  1F86  3C 1C 2C  NOP $1C2C,X       
  1F89  78        SEI               
  1F8A  7E 6E 7E  ROR $6E7E,X       ; ROM address $6E0E via mirror
  1F8D  36 7E     ROL $7E,X         
  1F8F  7E 7E 6E  ROR $7E6E,X       
  1F92  1C 1C 1C  NOP LABEL_0345,X  
  1F95  18        CLC               
  1F96  76 7E     ROR $7E,X         
  1F98  76 7C     ROR $7C,X         
  1F9A  3A        NOP               
  1F9B  7E FE FE  ROR LABEL_0106,X  ; ROM address $FE0E via mirror
  1F9E  C6 E7     DEC $E7           ; in RIOT RAM
  1FA0  38        SEC               
  1FA1  38        SEC               
  1FA2  38        SEC               
  1FA3  30 6C     BMI 6C            
  1FA5  7C 6C 7C  NOP $6C7C,X       ; ROM address $6C0C via mirror
  1FA8  36 3E     ROL $3E,X         ; in TIA Addresses
  1FAA  36 3E 3C  ROL LABEL_0320,X  
  1FAD  36 38 38  ROL LABEL_0247,X  
  1FB0  38        SEC               
  1FB1  30 EC     BMI EC            
  1FB3  FC FC FC  NOP LABEL_0340,X  ; ROM address $FC0C via mirror
  1FB6  FC 1C 3C  NOP $1C3C,X       
  1FB9  3C 38 3C  NOP $383C,X       
  1FBC  1C 1C 1C  NOP LABEL_0345,X  
  1FBF  18        CLC               
  1FC0  76 7E     ROR $7E,X         
  1FC2  7E 74 7E  ROR $747E,X       ; ROM address $740E via mirror
  1FC5  2E 7E 7E  ROL LABEL_0304    ; ROM address $7E0E via mirror
  1FC8  6C 76 28  JMP ($7628)       
  1FCB  28        PLP               
  1FCC  48        PHA               
  1FCD  48        PHA               
  1FCE  2A        ROL A             
  1FCF  2A        ROL A             
  1FD0  2A        ROL A             
  1FD1  2A        ROL A             
  1FD2  28        PLP               
  1FD3  28        PLP               
  1FD4  28        PLP               
  1FD5  28        PLP               
  1FD6  26 00     ROL $00           ; VSYNC (W), CXM0P (R)
  1FD8  28        PLP               
  1FD9  00        BRK               
  1FDA  48        PHA               
  1FDB  2A        ROL A             
  1FDC  2A        ROL A             
  1FDD  2A        ROL A             
  1FDE  2A        ROL A             
  1FDF  2A        ROL A             
  1FE0  28        PLP               
  1FE1  28        PLP               
  1FE2  28        PLP               
  1FE3  26 00     ROL $00           ; VSYNC (W), CXM0P (R)
  1FE5  00        BRK               
  1FE6  1C 3C 5E  NOP LABEL_0103,X  
  1FE9  18        CLC               
  1FEA  3C 00 18  NOP LABEL_0281,X  
  1FED  3C 5A 3C  NOP $5A3C,X       
  1FF0  18        CLC               
  1FF1  18        CLC               
  1FF2  3C 00 00  NOP LABEL_0095,X  
  1FF5  00        BRK               
  1FF6  00        BRK               
  1FF7  00        BRK               
  1FF8  00        BRK               
  1FF9  00        BRK               
  1FFA  00        BRK               
  1FFB  F0 00     BEQ 00            
  1FFD  F0 00     BEQ 00            
  1FFF  F0