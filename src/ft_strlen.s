section .text
global strlen

// load string from first argument, init a counter and loop.
strlen:
	mov rax, rdi;
	xor rcx, rcx;

.loop:
	mov al, [rax];
	test al, al;
	je .done;
	inc rcx;
	inc rax;
	jmp .loop;

.done:
	mov rax, rcx;
	ret;