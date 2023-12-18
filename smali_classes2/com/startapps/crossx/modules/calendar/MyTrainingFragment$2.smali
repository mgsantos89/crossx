.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$2;
.super Ljava/lang/Object;
.source "MyTrainingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

.field final synthetic val$cstonViewActionBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$2;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iput-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$2;->val$cstonViewActionBar:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$2;->val$cstonViewActionBar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
