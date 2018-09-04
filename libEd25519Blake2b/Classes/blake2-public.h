//
//  blake2-public.h
//  Pods
//
//  Created by Stone on 2018/9/4.
//

#ifndef blake2_public_h
#define blake2_public_h

#include <stddef.h>
#include <stdint.h>

#if defined(_MSC_VER)
#define BLAKE2_PACKED(x) __pragma(pack(push, 1)) x __pragma(pack(pop))
#define ALIGN(x) __declspec(align(x))
#else
#define BLAKE2_PACKED(x) x __attribute__((packed))
#define ALIGN(x) __attribute__((aligned(x)))
#endif

#if defined(__cplusplus)
extern "C" {
#endif

    int blake2b( void *out, size_t outlen, const void *in, size_t inlen, const void *key, size_t keylen );

#if defined(__cplusplus)
}
#endif

#endif /* blake2_public_h */
