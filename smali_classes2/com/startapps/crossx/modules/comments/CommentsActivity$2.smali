.class Lcom/startapps/crossx/modules/comments/CommentsActivity$2;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 124
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity$2;->this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity$2;->this$0:Lcom/startapps/crossx/modules/comments/CommentsActivity;

    iget-object v0, v0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
