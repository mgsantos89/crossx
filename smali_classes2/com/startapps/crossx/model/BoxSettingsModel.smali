.class public Lcom/startapps/crossx/model/BoxSettingsModel;
.super Ljava/lang/Object;
.source "BoxSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/BoxSettingsModel$Currency;
    }
.end annotation


# instance fields
.field public currency:Lcom/startapps/crossx/model/BoxSettingsModel$Currency;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field public currencyId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_id"
    .end annotation
.end field

.field private enabledAppPayment:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_app_payment"
    .end annotation
.end field

.field private enabledAppPlanRenew:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_app_plan_renew"
    .end annotation
.end field

.field private enabledRecurrent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_recurrent"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabledAppPayment()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/startapps/crossx/model/BoxSettingsModel;->enabledAppPayment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/startapps/crossx/model/BoxSettingsModel;->enabledRecurrent:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledAppPlanRenew()Z
    .locals 2

    .line 39
    iget v0, p0, Lcom/startapps/crossx/model/BoxSettingsModel;->enabledAppPlanRenew:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledRecurrent()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/startapps/crossx/model/BoxSettingsModel;->enabledRecurrent:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
