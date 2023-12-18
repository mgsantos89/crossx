.class Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "MaterialAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->initFloatingLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 510
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$000(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 512
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$002(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;Z)Z

    .line 513
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$100(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->reverse()V

    goto :goto_0

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$000(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 516
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$002(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;Z)Z

    .line 517
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$100(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 518
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$100(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->reverse()V

    goto :goto_0

    .line 520
    :cond_1
    iget-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$2;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$100(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_0
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
