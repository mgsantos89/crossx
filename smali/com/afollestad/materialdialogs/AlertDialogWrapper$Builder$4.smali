.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

.field final synthetic val$checkedItems:[Z

.field final synthetic val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    iput-object p3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 3

    .line 277
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 278
    iget-object p3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    array-length v1, v0

    if-ge p3, v1, :cond_1

    .line 281
    aget-boolean v1, v0, p3

    .line 283
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, p3

    .line 285
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v0, v0, p3

    if-eq v1, v0, :cond_0

    .line 286
    iget-object v1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-interface {v1, p1, p3, v0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
