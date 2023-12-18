.class Lcom/startapps/crossx/view/activity/CreditCardListActivity$4;
.super Ljava/lang/Object;
.source "CreditCardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/CreditCardListActivity;->deleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/CreditCardListActivity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CreditCardListActivity$4;->this$0:Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
