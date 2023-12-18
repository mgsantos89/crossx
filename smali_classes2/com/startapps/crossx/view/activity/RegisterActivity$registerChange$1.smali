.class public final Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1;
.super Ljava/lang/Object;
.source "RegisterActivity.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/RegisterActivity;->registerChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/startapps/crossx/view/activity/RegisterActivity$registerChange$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/RegisterActivity;


# direct methods
.method public static synthetic $r8$lambda$UYJAAa8MtWgPFD0dvOwNSWR8qW4(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/text/Editable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1;->afterTextChanged$lambda-2$lambda-1(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/text/Editable;)V

    return-void
.end method

.method constructor <init>(Lcom/startapps/crossx/view/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final afterTextChanged$lambda-2$lambda-1(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/text/Editable;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$searchBox(Lcom/startapps/crossx/view/activity/RegisterActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1;->this$0:Lcom/startapps/crossx/view/activity/RegisterActivity;

    .line 217
    invoke-static {v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$getMRunner$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$getMHandler$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 221
    new-instance v1, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/startapps/crossx/view/activity/RegisterActivity$registerChange$1$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/activity/RegisterActivity;Landroid/text/Editable;)V

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$setMRunner$p(Lcom/startapps/crossx/view/activity/RegisterActivity;Ljava/lang/Runnable;)V

    .line 224
    invoke-static {v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$getMHandler$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$getMRunner$p(Lcom/startapps/crossx/view/activity/RegisterActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {v0}, Lcom/startapps/crossx/view/activity/RegisterActivity;->access$clearBoxList(Lcom/startapps/crossx/view/activity/RegisterActivity;)V

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
