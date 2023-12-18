.class Lcom/startapps/crossx/view/widget/listview/EditingListView$1$2;
.super Ljava/lang/Object;
.source "EditingListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/view/widget/listview/EditingListView$1;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/listview/EditingListView$1;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$2;->this$1:Lcom/startapps/crossx/view/widget/listview/EditingListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$2;->this$1:Lcom/startapps/crossx/view/widget/listview/EditingListView$1;

    iget-object v0, v0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1$2;->this$1:Lcom/startapps/crossx/view/widget/listview/EditingListView$1;

    iget-object v0, v0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;->this$0:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-static {v0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->-$$Nest$fgetonEditingListViewListener(Lcom/startapps/crossx/view/widget/listview/EditingListView;)Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;->onRemoveCellFinish()V

    return-void
.end method
