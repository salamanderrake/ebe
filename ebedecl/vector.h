#ifndef VECTOR_H
#define VECTOR_H

typedef struct VectorStruct
{
    int item_size;
    int size;
    int allocated;
    unsigned char *data;
} Vector;

Vector * vector_create(int size);
int vector_clear(Vector *v);
int vector_pushback(Vector *v, void *d);
int vector_popback(Vector *v, void *d);
int vector_getback(Vector *v, void *d);
int vector_setback(Vector *v, void *d);
int vector_set(Vector *v, int i, void *d);
int vector_get(Vector *v, int i, void *d);
int vector_reserve(Vector *v, int size);

#endif
