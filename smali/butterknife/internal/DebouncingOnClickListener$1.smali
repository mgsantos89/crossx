.class final Lbutterknife/internal/DebouncingOnClickListener$1;
.super Ljava/lang/Object;
.source "DebouncingOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/DebouncingOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Lbutterknife/internal/DebouncingOnClickListener;->access$002(Z)Z

    return-void
.end method
