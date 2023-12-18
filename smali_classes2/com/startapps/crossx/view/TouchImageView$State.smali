.class final enum Lcom/startapps/crossx/view/TouchImageView$State;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/view/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/view/TouchImageView$State;

.field public static final enum ANIMATE_ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;

.field public static final enum DRAG:Lcom/startapps/crossx/view/TouchImageView$State;

.field public static final enum FLING:Lcom/startapps/crossx/view/TouchImageView$State;

.field public static final enum NONE:Lcom/startapps/crossx/view/TouchImageView$State;

.field public static final enum ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/view/TouchImageView$State;
    .locals 5

    .line 57
    sget-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    sget-object v1, Lcom/startapps/crossx/view/TouchImageView$State;->DRAG:Lcom/startapps/crossx/view/TouchImageView$State;

    sget-object v2, Lcom/startapps/crossx/view/TouchImageView$State;->ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;

    sget-object v3, Lcom/startapps/crossx/view/TouchImageView$State;->FLING:Lcom/startapps/crossx/view/TouchImageView$State;

    sget-object v4, Lcom/startapps/crossx/view/TouchImageView$State;->ANIMATE_ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$State;

    const-string v1, "DRAG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->DRAG:Lcom/startapps/crossx/view/TouchImageView$State;

    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$State;

    const-string v1, "ZOOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;

    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$State;

    const-string v1, "FLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->FLING:Lcom/startapps/crossx/view/TouchImageView$State;

    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$State;

    const-string v1, "ANIMATE_ZOOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->ANIMATE_ZOOM:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {}, Lcom/startapps/crossx/view/TouchImageView$State;->$values()[Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->$VALUES:[Lcom/startapps/crossx/view/TouchImageView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/view/TouchImageView$State;
    .locals 1

    .line 57
    const-class v0, Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/view/TouchImageView$State;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/view/TouchImageView$State;
    .locals 1

    .line 57
    sget-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->$VALUES:[Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-virtual {v0}, [Lcom/startapps/crossx/view/TouchImageView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/view/TouchImageView$State;

    return-object v0
.end method
