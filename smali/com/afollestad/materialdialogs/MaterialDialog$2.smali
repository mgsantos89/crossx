.class Lcom/afollestad/materialdialogs/MaterialDialog$2;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .line 1581
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1584
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressPercentFormat:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1587
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentProgress()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->getMaxProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 1586
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressNumberFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 1591
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCurrentProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$2;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->getMaxProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1590
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
