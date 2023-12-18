.class Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;
.super Ljava/lang/Object;
.source "CommentsViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/modules/comments/SearchComments$CompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/comments/CommentsViewModel;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;Z)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {v0, p2}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fputhasMoreItems(Lcom/startapps/crossx/modules/comments/CommentsViewModel;Z)V

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/CommentModel;

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/CommentModel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fputmLastId(Lcom/startapps/crossx/modules/comments/CommentsViewModel;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {p2}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, v0}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->updateItems(Ljava/util/List;IZ)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onFinishLoadComment()V

    return-void
.end method

.method public onError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onErrorLoadComment()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {p1}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onErrorLoadComment()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$1;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onInitLoadComment()V

    return-void
.end method
