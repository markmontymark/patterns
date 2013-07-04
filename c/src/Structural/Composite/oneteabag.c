

//OneTeaBag.java - one composite extension - the "leaf"


typedef struct oneteabag oneteabag_t;
struct oneteabag
{
	char * name;
};
#define oneteabag_s sizeof(oneteabag_t)

oneteabag_t * oneteabag_new( char * name)
{
	oneteabag_t * t = malloc(oneteabag_s);
	t->name = name;
	return t;
}

int oneteabag_countTeaBags()
{
	return 1;
}

int oneteabag_add(teabags_t * teaBagsToAdd) 
{
  return false;
}
int oneteabag_remove(teabags_t * teaBagsToRemove) 
{
  return false;
}

