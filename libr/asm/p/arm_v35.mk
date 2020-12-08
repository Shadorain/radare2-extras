# vector35 arm64 disassembler

OBJ_ARMV35=asm_arm_v35.o
ARM64V35_HOME=$(shell pwd)/../arch/arm/v35arm64/
include ../arch/arm/v35arm64/deps.mk
OBJ_ARMV35+=$(ARM64V35_LINK)

STATIC_OBJ+=${OBJ_ARMV35}
SHARED_OBJ+=${SHARED_ARMV35}
TARGET_ARMV35=asm_arm_v35.${LIBEXT}
CFLAGS+=$(ARM64V35_CFLAGS)

ALL_TARGETS+=${TARGET_ARMV35}

${TARGET_ARMV35}: $(STATIC_OBJ)
	${CC} $(call libname,asm_arm_v35) -o $(TARGET_ARMV35) \
		 ${OBJ_ARMV35} $(ARM64V35_LDFLAGS) \
		${LDFLAGS} ${CFLAGS} $(ARM64V35_CFLAGS)
