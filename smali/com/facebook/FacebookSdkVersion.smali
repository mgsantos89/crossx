.class public final Lcom/facebook/FacebookSdkVersion;
.super Ljava/lang/Object;
.source "FacebookSdkVersion.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/facebook/FacebookSdkVersion;",
        "",
        "()V",
        "BUILD",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BUILD:Ljava/lang/String; = "14.1.0"

.field public static final INSTANCE:Lcom/facebook/FacebookSdkVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/FacebookSdkVersion;

    invoke-direct {v0}, Lcom/facebook/FacebookSdkVersion;-><init>()V

    sput-object v0, Lcom/facebook/FacebookSdkVersion;->INSTANCE:Lcom/facebook/FacebookSdkVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
