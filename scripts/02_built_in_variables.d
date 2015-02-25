#!/usr/sbin/dtrace -s

/* Provider: syscall
   Module: none / don't care
   Function: read
   Name: entry
*/
syscall:*:read:entry
{
    printf("UID: %d, PID: %d entered read() at timestamp %d", uid, pid, timestamp);
}
