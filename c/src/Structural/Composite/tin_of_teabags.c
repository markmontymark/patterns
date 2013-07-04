

//tin_of_tin_of_teabags - one composite extension - the "node"

typedef struct tin_of_teabags tin_of_teabags_t;
struct tin_of_teabags
{
   int ( * countTeaBags )( tin_of_teabags_t * );
   int ( * add )(tin_of_teabags_t * tin, teabags_t * teaBagsToAdd);
   int ( * remove )(tin_of_teabags_t * tin, teabags_t * teaBagsToRemove);
   tin_of_teabags_t * parent;
   int teaBagListSize;
   teabags_t ** teaBagList;
   char * name;
};
#define tin_of_teabags_s sizeof(tin_of_teabags_t)

tin_of_teabags_t * tin_of_teabags_new( char * name )
{
   tin_of_teabags_t * t = malloc(tin_of_teabags_s);
   tin_of_teabags_init( t, name );
   return t;
}

void tin_of_teabags_init( tin_of_teabags_t * t, char * name )
{
   t->countTeaBags = tin_of_teabags_countTeaBags;
   t->add = tin_of_teabags_add;
   t->remove = tin_of_teabags_remove;
   t->createListIterator = tin_of_teabags_createListIterator;
	t->teaBagList  = arraylist_string_new();
	t->name = name;
}



int tin_of_teabags_countTeaBags( tin_of_teabags_t * t ) 
{
	int totalTeaBags = 0;
	teabags_t * tmp_teabags;
	teabags_t ** list = t->teaBagList;
	while(*list)
	{
		totalTeaBags += *list->countTeaBags();
		list++;
	}
	return totalTeaBags;
}
   
int tin_of_teabags_add(tin_of_teabags_t * tin, teabags_t * teaBagsToAdd) 
{
	teaBagsToAdd->parent = tin;
	int teaBagListSize = t->teaBagListSize + sizeof teaBagsToAdd;
	tin->teaBagList = realloc( tin->teaBagList, sizeof teaBagsToAdd )
   return teaBagList.add(teaBagsToAdd);
}
   
   public boolean remove(TeaBags teaBagsToRemove) {
       ListIterator listIterator = 
           this.createListIterator();
       TeaBags tempTeaBags;
       while (listIterator.hasNext()) {
           tempTeaBags = (TeaBags)listIterator.next();
           if (tempTeaBags == teaBagsToRemove) {
               listIterator.remove();
               return true;
           }
       }
       return false;
   }
   
