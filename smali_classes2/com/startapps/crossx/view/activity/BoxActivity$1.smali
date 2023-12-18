.class Lcom/startapps/crossx/view/activity/BoxActivity$1;
.super Ljava/lang/Object;
.source "BoxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/BoxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/BoxActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/BoxActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity$1;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/BoxActivity$1;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/BoxActivity$1;->this$0:Lcom/startapps/crossx/view/activity/BoxActivity;

    iget-object v0, v0, Lcom/startapps/crossx/view/activity/BoxActivity;->privateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method
