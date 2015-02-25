#!/usr/sbin/dtrace -s



/* The first argument to open(2) is a path...
 * let's see which path it is!
 * (This example is adapted from Brendan Gregg: Systems Performance, page 141)
 */


/* Provider: syscall
   Module: none / don't care
   Function: open
   Name: entry
*/
syscall:*:open:entry
{
    printf("%s (PID: %d) opened %s", execname, pid, copyinstr(arg0));
}
