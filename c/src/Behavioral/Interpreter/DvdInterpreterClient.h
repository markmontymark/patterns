
//Interpreter Overview
//Define a macro language and syntax, parsing input into objects which perform the correct opertaions.
//DvdInterpreterClient - the Client

#ifndef INTERPRETER_CLIENT_H_
#define INTERPRETER_CLIENT_H_

#include "DvdInterpreterContext.h"

typedef struct DvdInterpreterClient DvdInterpreterClient_t;
struct DvdInterpreterClient
{
   DvdInterpreterContext_t * ctx;
};
   
DvdInterpreterClient_t * DvdInterpreterClient_new( DvdInterpreterContext_t *  ctx)  ;
void DvdInterpreterClient_free( DvdInterpreterClient_t * );
char * DvdInterpreterClient_interpret(DvdInterpreterClient_t * client, char * expression) ;

    

#endif
