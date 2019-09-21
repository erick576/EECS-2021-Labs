a1: DD 1024
a2: DD 2048
a3: DD 4096
a4: DD 8192
avg: DD 0
ld x6, a1(x0)
ld x7, a2(x0)
ld x28, a3(x0)
ld x29, a4(x0)
add x5, x6, x7
add x30, x28, x29
add x31, x5, x30
srli x31, x31, 2
sd x31, 32(x0)