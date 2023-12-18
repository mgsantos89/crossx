.class Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;
.super Ljava/lang/Object;
.source "ClickToSelectEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->configureOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->setError(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;->this$0:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;

    iget-object p1, p1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mListableItems:[Ljava/lang/String;

    new-instance v1, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1$1;-><init>(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
