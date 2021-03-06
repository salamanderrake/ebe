#include "dict.h"

#define TABLE_SIZE (173)

typedef struct DictStruct
{
    int item_size;
    int table_size;
    int items_in_use;
    Entry *table;
} Dict;

typedef struct DictEntryStruct
{
    Vector *status;
    Vector *entries;
} Entry;

Dict * dict_create(int size)
{
    Dict *v;
    int i;

    v = malloc ( sizeof(Dict) );
    if ( v == NULL ) return NULL;
    v->table = calloc ( TABLE_SIZE, sizeof(Entry) );
    if ( v->table == NULL ) return NULL;
    v->item_size = size;
    v->table_size = TABLE_SIZE;
    v->items_in_use = 0;
    for ( i=0; i < TABLE_SIZE; i++ ) {
        v->table[i].entries = vector_create(size);
        v->table[i].status = vector_create(1);
    }
    return v;
}

int dict_clear(Dict *v)
{
    int i;
    if ( v == NULL ) return -1;
    for ( i = 0; i < v->table_size; i++ ) {
        free ( v.table[i].entries->data );
        free ( v.table[i].entries );
        free ( v.table[i].status->data );
        free ( v.table[i].status );
    }
    free ( v->tables[i].entries );
    free ( v->tables[i].status );
    v->items_in_use = 0;
    for ( i=0; i < TABLE_SIZE; i++ ) {
        v->table[i].entries = vector_create(size);
        v->table[i].status = vector_create(1);
    }
}

int hash ( char *s, int size )
{
    int n;

    n = 0;
    while ( *s ) {
        n = n * 131 ^ *s;
        s++;
    }
    return s % size;
}
int dict_set(Dict *v, char *s, void *d)
{
    int h;
    Vector *entries;
    Vector *status;
    char *s;
    int i;

    h = hash(s,v->table_size;
    entries = v.table[i].entries;
    status = v.table[i].status;
    i = 0;
    while ( i < entries->size ) {
        if ( vector_get(entries,i,
}

int dict_get(Dict *v, char *s, void *d)
{
    int h;
    Entry *e;

    h = hash(s,v->table_size;
    e = v.table+i;

}

int dict_setsize(Dict *v, int size)
{
}
