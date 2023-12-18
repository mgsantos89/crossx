.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setSingleChoiceItems([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 308
    iget-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p1, 0x1

    return p1
.end method
