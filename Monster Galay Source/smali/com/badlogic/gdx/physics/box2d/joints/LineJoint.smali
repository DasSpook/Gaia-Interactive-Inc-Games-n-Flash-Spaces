.class public Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "LineJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .param p1, "world"    # Lcom/badlogic/gdx/physics/box2d/World;
    .param p2, "addr"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 27
    return-void
.end method

.method private native jniEnableLimit(JZ)V
.end method

.method private native jniEnableMotor(JZ)V
.end method

.method private native jniGetJointSpeed(J)F
.end method

.method private native jniGetJointTranslation(J)F
.end method

.method private native jniGetLowerLimit(J)F
.end method

.method private native jniGetMaxMotorForce(J)F
.end method

.method private native jniGetMotorForce(J)F
.end method

.method private native jniGetMotorSpeed(J)F
.end method

.method private native jniGetUpperLimit(J)F
.end method

.method private native jniIsLimitEnabled(J)Z
.end method

.method private native jniIsMotorEnabled(J)Z
.end method

.method private native jniSetLimits(JFF)V
.end method

.method private native jniSetMaxMotorForce(JF)V
.end method

.method private native jniSetMotorSpeed(JF)V
.end method


# virtual methods
.method public enableLimit(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniEnableLimit(JZ)V

    .line 53
    return-void
.end method

.method public enableMotor(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniEnableMotor(JZ)V

    .line 88
    return-void
.end method

.method public getJointSpeed()F
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetJointSpeed(J)F

    move-result v0

    return v0
.end method

.method public getJointTranslation()F
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetJointTranslation(J)F

    move-result v0

    return v0
.end method

.method public getLowerLimit()F
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetLowerLimit(J)F

    move-result v0

    return v0
.end method

.method public getMaxMotorForce()F
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetMaxMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMotorForce()F
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getMotorSpeed()F
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetMotorSpeed(J)F

    move-result v0

    return v0
.end method

.method public getUpperLimit()F
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniGetUpperLimit(J)F

    move-result v0

    return v0
.end method

.method public isLimitEnabled()Z
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniIsLimitEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniIsMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setLimits(FF)V
    .locals 2
    .param p1, "lower"    # F
    .param p2, "upper"    # F

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniSetLimits(JFF)V

    .line 74
    return-void
.end method

.method public setMaxMotorForce(F)V
    .locals 2
    .param p1, "force"    # F

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniSetMaxMotorForce(JF)V

    .line 109
    return-void
.end method

.method public setMotorSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/LineJoint;->jniSetMotorSpeed(JF)V

    .line 95
    return-void
.end method
