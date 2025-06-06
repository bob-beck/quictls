/*
 * Copyright 2022-2024 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the Apache License 2.0 (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

#ifndef OPENSSL_QUIC_H
# define OPENSSL_QUIC_H

# include <openssl/macros.h>
# include <openssl/ssl.h>

# ifndef OPENSSL_NO_BORING_QUIC_API

/* moved from crypto.h.in to avoid breaking FIPS checksums */
# define OPENSSL_INFO_QUIC                     2000

# endif /* OPENSSL_NO_BORING_QUIC_API */
#endif /* OPENSSL_QUIC_H */
