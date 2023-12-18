.class public final enum Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;
.super Ljava/lang/Enum;
.source "CrossxSlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

.field public static final enum COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

.field public static final enum EXPANDED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;
    .locals 2

    .line 17
    sget-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->EXPANDED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    sget-object v1, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    filled-new-array {v0, v1}, [Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->EXPANDED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    .line 19
    new-instance v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    const-string v1, "COLLAPSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    .line 17
    invoke-static {}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->$values()[Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->$VALUES:[Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;
    .locals 1

    .line 17
    const-class v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;
    .locals 1

    .line 17
    sget-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->$VALUES:[Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    invoke-virtual {v0}, [Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    return-object v0
.end method
