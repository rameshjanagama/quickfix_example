#include<iostream>
#include<fix.h>

#include "quickfix/FileStore.h"
#include "quickfix/SocketInitiator.h"
#include "quickfix/SessionSettings.h"
#include <string>
#include <fstream>

using namespace std;

int main(int argc, char** argv) {
  std::cout << "Welcome to FIX ENGINE!" <<endl;
  
  if ( argc != 2 )
  {
      std::cout << "usage: " << argv[ 0 ]
                << " FILE." << std::endl;
      return 0;
  }
  std::string file = argv[1];

  try
  {
    FIX::SessionSettings settings( file );

    SOR _sor;
    FIX::FileStoreFactory storeFactory( settings );
    FIX::SocketInitiator initiator( _sor, storeFactory, settings );

    initiator.start();
    _sor.run();
    initiator.stop();

    return 0;
  }
  catch ( std::exception & e )
  {
    std::cout << e.what();
    return 1;
  }
   return 1;
}
