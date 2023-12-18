.class public Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CommentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadMoreHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/CommentsAdapter;Landroid/view/View;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreHolder;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    .line 179
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 181
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreHolder;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->-$$Nest$fgetmLoadMoreItemsListener(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;->onLoadMoreItems()V

    return-void
.end method
