#!/usr/sbin/dtrace -s

/* Provider: syscall
   Module: none / don't care
   Function: open
   Name: entry
*/
syscall:*:open:entry
{
        /* @a is an aggregation variable: arggregation variables are
        * populated by aggregation functions, like count()
        *
        * aggregation variables can have keys: In this example
        * we create one key for each execname the probe fires for
        */
    @a[execname] = count();
}
