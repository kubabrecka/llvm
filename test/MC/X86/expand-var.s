// RUN: llvm-mc -filetype=obj -triple x86_64-pc-linux < %s | llvm-readobj -r | FileCheck %s

// CHECK:       Section (2) .rela.text {
// CHECK-NEXT:    0x0 R_X86_64_32 d 0x0
// CHECK-NEXT:  }

a:
        b = a
        c = a
        d = a
        .weak d
        .long d + (b - c)
