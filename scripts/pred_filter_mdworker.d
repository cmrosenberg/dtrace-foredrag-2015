#!/usr/sbin/dtrace -s

/* Provider: syscall
   Module: none / don't care
   Function: open
   Name: entry
*/
syscall:*:open:entry
/execname != "mdworker"/
/*ignore all probe firings for which execname is "mdworker" */
{
    @a[execname] = count();
}
