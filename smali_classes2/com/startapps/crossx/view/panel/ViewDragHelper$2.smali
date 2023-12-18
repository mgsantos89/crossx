.class Lcom/startapps/crossx/view/panel/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/panel/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/panel/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/panel/ViewDragHelper;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper$2;->this$0:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/startapps/crossx/view/panel/ViewDragHelper$2;->this$0:Lcom/startapps/crossx/view/panel/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/panel/ViewDragHelper;->setDragState(I)V

    return-void
.end method
