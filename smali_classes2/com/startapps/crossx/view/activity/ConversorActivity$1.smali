.class Lcom/startapps/crossx/view/activity/ConversorActivity$1;
.super Ljava/lang/Object;
.source "ConversorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ConversorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ConversorActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/activity/ConversorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ConversorActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ConversorActivity;

    iget-object v1, v1, Lcom/startapps/crossx/view/activity/ConversorActivity;->kg:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
