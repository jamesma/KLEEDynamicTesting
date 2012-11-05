#include "malloc_track.h"
#include "misc.h"

/* Create node from ptr and insert node at head of linked list */
/* Returns 0 if ptr is null */
/* Returns 1 if node insertion succeeds */
int insertNode(LLNode **head, void *ptr) {
  LLNode *temp;

  if (ptr == NULL)
    return 0;

  temp = (LLNode*)SafeMalloc(sizeof(LLNode));
  temp->ptr = ptr;
  /* fprintf(stderr, "debug insertNode: (ptr = %x)(head = %x)\n", ptr, *head); */

  if (*head == NULL) {
    /* linked list is empty */
    *head = temp;
    (*head)->next = NULL;
  } else {
    temp->next = *head;
    *head = temp;
  }
  return 1;
}

/* Remove node based with ptr data from linked list */
/* Returns 0 if ptr is null or node cannot be found */
/* Returns 1 if node removal succeeds */
int removeNode(LLNode **head, void *ptr) {
  LLNode *prev, *curr;

  if (ptr == NULL) {
    return 0;
  }
 
  /* fprintf(stderr, "debug removeNode: (ptr = %x)(head = %x)\n", ptr, *head); */

  curr = *head;
  while (curr != NULL) {
    if (curr->ptr == ptr) {
      if (curr == *head) {
        *head = curr->next;
        free(curr);
        return 1;
      } else {
        prev->next = curr->next;
        free(curr);
        return 1;
      }
    } else {
      prev = curr;
      curr = curr->next;
    }
  }

  return 0;
}

/* Checks if linked list is empty */
/* Returns 0 if not empty */
/* Returns 1 if empty */
int isEmpty(LLNode **head) {
  return *head == NULL;
}