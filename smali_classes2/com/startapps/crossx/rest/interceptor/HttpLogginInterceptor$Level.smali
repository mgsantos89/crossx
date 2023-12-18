.class public final enum Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLogginInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

.field public static final enum BASIC:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

.field public static final enum BODY:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

.field public static final enum HEADERS:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

.field public static final enum NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;


# direct methods
.method private static synthetic $values()[Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;
    .locals 4

    .line 29
    sget-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    sget-object v1, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->BASIC:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    sget-object v2, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->HEADERS:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    sget-object v3, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->BODY:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    filled-new-array {v0, v1, v2, v3}, [Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->NONE:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    .line 42
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->BASIC:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    .line 60
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->HEADERS:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    .line 82
    new-instance v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    const-string v1, "BODY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->BODY:Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    .line 29
    invoke-static {}, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->$values()[Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->$VALUES:[Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;
    .locals 1

    .line 29
    const-class v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;
    .locals 1

    .line 29
    sget-object v0, Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->$VALUES:[Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    invoke-virtual {v0}, [Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Level;

    return-object v0
.end method
