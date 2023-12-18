.class Lcom/startapps/crossx/modules/comments/CommentsViewModel$2;
.super Ljava/lang/Object;
.source "CommentsViewModel.java"

# interfaces
.implements Lcom/startapps/crossx/modules/comments/SearchComments$DeleteCommentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/comments/CommentsViewModel;->onDeleteComment(Lcom/startapps/crossx/model/CommentModel;)V
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

    .line 102
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsViewModel$2;->this$0:Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/startapps/crossx/rest/error/ResponseError;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
