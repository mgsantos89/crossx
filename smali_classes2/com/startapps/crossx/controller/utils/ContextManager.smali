.class public final Lcom/startapps/crossx/controller/utils/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/ContextManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/utils/ContextManager;",
        "",
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
.field public static final Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

.field private static mContext:Lcom/startapps/crossx/view/CrossXApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->Companion:Lcom/startapps/crossx/controller/utils/ContextManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMContext$cp()Lcom/startapps/crossx/view/CrossXApplication;
    .locals 1

    .line 7
    sget-object v0, Lcom/startapps/crossx/controller/utils/ContextManager;->mContext:Lcom/startapps/crossx/view/CrossXApplication;

    return-object v0
.end method

.method public static final synthetic access$setMContext$cp(Lcom/startapps/crossx/view/CrossXApplication;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/startapps/crossx/controller/utils/ContextManager;->mContext:Lcom/startapps/crossx/view/CrossXApplication;

    return-void
.end method
