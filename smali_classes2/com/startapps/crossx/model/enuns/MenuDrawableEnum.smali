.class public final enum Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;
.super Ljava/lang/Enum;
.source "MenuDrawableEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum ATHLETES:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum CALENDAR:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum CHAMPIONSHIP:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum CHECKIN:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum DATASHEET:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum DAY_TRAINING:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum NOTIFICATION:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum PAYMENTS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum PROFILE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum SETTINGS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum STORE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum TIMELINE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field public static final enum TIMERS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;


# instance fields
.field protected drawableImage:I

.field protected drawableImageSelected:I

.field protected onlyBox:Z

.field protected preferance:Ljava/lang/String;

.field protected text:I


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;
    .locals 14

    .line 10
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMELINE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v1, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->DAY_TRAINING:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v2, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CALENDAR:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v3, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CHECKIN:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v4, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v5, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->ATHLETES:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v6, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMERS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v7, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PAYMENTS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v8, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CHAMPIONSHIP:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v9, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->STORE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v10, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->SETTINGS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v11, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->DATASHEET:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v12, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->NOTIFICATION:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    sget-object v13, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PROFILE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    filled-new-array/range {v0 .. v13}, [Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v8, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v1, "TIMELINE"

    const/4 v2, 0x0

    const v3, 0x7f0800ea

    const v4, 0x7f0800ea

    const v5, 0x7f12021a

    const-string/jumbo v6, "timeline"

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v8, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMELINE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 13
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "DAY_TRAINING"

    const/4 v11, 0x1

    const v12, 0x7f080116

    const v13, 0x7f080116

    const v14, 0x7f12021c

    const-string v15, "day_training"

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->DAY_TRAINING:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 14
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v2, "CALENDAR"

    const/4 v3, 0x2

    const v4, 0x7f0800cd

    const v5, 0x7f0800cd

    const v6, 0x7f120213

    const-string v7, "calendar"

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CALENDAR:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 15
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "CHECKIN"

    const/4 v11, 0x3

    const v12, 0x7f0800df

    const v13, 0x7f0800df

    const v14, 0x7f120214

    const-string v15, "classes"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CHECKIN:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 17
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v2, "PERSONAL_RECORDS"

    const/4 v3, 0x4

    const v4, 0x7f08013c

    const v5, 0x7f08013c

    const v6, 0x7f120218

    const-string v7, "personal_records"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 18
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "ATHLETES"

    const/4 v11, 0x5

    const v12, 0x7f08013a

    const v13, 0x7f08013a

    const v14, 0x7f120212

    const-string v15, "athletes"

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->ATHLETES:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 19
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v2, "TIMERS"

    const/4 v3, 0x6

    const v4, 0x7f08015b

    const v5, 0x7f08015b

    const v6, 0x7f12021b

    const-string/jumbo v7, "timers"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMERS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 20
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "PAYMENTS"

    const/4 v11, 0x7

    const v12, 0x7f08012e

    const v13, 0x7f08012e

    const v14, 0x7f12025d

    const-string v15, "payments"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PAYMENTS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 21
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v2, "CHAMPIONSHIP"

    const/16 v3, 0x8

    const v4, 0x7f0800da

    const v5, 0x7f0800da

    const v6, 0x7f12011f

    const-string v7, "championship"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->CHAMPIONSHIP:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 22
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "STORE"

    const/16 v11, 0x9

    const v12, 0x7f08015a

    const v13, 0x7f08015a

    const v14, 0x7f120271

    const-string v15, "store"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->STORE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 23
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v2, "SETTINGS"

    const/16 v3, 0xa

    const v4, 0x7f080151

    const v5, 0x7f080151

    const v6, 0x7f120219

    const-string v7, "settings"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->SETTINGS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 24
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "DATASHEET"

    const/16 v11, 0xb

    const v12, 0x7f0800e7

    const v13, 0x7f0800e7

    const v14, 0x7f120216

    const-string v15, "datasheet"

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->DATASHEET:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 25
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v2, "NOTIFICATION"

    const/16 v3, 0xc

    const v4, 0x7f080135

    const v5, 0x7f080135

    const v6, 0x7f120257

    const-string v7, "notification"

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->NOTIFICATION:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 26
    new-instance v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const-string v10, "PROFILE"

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "profile"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PROFILE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    .line 10
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->$values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->drawableImage:I

    .line 36
    iput p4, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->drawableImageSelected:I

    .line 37
    iput p5, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->text:I

    .line 38
    iput-object p6, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->preferance:Ljava/lang/String;

    .line 39
    iput-boolean p7, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->onlyBox:Z

    return-void
.end method

.method public static getElementForPosition(I)Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;
    .locals 2

    .line 43
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v0

    .line 44
    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    .line 45
    aget-object p0, v0, p0

    return-object p0

    .line 47
    :cond_0
    sget-object p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMELINE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    return-object p0
.end method

.method public static getPositionForElement(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)I
    .locals 4

    .line 52
    invoke-static {}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 53
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 54
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;
    .locals 1

    .line 10
    const-class v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;
    .locals 1

    .line 10
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->$VALUES:[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {v0}, [Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    return-object v0
.end method


# virtual methods
.method public getDrawableImage()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->drawableImage:I

    return v0
.end method

.method public getDrawableImageSelected()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->drawableImageSelected:I

    return v0
.end method

.method public getText()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->text:I

    return v0
.end method

.method public isOnlyBox()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->onlyBox:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 78
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->preferance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
