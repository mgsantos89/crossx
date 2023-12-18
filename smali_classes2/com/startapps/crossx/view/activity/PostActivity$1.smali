.class Lcom/startapps/crossx/view/activity/PostActivity$1;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PostActivity;->setupViewEditIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PostActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PostActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PostActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PostActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PostActivity;

    iget-object v1, v1, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
