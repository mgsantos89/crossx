.class Lcom/startapps/crossx/view/activity/CardsActivity$1;
.super Ljava/lang/Object;
.source "CardsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CardsActivity;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CardsActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CardsActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CardsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CardsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/CardsActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/CardsActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/CardsActivity;)Lcom/startapps/crossx/classes/presenter/CardsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/presenter/CardsPresenter;->getCards()V

    return-void
.end method
