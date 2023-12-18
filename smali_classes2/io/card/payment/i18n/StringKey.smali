.class public final enum Lio/card/payment/i18n/StringKey;
.super Ljava/lang/Enum;
.source "StringKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/card/payment/i18n/StringKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/card/payment/i18n/StringKey;

.field public static final enum CANCEL:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_MAESTRO:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

.field public static final enum DONE:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_CVV:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

.field public static final enum ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

.field public static final enum ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

.field public static final enum ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

.field public static final enum EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

.field public static final enum KEYBOARD:Lio/card/payment/i18n/StringKey;

.field public static final enum MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

.field public static final enum SCAN_GUIDE:Lio/card/payment/i18n/StringKey;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 12
    new-instance v1, Lio/card/payment/i18n/StringKey;

    move-object v0, v1

    const-string v2, "CANCEL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    .line 13
    new-instance v2, Lio/card/payment/i18n/StringKey;

    move-object v1, v2

    const-string v3, "CARDTYPE_AMERICANEXPRESS"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/card/payment/i18n/StringKey;->CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

    .line 14
    new-instance v3, Lio/card/payment/i18n/StringKey;

    move-object v2, v3

    const-string v4, "CARDTYPE_DISCOVER"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/card/payment/i18n/StringKey;->CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

    .line 15
    new-instance v4, Lio/card/payment/i18n/StringKey;

    move-object v3, v4

    const-string v5, "CARDTYPE_JCB"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/card/payment/i18n/StringKey;->CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

    .line 16
    new-instance v5, Lio/card/payment/i18n/StringKey;

    move-object v4, v5

    const-string v6, "CARDTYPE_MASTERCARD"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/card/payment/i18n/StringKey;->CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

    .line 17
    new-instance v6, Lio/card/payment/i18n/StringKey;

    move-object v5, v6

    const-string v7, "CARDTYPE_MAESTRO"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lio/card/payment/i18n/StringKey;->CARDTYPE_MAESTRO:Lio/card/payment/i18n/StringKey;

    .line 18
    new-instance v7, Lio/card/payment/i18n/StringKey;

    move-object v6, v7

    const-string v8, "CARDTYPE_VISA"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/card/payment/i18n/StringKey;->CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

    .line 19
    new-instance v8, Lio/card/payment/i18n/StringKey;

    move-object v7, v8

    const-string v9, "DONE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    .line 20
    new-instance v9, Lio/card/payment/i18n/StringKey;

    move-object v8, v9

    const-string v10, "ENTRY_CVV"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    .line 21
    new-instance v10, Lio/card/payment/i18n/StringKey;

    move-object v9, v10

    const-string v11, "ENTRY_POSTAL_CODE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    .line 22
    new-instance v11, Lio/card/payment/i18n/StringKey;

    move-object v10, v11

    const-string v12, "ENTRY_CARDHOLDER_NAME"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/card/payment/i18n/StringKey;->ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

    .line 23
    new-instance v12, Lio/card/payment/i18n/StringKey;

    move-object v11, v12

    const-string v13, "ENTRY_EXPIRES"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    .line 24
    new-instance v13, Lio/card/payment/i18n/StringKey;

    move-object v12, v13

    const-string v14, "EXPIRES_PLACEHOLDER"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    .line 25
    new-instance v14, Lio/card/payment/i18n/StringKey;

    move-object v13, v14

    const-string v15, "SCAN_GUIDE"

    move-object/from16 v20, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/card/payment/i18n/StringKey;->SCAN_GUIDE:Lio/card/payment/i18n/StringKey;

    .line 28
    new-instance v0, Lio/card/payment/i18n/StringKey;

    move-object v14, v0

    const-string v15, "KEYBOARD"

    move-object/from16 v21, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    .line 29
    new-instance v0, Lio/card/payment/i18n/StringKey;

    move-object v15, v0

    const-string v1, "ENTRY_CARD_NUMBER"

    move-object/from16 v22, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    .line 30
    new-instance v0, Lio/card/payment/i18n/StringKey;

    move-object/from16 v16, v0

    const-string v1, "MANUAL_ENTRY_TITLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    .line 31
    new-instance v0, Lio/card/payment/i18n/StringKey;

    move-object/from16 v17, v0

    const-string v1, "ERROR_NO_DEVICE_SUPPORT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    .line 32
    new-instance v0, Lio/card/payment/i18n/StringKey;

    move-object/from16 v18, v0

    const-string v1, "ERROR_CAMERA_CONNECT_FAIL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    .line 33
    new-instance v0, Lio/card/payment/i18n/StringKey;

    move-object/from16 v19, v0

    const-string v1, "ERROR_CAMERA_UNEXPECTED_FAIL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    .line 7
    filled-new-array/range {v0 .. v19}, [Lio/card/payment/i18n/StringKey;

    move-result-object v0

    sput-object v0, Lio/card/payment/i18n/StringKey;->$VALUES:[Lio/card/payment/i18n/StringKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/card/payment/i18n/StringKey;
    .locals 1

    .line 7
    const-class v0, Lio/card/payment/i18n/StringKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/card/payment/i18n/StringKey;

    return-object p0
.end method

.method public static values()[Lio/card/payment/i18n/StringKey;
    .locals 1

    .line 7
    sget-object v0, Lio/card/payment/i18n/StringKey;->$VALUES:[Lio/card/payment/i18n/StringKey;

    invoke-virtual {v0}, [Lio/card/payment/i18n/StringKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/card/payment/i18n/StringKey;

    return-object v0
.end method
