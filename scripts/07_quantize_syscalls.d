#!/usr/sbin/dtrace -s

/* Provider: syscall
   Module: none / don't care / wildcard
   Function: none / don't care / wildcard
   Name: entry
*/

/* Attribution: This script is based on an example
 * in Brendan Gregg: Systems Performance, page. 651 */

syscall:*:*:entry
{
    /* Which system calls are bing called the most? */
}
