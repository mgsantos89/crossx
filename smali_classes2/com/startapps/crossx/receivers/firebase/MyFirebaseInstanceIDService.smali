.class public final Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseInstanceIDService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "()V",
        "Companion",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService;->Companion:Lcom/startapps/crossx/receivers/firebase/MyFirebaseInstanceIDService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method
