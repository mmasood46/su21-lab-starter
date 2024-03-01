#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head) {
    /* TODO: Implement ll_has_cycle */
    
// Initialized the pointers: fast_ptr and slow_ptr 
node *fast_ptr = head;
node *slow_ptr = head;
// to traverse the list with two pointers 
while (fast_ptr != NULL && fast_ptr->next != NULL) {
// fast_ptr advances by two nodes 
fast_ptr = fast_ptr->next->next;
//  slow_ptr advances by one node 
slow_ptr = slow_ptr->next;
// Check: whether fast_ptr and slow_ptr pointing the same node 
if (fast_ptr == slow_ptr) {
//If they point to the same node, the list is having cycle
return 1;
}
}
//If fast_ptr reache the end of the list (NULL), the list is acyclic 
return 0;

}
