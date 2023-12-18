.class Lcom/startapps/crossx/modules/likes/LikesActivity$2;
.super Ljava/lang/Object;
.source "LikesActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/likes/LikesActivity;->createViewLoading()V
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

    .line 141
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$2;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReloadStart()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$2;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    iget-object v0, v0, Lcom/startapps/crossx/modules/likes/LikesActivity;->footerView:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->reset()V

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$2;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-static {v0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->-$$Nest$mstartLoadingData(Lcom/startapps/crossx/modules/likes/LikesActivity;)V

    return-void
.end method
