.class Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$1;
.super Ljava/lang/Object;
.source "ChooseFormPaymentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity$1;->this$0:Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/ChooseFormPaymentActivity;)Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/presenter/ChooseFormPaymentPresenter;->getBoxOptions()V

    return-void
.end method
