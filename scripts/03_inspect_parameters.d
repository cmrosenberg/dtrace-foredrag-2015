#!/usr/sbin/dtrace -s

/* Provider: syscall
   Module: none / don't care
   Function: read
   Name: entry
*/

/* Function call read() takes three parameters:
 *          arg0 = a file-descriptor
 *          arg1 = a pointer to a buffer
 *          arg2 = a byte-count
 * */

syscall:*:read:entry
/arg2 != 1024/
{
    printf("PID: %d called read() with parameters: (%d, %x, %d)", pid, arg0, arg1, arg2);
}
