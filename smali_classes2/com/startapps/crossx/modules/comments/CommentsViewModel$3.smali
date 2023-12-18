.class Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;
.super Ljava/lang/Object;
.source "CommentsViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/modules/comments/SearchComments$CompletePostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/comments/CommentsViewModel;->onCommentPost(Ljava/lang/String;)V
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

    .line 127
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onFinishPostComment(Lcom/startapps/crossx/model/CommentModel;)V

    return-void
.end method

.method public onError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->error()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/rest/error/ResponseError;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "ocorreu um erro ao enviar o coment\u00e1rio, tente noamente"

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onErrorPostComment(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onErrorPostComment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$3;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-static {v0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;->-$$Nest$fgetmView(Lcom/startapps/crossx/modules/comments/CommentsViewModel;)Lcom/startapps/crossx/classes/comments/CommentsContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/classes/comments/CommentsContract$View;->onInitPostComment()V

    return-void
.end method
