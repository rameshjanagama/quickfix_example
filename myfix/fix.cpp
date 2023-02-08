#include "fix.h"
#include <quickfix/Session.h>
#include <iostream>

void SOR::run()
{
  while ( true )
  {
    /*try
    {
      std::cout << "RUN" << std::endl;
    }
    catch ( std::exception & e )
    {
      std::cout << "Message Not Sent: " << e.what();
    }*/
  }
}

void SOR::onLogon( const FIX::SessionID& sessionID )
{
  std::cout << std::endl << "Logon - " << sessionID << std::endl;
}

void SOR::onLogout( const FIX::SessionID& sessionID )
{
  std::cout << std::endl << "Logout - " << sessionID << std::endl;
}

void SOR::fromApp(const FIX::Message& message,
                          const FIX::SessionID& sessionID )
throw(FIX::FieldNotFound,
      FIX::IncorrectDataFormat,
      FIX::IncorrectTagValue,
      FIX::UnsupportedMessageType)
{
  crack( message, sessionID );
  std::cout << std::endl << "IN: " << message << std::endl;
}

void SOR::toApp(FIX::Message& message,
                        const FIX::SessionID& sessionID )
throw(FIX::DoNotSend)
{
  try
  {
    FIX::PossDupFlag possDupFlag;
    message.getHeader().getField( possDupFlag );
    if ( possDupFlag ) throw FIX::DoNotSend();
  }
  catch ( FIX::FieldNotFound& ) {}

  std::cout << std::endl
  << "OUT: " << message << std::endl;
}

void SOR::onMessage ( const FIX50::ExecutionReport&, const FIX::SessionID& ) {}
void SOR::onMessage ( const FIX50::OrderCancelReject&, const FIX::SessionID& ) {}
