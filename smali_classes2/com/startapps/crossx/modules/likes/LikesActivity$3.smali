.class Lcom/startapps/crossx/modules/likes/LikesActivity$3;
.super Ljava/lang/Object;
.source "LikesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/likes/LikesActivity;->startLoadingData()V
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

    .line 158
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$3;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesActivity$3;->this$0:Lcom/startapps/crossx/modules/likes/LikesActivity;

    invoke-static {v0}, Lcom/startapps/crossx/modules/likes/LikesActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/modules/likes/LikesActivity;)Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/classes/likes/LikesContract$Presenter;->loadMoreResults()V

    return-void
.end method
