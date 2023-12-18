.class public final enum Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;
.super Ljava/lang/Enum;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field public static final enum ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field public static final enum COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field public static final enum DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field public static final enum EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

.field public static final enum HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;
    .locals 5

    .line 167
    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v3, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    sget-object v4, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 168
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 169
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const-string v1, "COLLAPSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 170
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const-string v1, "ANCHORED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 171
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const-string v1, "HIDDEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 172
    new-instance v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    const-string v1, "DRAGGING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    .line 167
    invoke-static {}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->$values()[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->$VALUES:[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .line 167
    const-class v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .line 167
    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->$VALUES:[Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0}, [Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method
