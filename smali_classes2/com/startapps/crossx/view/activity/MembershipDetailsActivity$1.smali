.class Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$1;
.super Ljava/lang/Object;
.source "MembershipDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$1;->this$0:Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;)Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/MembershipDetailsContract$Presenter;->getMembershipDetailsList()V

    return-void
.end method
