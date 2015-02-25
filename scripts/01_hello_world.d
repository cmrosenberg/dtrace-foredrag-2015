#!/usr/sbin/dtrace -s

/* Line above makes it easier to execute script */
/* Notice how these are C-style comments!*/

/* For this example, we simply wildcard provider, module and function */
*:*:*:BEGIN
{
    trace("Hello World!");
    exit(0);
}
