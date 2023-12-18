.class Lio/realm/internal/NativeContext$ManualReleaseNativeContext;
.super Lio/realm/internal/NativeContext;
.source "NativeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManualReleaseNativeContext"
.end annotation


# instance fields
.field private final references:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/realm/internal/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lio/realm/internal/NativeContext;-><init>()V

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/NativeContext$ManualReleaseNativeContext;->references:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addReference(Lio/realm/internal/NativeObject;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/realm/internal/NativeContext$ManualReleaseNativeContext;->references:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 6

    .line 72
    iget-object v0, p0, Lio/realm/internal/NativeContext$ManualReleaseNativeContext;->references:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/NativeObject;

    .line 73
    invoke-interface {v1}, Lio/realm/internal/NativeObject;->getNativeFinalizerPtr()J

    move-result-wide v2

    invoke-interface {v1}, Lio/realm/internal/NativeObject;->getNativePtr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/NativeObjectReference;->nativeCleanUp(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
