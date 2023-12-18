.class Lcom/startapps/crossx/view/fragment/ProfileFragment$2;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ProfileFragment;->createDialogAlterPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .line 416
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->requestAlterPassword()V

    return-void
.end method
