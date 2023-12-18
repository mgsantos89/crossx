.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addListCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 184
    iget-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-static {p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$000(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
