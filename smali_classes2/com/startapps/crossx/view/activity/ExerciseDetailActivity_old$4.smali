.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$4;
.super Ljava/lang/Object;
.source "ExerciseDetailActivity_old.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

.field final synthetic val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$4;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$4;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$4;->val$materialDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method
