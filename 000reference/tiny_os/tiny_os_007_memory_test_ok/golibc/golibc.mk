
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := golibc

LOCAL_SRC_FILES := \
	abs.c atof.c atoi.c errno.c frexp.c ldexp.c \
	memchr.c memcmp.c memmove.c memset.c qsort.c rand.c \
	sprintf.c strcat.c strcmp.c strcpy.c strcspn.c strdup.c \
	strlen.c strncat.c strncmp.c strncpy.c strpbrk.c strrchr.c \
	strspn.c strstr.c strtol.c strtoul.c strtoul0.c vsprintf.c \

include $(BUILD_STATICLIB)

