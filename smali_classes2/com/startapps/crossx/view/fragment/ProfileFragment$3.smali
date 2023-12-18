.class Lcom/startapps/crossx/view/fragment/ProfileFragment$3;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ProfileFragment;->inflateViewAlterPassword(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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

    .line 430
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 443
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;->validFieldsPassword()V

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
