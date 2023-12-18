.class Lcom/startapps/crossx/modules/likes/LikesActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LikesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/likes/LikesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/likes/LikesActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 102
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-static {p1}, Lcom/startapps/crossx/modules/likes/LikesActivity;->-$$Nest$fgetmLayoutManager(Lcom/startapps/crossx/modules/likes/LikesActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p1

    .line 103
    iget-object p2, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-static {p2}, Lcom/startapps/crossx/modules/likes/LikesActivity;->-$$Nest$fgetmLayoutManager(Lcom/startapps/crossx/modules/likes/LikesActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 105
    iget-object p3, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    iget-boolean p3, p3, Lcom/startapps/crossx/modules/likes/LikesActivity;->isLoading:Z

    if-nez p3, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-gt p1, p2, :cond_0

    .line 106
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-static {p1}, Lcom/startapps/crossx/modules/likes/LikesActivity;->-$$Nest$mstartLoadingData(Lcom/startapps/crossx/modules/likes/LikesActivity;)V

    :cond_0
    return-void
.end method
