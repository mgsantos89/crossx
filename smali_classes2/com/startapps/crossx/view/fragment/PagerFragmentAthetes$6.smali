.class Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;
.super Ljava/lang/Object;
.source "PagerFragmentAthetes.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->openFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    const/4 p2, 0x1

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fputfilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;I)V

    .line 254
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgettype(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$6;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fputcurrentPage(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
