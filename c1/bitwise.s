	.cpu cortex-a15
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bitwise.c"
	.text
	.align	2
	.global	hello
	.type	hello, %function
hello:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r1]
	mov	r3, #0
	str	lr, [sp, #-4]!
.L3:
	ldr	lr, [r0]
	rsb	ip, r3, #31
	mov	ip, lr, lsr ip
	orr	r2, r2, ip, asl r3
	add	r3, r3, #1
	cmp	r3, #32
	str	r2, [r1]
	bne	.L3
	ldr	pc, [sp], #4
	.size	hello, .-hello
	.ident	"GCC: (crosstool-NG linaro-1.13.1+bzr2650 - Linaro GCC 2014.03) 4.8.3 20140303 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
