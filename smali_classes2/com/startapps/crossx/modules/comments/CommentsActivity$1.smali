.class Lcom/startapps/crossx/modules/comments/CommentsActivity$1;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/comments/CommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/comments/CommentsActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreItems()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->-$$Nest$fgetmActionMode(Lcom/startapps/crossx/modules/comments/CommentsActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->-$$Nest$fgetmActionMode(Lcom/startapps/crossx/modules/comments/CommentsActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/modules/comments/CommentsActivity;)Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->loadMoreResults()V

    return-void
.end method
