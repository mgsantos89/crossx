.class Lcom/startapps/crossx/modules/likes/LikesViewModel$1;
.super Ljava/lang/Object;
.source "LikesViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/modules/likes/SearchLikes$CompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/likes/LikesViewModel;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/likes/LikesViewModel;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/LikesModel;",
            ">;Z)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-static {v0, p2}, Lcom/startapps/crossx/modules/likes/LikesViewModel;->-$$Nest$fputhasMoreItems(Lcom/startapps/crossx/modules/likes/LikesViewModel;Z)V

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/LikesModel;

    .line 46
    iget-object v1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/LikesModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/startapps/crossx/modules/likes/LikesViewModel;->-$$Nest$fputmLastId(Lcom/startapps/crossx/modules/likes/LikesViewModel;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/likes/LikesViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/likes/LikesViewModel;)Lcom/startapps/crossx/classes/likes/LikesContract$View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/startapps/crossx/classes/likes/LikesContract$View;->updateItems(Ljava/util/List;IZ)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/likes/LikesViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/likes/LikesViewModel;)Lcom/startapps/crossx/classes/likes/LikesContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/likes/LikesContract$View;->errorUpdateItems()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/startapps/crossx/modules/likes/LikesViewModel$1;->this$0:Lcom/startapps/crossx/modules/likes/LikesViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/likes/LikesViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/likes/LikesViewModel;)Lcom/startapps/crossx/classes/likes/LikesContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/likes/LikesContract$View;->errorUpdateItems()V

    return-void
.end method
