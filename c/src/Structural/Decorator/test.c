

#include "tea.h"
#include "tealeaves.h"
#include "chai.h"

int main( int argc, char ** argv )
{
	tea_t * teaLeaves = tealeaves_new();
	tea_t * chai = chai_new(teaLeaves);
	chai_steep_tea( chai );
	chai_free( chai );
}
