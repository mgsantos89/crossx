.class synthetic Lcom/startapps/crossx/view/adapter/TimeLineAdapter$9;
.super Ljava/lang/Object;
.source "TimeLineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/TimeLineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$startapps$crossx$model$enuns$UsersRole:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    invoke-static {}, Lcom/startapps/crossx/model/enuns/UsersRole;->values()[Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$9;->$SwitchMap$com$startapps$crossx$model$enuns$UsersRole:[I

    :try_start_0
    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/UsersRole;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
