.class synthetic Lcom/startapps/crossx/AnalyticsTrackers$1;
.super Ljava/lang/Object;
.source "AnalyticsTrackers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/AnalyticsTrackers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$startapps$crossx$AnalyticsTrackers$Target:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/startapps/crossx/AnalyticsTrackers$Target;->values()[Lcom/startapps/crossx/AnalyticsTrackers$Target;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/startapps/crossx/AnalyticsTrackers$1;->$SwitchMap$com$startapps$crossx$AnalyticsTrackers$Target:[I

    :try_start_0
    sget-object v1, Lcom/startapps/crossx/AnalyticsTrackers$Target;->APP:Lcom/startapps/crossx/AnalyticsTrackers$Target;

    invoke-virtual {v1}, Lcom/startapps/crossx/AnalyticsTrackers$Target;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
