.class public final Lcom/startapps/crossx/controller/utils/ContextManager$Companion;
.super Ljava/lang/Object;
.source "ContextManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/utils/ContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/startapps/crossx/controller/utils/ContextManager$Companion;",
        "",
        "()V",
        "mContext",
        "Lcom/startapps/crossx/view/CrossXApplication;",
        "getContext",
        "setContext",
        "",
        "context",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/ContextManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContext()Lcom/startapps/crossx/view/CrossXApplication;
    .locals 1

    .line 13
    invoke-static {}, Lcom/startapps/crossx/controller/utils/ContextManager;->access$getMContext$cp()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final setContext(Lcom/startapps/crossx/view/CrossXApplication;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/startapps/crossx/controller/utils/ContextManager;->access$getMContext$cp()Lcom/startapps/crossx/view/CrossXApplication;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/ContextManager;->access$setMContext$cp(Lcom/startapps/crossx/view/CrossXApplication;)V

    :cond_0
    return-void
.end method
