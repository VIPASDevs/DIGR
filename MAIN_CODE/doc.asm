section .data
	document db 10, "The nature of this program is educational [for those who are not willing to get on the Darknet/Market] and a safety guide for those who are on the Darknet. The legality of this program is lawfully in a gray-zone. As it depends on the user's purpose of consuming this program.", 10
	document_len equ $ - document ;length of documents

section .text
    global doc_text

doc_text:
    mov rax, 1 ;syswrite
    mov rdi, 1 ;i am tired of writing comments so others will understand (stdout)
    mov rsi, document ;pointer to the message
    mov rdx, document_len ;i am serious (poon]ter to the lengt of the message)
    syscall
    
    ret