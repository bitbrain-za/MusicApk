.class public final enum Lcom/winca/music/SystemDef$DataLocation;
.super Ljava/lang/Enum;
.source "SystemDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/SystemDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/winca/music/SystemDef$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/winca/music/SystemDef$DataLocation;

.field private static final synthetic ENUM$VALUES:[Lcom/winca/music/SystemDef$DataLocation;

.field public static final enum EXTERNAL:Lcom/winca/music/SystemDef$DataLocation;

.field public static final enum INTERNAL:Lcom/winca/music/SystemDef$DataLocation;

.field public static final enum NONE:Lcom/winca/music/SystemDef$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 695
    new-instance v0, Lcom/winca/music/SystemDef$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/winca/music/SystemDef$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/SystemDef$DataLocation;->NONE:Lcom/winca/music/SystemDef$DataLocation;

    new-instance v0, Lcom/winca/music/SystemDef$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/winca/music/SystemDef$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/SystemDef$DataLocation;->INTERNAL:Lcom/winca/music/SystemDef$DataLocation;

    new-instance v0, Lcom/winca/music/SystemDef$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/winca/music/SystemDef$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/SystemDef$DataLocation;->EXTERNAL:Lcom/winca/music/SystemDef$DataLocation;

    new-instance v0, Lcom/winca/music/SystemDef$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/winca/music/SystemDef$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/SystemDef$DataLocation;->ALL:Lcom/winca/music/SystemDef$DataLocation;

    .line 694
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/winca/music/SystemDef$DataLocation;

    sget-object v1, Lcom/winca/music/SystemDef$DataLocation;->NONE:Lcom/winca/music/SystemDef$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/winca/music/SystemDef$DataLocation;->INTERNAL:Lcom/winca/music/SystemDef$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/winca/music/SystemDef$DataLocation;->EXTERNAL:Lcom/winca/music/SystemDef$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/winca/music/SystemDef$DataLocation;->ALL:Lcom/winca/music/SystemDef$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/winca/music/SystemDef$DataLocation;->ENUM$VALUES:[Lcom/winca/music/SystemDef$DataLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winca/music/SystemDef$DataLocation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/winca/music/SystemDef$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winca/music/SystemDef$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/winca/music/SystemDef$DataLocation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/winca/music/SystemDef$DataLocation;->ENUM$VALUES:[Lcom/winca/music/SystemDef$DataLocation;

    array-length v1, v0

    new-array v2, v1, [Lcom/winca/music/SystemDef$DataLocation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
