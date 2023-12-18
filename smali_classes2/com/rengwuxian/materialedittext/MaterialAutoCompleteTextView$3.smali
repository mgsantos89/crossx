.class Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;
.super Ljava/lang/Object;
.source "MaterialAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 527
    iput-object p1, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 531
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$200(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$200(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->reverse()V

    goto :goto_0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$200(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-static {v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->access$200(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->reverse()V

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    iget-object v0, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->outerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView$3;->this$0:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    iget-object v0, v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->outerFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method
