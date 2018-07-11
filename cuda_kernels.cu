// CUDA Error abfragen und Dokumentenname und Dokumentenzeile ausgeben
#define gpuErrchk(ans) { gpuAssert((ans), __FILE__, __LINE__); }
inline void gpuAssert(cudaError_t code, char *file, int line, bool abort=true)
{
   if (code != cudaSuccess) 
   {
      fprintf(stderr,"GPUassert: %s %s %d\n", cudaGetErrorString(code), file, line);
	  cout << " Hit ENTER to exit application." << endl;
	  cin.get();
      if (abort) exit(code);
   }
}
