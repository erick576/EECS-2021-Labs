a: DD 0xAAAABBBBCCCCDDDD
b: DD 0x4444333322221111
c: DM 1
d: DM 1
e: DM 1
f: DM 1
h: DM 1
i: DM 1
j: DM 1
ld x6, a(x0)
ld x7, b(x0)

add x5, x6, x7
sub x28, x6, x7
sub x29, x7, x6
addi x30, x0, 0x00
or x31, x6, x7
xori x19, x6, -1
xori x20, x7, -1 

sd x5, c(x0)
sd x28, d(x0)
sd x29, e(x0)
sd x30, f(x0)
sd x31, h(x0)
sd x19, i(x0)
sd x20, j(x0)