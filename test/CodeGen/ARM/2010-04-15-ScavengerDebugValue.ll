; RUN: llc < %s
; PR6847
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64-n32"
target triple = "armv4t-apple-darwin10"

define hidden i32 @__addvsi3(i32 %a, i32 %b) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata i32 %b, i64 0, metadata !0, metadata !MDExpression())
  %0 = add nsw i32 %b, %a, !dbg !9                ; <i32> [#uses=1]
  ret i32 %0, !dbg !11
}

declare void @llvm.dbg.value(metadata, i64, metadata, metadata) nounwind readnone

!llvm.dbg.cu = !{!3}
!llvm.module.flags = !{!15}
!0 = !MDLocalVariable(tag: DW_TAG_arg_variable, name: "b", line: 93, arg: 0, scope: !1, file: !2, type: !6)
!1 = !MDSubprogram(name: "__addvsi3", linkageName: "__addvsi3", line: 94, isLocal: false, isDefinition: true, virtualIndex: 6, isOptimized: false, file: !12, scope: null, type: !4)
!2 = !MDFile(filename: "libgcc2.c", directory: "/Users/bwilson/local/nightly/test-2010-04-14/build/llvmgcc.roots/llvmgcc~obj/src/gcc")
!12 = !MDFile(filename: "libgcc2.c", directory: "/Users/bwilson/local/nightly/test-2010-04-14/build/llvmgcc.roots/llvmgcc~obj/src/gcc")
!3 = !MDCompileUnit(language: DW_LANG_C89, producer: "4.2.1 (Based on Apple Inc. build 5658) (LLVM build 00)", isOptimized: true, emissionKind: 0, file: !12, enums: !13, retainedTypes: !13, subprograms: !14)
!4 = !MDSubroutineType(types: !5)
!5 = !{!6, !6, !6}
!6 = !MDDerivedType(tag: DW_TAG_typedef, name: "SItype", line: 152, file: !12, baseType: !8)
!7 = !MDFile(filename: "libgcc2.h", directory: "/Users/bwilson/local/nightly/test-2010-04-14/build/llvmgcc.roots/llvmgcc~obj/src/gcc")
!8 = !MDBasicType(tag: DW_TAG_base_type, name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !MDLocation(line: 95, scope: !10)
!10 = distinct !MDLexicalBlock(line: 94, column: 0, file: !12, scope: !1)
!11 = !MDLocation(line: 100, scope: !10)
!13 = !{i32 0}
!14 = !{!1}
!15 = !{i32 1, !"Debug Info Version", i32 3}
