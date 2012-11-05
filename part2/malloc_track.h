#include "misc.h"

#ifndef MALLOC_TRACK_
#define MALLOC_TRACK_

/* Linked list node */
typedef struct LLNode {
  void* ptr;
  struct LLNode* next;
} LLNode;

/* Create node from ptr and insert node at head of linked list */
/* Returns 0 if ptr is null */
/* Returns 1 if node insertion succeeds */
int insertNode(LLNode** head, void* ptr);

/* Remove node based with ptr data from linked list */
/* Returns 0 if ptr is null or node cannot be found */
/* Returns 1 if node removal succeeds */
int removeNode(LLNode** head, void* ptr);

/* Checks if linked list is empty */
/* Returns 0 if not empty */
/* Returns 1 if empty */
int isEmpty(LLNode** head);

#endif
