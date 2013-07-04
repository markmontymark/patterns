//Assemble groups of objects with the same signature.
//teabags - the abstract base class for the composite


typedef struct teabags teabags_t;
struct teabags
{
	int ( * countTeaBags )( teabags_t * );
	int ( * add )(teabags_t * teaBagsToAdd);
	int ( * remove )(teabags_t * teaBagsToRemove);
   teabags_t * parent;
   arraylist_string_t * teaBagList; 
   char * name;
};
#define teabags_s sizeof(teabags_t)

teabags_t * teabags_new( void (* init)(teabags_t *) )
{
	teabags_t * t = malloc(teabags_s);
	teabags_init( t );
	if( init )
		init( t );
	return t;
}

void teabags_init( teabags_t * t )
{
	t->countTeaBags = teabags_countTeaBags;
	t->add = teabags_add;
	t->remove = teabags_remove;
}
    
int teabags_countTeaBags( teabags_t * );
int teabags_add(teabags_t * );
int teabags_remove(teabags_t *);
