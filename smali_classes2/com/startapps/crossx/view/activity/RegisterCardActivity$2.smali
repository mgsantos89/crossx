.class Lcom/startapps/crossx/view/activity/RegisterCardActivity$2;
.super Ljava/lang/Object;
.source "RegisterCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/RegisterCardActivity;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/RegisterCardActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/RegisterCardActivity;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterCardActivity$2;->this$0:Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
