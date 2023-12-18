.class final enum Lio/realm/DynamicRealmObject$CollectionType;
.super Ljava/lang/Enum;
.source "DynamicRealmObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/DynamicRealmObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CollectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/DynamicRealmObject$CollectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/DynamicRealmObject$CollectionType;

.field public static final enum DICTIONARY:Lio/realm/DynamicRealmObject$CollectionType;

.field public static final enum LIST:Lio/realm/DynamicRealmObject$CollectionType;

.field public static final enum SET:Lio/realm/DynamicRealmObject$CollectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 642
    new-instance v0, Lio/realm/DynamicRealmObject$CollectionType;

    const-string v1, "LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/DynamicRealmObject$CollectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/DynamicRealmObject$CollectionType;->LIST:Lio/realm/DynamicRealmObject$CollectionType;

    .line 643
    new-instance v1, Lio/realm/DynamicRealmObject$CollectionType;

    const-string v2, "DICTIONARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/realm/DynamicRealmObject$CollectionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/DynamicRealmObject$CollectionType;->DICTIONARY:Lio/realm/DynamicRealmObject$CollectionType;

    .line 644
    new-instance v2, Lio/realm/DynamicRealmObject$CollectionType;

    const-string v3, "SET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/realm/DynamicRealmObject$CollectionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/realm/DynamicRealmObject$CollectionType;->SET:Lio/realm/DynamicRealmObject$CollectionType;

    .line 641
    filled-new-array {v0, v1, v2}, [Lio/realm/DynamicRealmObject$CollectionType;

    move-result-object v0

    sput-object v0, Lio/realm/DynamicRealmObject$CollectionType;->$VALUES:[Lio/realm/DynamicRealmObject$CollectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/DynamicRealmObject$CollectionType;
    .locals 1

    .line 641
    const-class v0, Lio/realm/DynamicRealmObject$CollectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/DynamicRealmObject$CollectionType;

    return-object p0
.end method

.method public static values()[Lio/realm/DynamicRealmObject$CollectionType;
    .locals 1

    .line 641
    sget-object v0, Lio/realm/DynamicRealmObject$CollectionType;->$VALUES:[Lio/realm/DynamicRealmObject$CollectionType;

    invoke-virtual {v0}, [Lio/realm/DynamicRealmObject$CollectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/DynamicRealmObject$CollectionType;

    return-object v0
.end method
