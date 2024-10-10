#include <stdio.h>
#include "ft_printf.h"
#include <limits.h>

void test_printf(const char *description, void *ptr) 
{
    int printf_length, ft_printf_length;
    
    printf("Testing: %s\n", description);
    
    printf("printf output: ");
    printf_length = printf("%p\n", ptr);
    printf("Length returned by printf: %d\n", printf_length);
    
    printf("ft_printf output: ");
    ft_printf_length = ft_printf("%p\n", ptr);
    printf("Length returned by ft_printf: %d\n", ft_printf_length);
    
    printf("\n");
}

int main() 
{
    int a = 42;
    int *ptr = &a;
    void *null_ptr = NULL;
    void *malloc_ptr = malloc(100);
   
	test_printf("NULL pointer", null_ptr);
    test_printf("Stack variable pointer", ptr);
    test_printf("Heap allocated pointer", malloc_ptr);
    test_printf("Function pointer", (void *)main);

	test_printf("LONG_MIN pointer", (void *)LONG_MIN);
    test_printf("LONG_MAX pointer", (void *)LONG_MAX);
	test_printf("ULONG_MAX pointer", (void *)ULONG_MAX);
	test_printf("Negative ULONG_MAX pointer", (void *)(-ULONG_MAX));	

    free(malloc_ptr);

    return 0;
}
