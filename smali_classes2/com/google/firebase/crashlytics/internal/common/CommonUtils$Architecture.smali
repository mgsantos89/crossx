.class final enum Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
.super Ljava/lang/Enum;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Architecture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARM64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARMV6:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARMV7:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARMV7S:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum ARM_UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum PPC:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum PPC64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum X86_32:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field public static final enum X86_64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

.field private static final matcher:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 140
    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "X86_32"

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->X86_32:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 141
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "X86_64"

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->X86_64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 142
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "ARM_UNKNOWN"

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARM_UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 143
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "PPC"

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->PPC:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 144
    new-instance v4, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "PPC64"

    const/4 v11, 0x4

    invoke-direct {v4, v0, v11}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->PPC64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 145
    new-instance v12, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "ARMV6"

    const/4 v5, 0x5

    invoke-direct {v12, v0, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARMV6:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 146
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "ARMV7"

    const/4 v5, 0x6

    invoke-direct {v13, v0, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARMV7:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 147
    new-instance v7, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "UNKNOWN"

    const/4 v5, 0x7

    invoke-direct {v7, v0, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 148
    new-instance v8, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "ARMV7S"

    const/16 v5, 0x8

    invoke-direct {v8, v0, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARMV7S:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 149
    new-instance v14, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    const-string v0, "ARM64"

    const/16 v5, 0x9

    invoke-direct {v14, v0, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->ARM64:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    move-object v0, v10

    move-object v5, v12

    move-object v6, v13

    move-object v9, v14

    .line 139
    filled-new-array/range {v0 .. v9}, [Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->matcher:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    .line 154
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "armeabi"

    .line 155
    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arm64-v8a"

    .line 156
    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "x86"

    .line 157
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getValue()Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    .locals 2

    .line 162
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    return-object v0

    .line 169
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->matcher:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->UNKNOWN:Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    .locals 1

    .line 139
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    .locals 1

    .line 139
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    return-object v0
.end method
