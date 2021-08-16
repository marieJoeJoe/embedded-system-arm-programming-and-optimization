
//int main()
void hello(unsigned int* in, unsigned int* out){

  int i;
  for ( i = 0; i < 32; i++) *out |= *in >> (31 - i) <<i;
  
  //return 1;

}
