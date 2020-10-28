#ifndef CLWS_H
#define CLWS_H

#include <openssl/ssl.h>

#ifndef _WIN32
#include <termios.h>
#endif

#include <libwebsockets.h>

//Some #define'd constants are unavailable in Swift; add them here to export them.
static const int SWIFT_LWS_PRE_PADDING = LWS_SEND_BUFFER_PRE_PADDING;
static const int SWIFT_LWS_POST_PADDING = LWS_SEND_BUFFER_POST_PADDING;
//If more constants have the problem, add them here.

#endif
