#ifndef C_PATTERNS_SOUP
#define C_PATTERNS_SOUP

typedef struct soup soup_t;
struct soup
{
};
#define soup_s sizeof(soup_t)

soup_t * soup_new();
void soup_free(soup_t *);

#endif
