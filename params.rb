# Adapted from pubIscRegs.h in the sFoundation SDK from Teknic
# so their copyright notice is reproduced here:

# COPYRIGHT NOTICE:
#      (C)Copyright 1998-2010  Teknic, Inc.  All rights reserved.
#
#      This copyright notice must be reproduced in any copy, modification,
#      or portion thereof merged into another program. A copy of the
#      copyright notice must be included in the object library of a user
#      program.

PARAMS = {
  0 => 'ISC_P_NODEID',                   # 0  00 Device ID
  1 => 'ISC_P_FW_VERSION',               # 1  01 FW version
  2 => 'ISC_P_HW_VERSION',               # 2  02 HW version
  3 => 'ISC_P_RESELLER_ID',              # 3  03 Reseller ID
  4 => 'ISC_P_SER_NUM',                  # 4  04 Unit serial number
  5 => 'ISC_P_OPTION_REG',               # 5  05 Unit options
  6 => 'ISC_P_ROM_SUM_ACK',              # 6  06 Firmware update ack
  7 => 'ISC_P_ROM_SUM',                  # 7  07 Firmware checksum
  8 => 'ISC_P_SAMPLE_PERIOD',            # 8  08 Sample period (nsec)
  9 => 'ISC_P_ALERT_REG',                # 9  09 Shutdown register
  10 => 'ISC_P_STOP_TYPE',                # 10 0a Node Stop Type
  11 => 'ISC_P_WATCHDOG_TIME',            # 11 0b Watchdog time constant
  12 => 'ISC_P_NET_STAT',                 # 12 0c Network Status
  13 => 'ISC_P_STATUS_ACCUM_REG',         # 13 0d Status accum register
  14 => 'ISC_P_STATUS_ATTN_RISE_REG',     # 14 0e Status attn/rise register
  15 => 'ISC_P_STATUS_ATTN_MASK',         # 15 0f Status mask register
  16 => 'ISC_P_STATUS_RT_REG',            # 16 10 Status reg (realtime)
  17 => 'ISC_P_TIMESTAMP',                # 17 11 8-bit timestamp
  18 => 'ISC_P_TIMESTAMP16',              # 18 12 16-bit timestamp
  19 => 'ISC_P_PART_NUM',                 # 19 13 Part Number String
  20 => 'ISC_P_EE_UPD_ACK',               # 20 14 EE Update Acknowlegde
  21 => 'ISC_P_EE_VER',                   # 21 15 EE Version Number
  22 => 'ISC_P_STATUS_FALL_REG',          # 22 16 Status fall register
  23 => 'ISC_P_HW_CONFIG_REG',            # 23 17 Hardware config/setup reg
  24 => 'ISC_P_APP_CONFIG_REG',           # 24 18 Feature config/setup reg
                                  # 25 19
                                  # 26 1a
                                  # 27 1b
                                  # 28 1c
                                  # 29 1d
  30 => 'ISC_P_USER_IN_REG',           # 30 1e User input value
  31 => 'ISC_P_IN_SRC_REG',               # 31 1f Input source
  32 => 'ISC_P_OUT_REG',                  # 32 20 Output register
  33 => 'ISC_P_OUT_RISE_REG',             # 33 21 Output rise edge
  34 => 'ISC_P_OUT_FALL_REG',             # 34 22 Output fall edge
  35 => 'ISC_P_CTL_STOP_OUT_REG',         # 35 24 Controlled output register
  36 => 'ISC_P_USER_OUT_REG',             # 36 23 User output register
  37 => 'ISC_P_OUT_PLA_SRC_REG',          # 37 25 Output source definition
  38 => 'ISC_P_GP_TIMER_PERIOD',          # 38 26 Gen. purpose timer period
  39 => 'ISC_P_PLA_OUT_REG',              # 39 27 PLA output
  40 => 'ISC_P_IN_POLARITY_REG',          # 40 28 Input polarity register
                                  # 41 29
  42 => 'ISC_P_POSN_CAP_INDEX',        # 42 2a Encoder index position
  43 => 'ISC_P_POSN_CAP_GPI1',            # 43 2b Encoder capture with GPI1
  44 => 'ISC_P_POSN_CAP_PLA',             # 44 2c Encoder capture with PLA
  45 => 'ISC_P_POSN_CAP_INDEX_LD',        # 45 2d Load Encoder index position
  46 => 'ISC_P_RAS_MAX_VELOCIY',          # 46 2e Maximum velocity for current RAS
  47 => 'ISC_P_VEL_LIM',               # 47 2f Trapezoidal velocity limit
  48 => 'ISC_P_ACC_LIM',                  # 48 30 Trapezoidal acceleration limit
  49 => 'ISC_P_JERK_LIM',                 # 49 31 Jerk limit
  50 => 'ISC_P_ACC_MAX',                  # 50 32 Test Point: Max Acc.
  51 => 'ISC_P_POSN_TRIG_PT',             # 51 33 At Position location
  52 => 'ISC_P_A_START',                  # 52 34 A after start point
  53 => 'ISC_P_B_END',                    # 53 35 B before end point
  54 => 'ISC_P_POSN_TRK_RANGE',           # 54 36 Tracking in range window
                                  # 55 37
  56 => 'ISC_P_POSN_TRK',              # 56 38 Position tracking error
                                  # 57 39
                                  # 58 3a
  59 => 'ISC_P_STOP_ACC_LIM',        # 59 3b Stop acceleration limit
  60 => 'ISC_P_POSN_MEAS_MTR',      # 60 3c Encoder 0 (motor) measured position
  61 => 'ISC_P_POSN_MEAS',           # 61 3d Measured position
  62 => 'ISC_P_POSN_CMD',                 # 62 3e Commanded position
  63 => 'ISC_P_VEL_CMD',                  # 63 3f Commanded velocity
  64 => 'ISC_P_VEL_MEAS',                 # 64 40 Measured velocity
  65 => 'ISC_P_DEC_LIM',                  # 65 41 Deceleration Limit
  66 => 'ISC_P_HEAD_DISTANCE',            # 66 42 Head distance
  67 => 'ISC_P_TAIL_DISTANCE',            # 67 43 Tail distance
  68 => 'ISC_P_HEADTAIL_VEL',             # 68 44 Head/Tail velocity
  69 => 'ISC_P_POSN_MEAS_LD',             # 69 45 Encoder 1 measured position
  70 => 'ISC_P_WARN_REG',                 # 70 46 Warnings pending
  71 => 'ISC_P_WARN_MASK',                # 71 47 Warnings for attention
  72 => 'ISC_P_ALERT_MASK',               # 72 48 Alert selection
                # 73 49
  74 => 'ISC_P_MOVE_DWELL',      # 74 4a Post move dwell time (sec)

  89 => 'ISC_P_ON_TIME',             # 89 59 Unit On Time
  90 => 'ISC_P_USER_RAM0',                # 90 5a User RAM parameter
  91 => 'ISC_P_USER_DATA_NV0',            # 91 5b User NV (13-bytes)
  92 => 'ISC_P_USER_DATA_NV1',            # 92 5c User NV (13-bytes)
  93 => 'ISC_P_USER_DATA_NV2',            # 93 5d User NV (13-bytes)
  94 => 'ISC_P_USER_DATA_NV3',            # 94 5e User NV (13-bytes)

  104 => 'ISC_P_NETERR_APP_CHKSUM',    # 104 68 Application Net Checksum counter
  105 => 'ISC_P_NETERR_APP_FRAG',          # 105 69 Application Net Fragment counter
  106 => 'ISC_P_NETERR_APP_STRAY',         # 106 6a Application Net Stray data counter
  107 => 'ISC_P_NETERR_APP_OVERRUN',       # 107 6b Application Net Overrun counter
  108 => 'ISC_P_NETERR_DIAG_CHKSUM',       # 108 6c Diagnostic Net Checksum counter
  109 => 'ISC_P_NETERR_DIAG_FRAG',         # 109 6d Diagnostic Net Fragment counter
  110 => 'ISC_P_NETERR_DIAG_STRAY',        # 110 6e Diagnostic Net Stray data counter
  111 => 'ISC_P_NETERR_DIAG_OVERRUN',      # 111 6f Diagnostic Net Overrun counter
  116 => 'ISC_P_NETERR_LOW_VOLTS',     # 116 74 Link Voltage Low Event counter

  # BANK 1 items (Drive/Motor Con#guration)
                                  # 256 00
  257 => 'ISC_P_DRV_I_MAX',            # 257 01 Current Full Scale (A)
  258 => 'ISC_P_DRV_RMS_MAX',              # 258 02 Factory RMS limit
  259 => 'ISC_P_DRV_FACT_IR_CAL',          # 259 03 Ir Sensor Calibration
  260 => 'ISC_P_DRV_FACT_IS_CAL',          # 260 04 Is Sensor Calibration
                                  # 261 05
  262 => 'ISC_P_DRV_ADC_MAX',          # 262 06 ADC full scale (A)
  263 => 'ISC_P_DRV_CONFIG_CHANGED',       # 263 07 Configuration changed
  264 => 'ISC_P_DRV_VECTOR_RATE',          # 264 08 Encoder Dens. (/[turn/pole-pair])
  265 => 'ISC_P_DRV_USTEPS_PER_REV',       # 265 09 Stepper uSteps (/[turn/pole-pair])
  266 => 'ISC_P_DRV_ENC_DENS',             # 266 0a Encoder Dens. (/[turn/pole-pair])
  267 => 'ISC_P_DRV_ENC_RES',              # 267 0b Encoder step distance (microns/.01)
  268 => 'ISC_P_DRV_MTR_POLES',            # 268 0c Motor Pole Count
  269 => 'ISC_P_DRV_MTR_KE',               # 269 0d Motor: Ke (V/KRPM)
  270 => 'ISC_P_DRV_MTR_OHMS',             # 270 0e Motor: Resistance (ohm)
  271 => 'ISC_P_DRV_MTR_ELEC_TC',          # 271 0f Motor: Elect Time Constant (ms)
  272 => 'ISC_P_DRV_COM_RO',               # 272 10 Commutation Reference Offset
  273 => 'ISC_P_DRV_RMS_LIM',              # 273 11 RMS shutdown limit (A)
  274 => 'ISC_P_DRV_RMS_TC',               # 274 12 RMS time constant (sec) @ 100% trq
  275 => 'ISC_P_DRV_MTR_SPEED_LIM',        # 275 13 Motor Speed Limit (quads/msec)
  276 => 'ISC_P_DRV_COM_CAP',              # 276 14 Commutation Edge Capture
  277 => 'ISC_P_DRV_COM_ANGLE',            # 277 15 Commutation Angle Reference (quads)
  278 => 'ISC_P_DRV_KIP',                  # 278 16 Vector Torque: Kip
  279 => 'ISC_P_DRV_KII',                  # 279 17 Vector Torque: Kii
  280 => 'ISC_P_DRV_LD_SPEED_LIM',         # 280 18 Load Speed Limit (quads/msec)
  281 => 'ISC_P_DRV_KPL',                  # 281 19 Compensator: Kpl
  282 => 'ISC_P_DRV_KV',                   # 282 1a Compensator: Kv
  283 => 'ISC_P_DRV_KP',                   # 283 1b Compensator: Kp
  284 => 'ISC_P_DRV_KI',                   # 284 1c Compensator: Ki
  285 => 'ISC_P_DRV_KFV',                  # 285 1d Compensator: Kfv
  286 => 'ISC_P_DRV_KFA',                  # 286 1e Compensator: Kfa
  287 => 'ISC_P_DRV_KFJ',                  # 287 1f Compensator: Kfj (jerk ff)
  288 => 'ISC_P_DRV_KFF',                  # 288 20 Compensator: Kff (fric. ff)
  289 => 'ISC_P_DRV_KNV',                  # 289 21 Compensator: Knv
  290 => 'ISC_P_DRV_AHFUZZ2',              # 290 22 Compensator: Antihunt 2
  291 => 'ISC_P_DRV_TRQ_BIAS',             # 291 23 Compensator: Torque Bias (A)
  292 => 'ISC_P_DRV_FUZZY_APERTURE',       # 292 24 Fuzzy Aperture
  293 => 'ISC_P_DRV_FUZZY_HYST',           # 293 25 Fuzzy Hystersis
  294 => 'ISC_P_DRV_FAN_SPEED',            # 294 26 Drive Fan Speed (RPM)
  295 => 'ISC_P_DRV_FAN_WARN_SPEED',       # 295 27 Drive Fan Warning Min Speed (RPM)
  296 => 'ISC_P_TRK_ERR_MAX',          # 296 28 Accumulated maximum error
  297 => 'ISC_P_TRK_ERR_MIN',              # 297 29 Accumulated minimum error
  298 => 'ISC_P_AH_HOLDOFF',               # 298 2A Anti-hunt holdoff
  299 => 'ISC_P_DRV_LD_MTR_RATIO',         # 299 2B Load to motor encoder ratio
                                  # 300 2C
  301 => 'ISC_P_DRV_TUNE_CONFIG_REG',  # 301 2D
  302 => 'ISC_P_DRV_SENSORLESS_RAMPUP_TIME',#/302 2E Sensorless start torque rampup time (ms)
  303 => 'ISC_P_DRV_SENSORLESS_SWEEP_TIME',# 303 2F Sensorless start angle sweep time (ms)
  304 => 'ISC_P_DRV_SENSORLESS_SETTLE_TIME', #/304 30 Sensorless start settle time (ms)
  305 => 'ISC_P_DRV_SENSORLESS_TRQ',       # 305 31 Sensorless start torque
  306 => 'ISC_P_DRV_HARDSTOP_ENTRY_SPD',   # 306 32 Hard-stop speed qualifier
  307 => 'ISC_P_DRV_TRQ_LIM',              # 307 33 Torque Limit  (A)
  308 => 'ISC_P_DRV_POS_FLDBK_TRQ',        # 308 34 + Torque foldback limit (A)
  309 => 'ISC_P_DRV_POS_FLDBK_TRQ_TC',     # 309 35 + Torque foldback time const (ms)
  310 => 'ISC_P_DRV_NEG_FLDBK_TRQ',        # 310 36 - Torque foldback limit (A)
  311 => 'ISC_P_DRV_NEG_FLDBK_TRQ_TC',     # 311 37 - Torque foldback time const (ms)
  312 => 'ISC_P_DRV_HARDSTOP_FLDBK_TRQ',   # 312 38 Hardstop foldback limit (A)
  313 => 'ISC_P_DRV_HARDSTOP_FLDBK_TRQ_TC',# 313 39 Hardstop foldback time const (ms)
  314 => 'ISC_P_DRV_MOVEDONE_FLDBK_TRQ',   # 314 3a Move Done Foldback Limit (A)
  315 => 'ISC_P_DRV_MOVEDONE_FLDBK_TRQ_TC',# 315 3b Move Done Foldback time const (ms)
  316 => 'ISC_P_DRV_HARDSTOP_ENTRY_TRQ',   # 316 3c Foldback Torque Trip Level (A)
  317 => 'ISC_P_DRV_HARDSTOP_ENTRY_TC',    # 317 3d Hard Stop: entry delay (ms)
  318 => 'ISC_P_DRV_TRQ_CMD',              # 318 3e Torque/Force Commanded
  319 => 'ISC_P_DRV_TRQ_MEAS',             # 319 3f Torque/Force Measured
  320 => 'ISC_P_DRV_RMS_LVL',              # 320 40 RMS level
  321 => 'ISC_P_DRV_TRK_ERR_LIM',          # 321 41 Tracking Error Limit (quad cnts)
  322 => 'ISC_P_DRV_MV_DN_TC',             # 322 42 Move Done: Time Constant (ms)
  323 => 'ISC_P_DRV_STEPPER_TRQ',          # 323 43 Recovery window maximum
  324 => 'ISC_P_DRV_STEP_IDLE_TRQ',        # 324 44 Stepper idle torque (A)
  325 => 'ISC_P_DRV_STEP_ACC_TRQ',         # 325 45 Stepper accel torque (A)
  326 => 'ISC_P_DRV_STEP_FLDBK_TRQ_TC',    # 326 46 Stepper trq foldback time const (ms)
  327 => 'ISC_P_DRV_BUS_VOLTS',            # 327 47 Bus Voltage (V)
  328 => 'ISC_P_DRV_TP_IOP',               # 328 48 I/O testpoint
  329 => 'ISC_P_DRV_TP_IR',                # 329 49 R Channel testpoint
  330 => 'ISC_P_DRV_TP_IS',                # 330 4a S Channel testpoint
  331 => 'ISC_P_DRV_TP_IR_FILT',           # 331 4b R Channel testpoint/filter
  332 => 'ISC_P_DRV_TP_IS_FILT',           # 332 4c S Channel testpoint/filter
  333 => 'ISC_P_HEATSINK_TEMP',            # 333 4d Heatsink temperature
  334 => 'ISC_P_AMBIENT_TEMP',             # 334 4e Internal temperature
  335 => 'ISC_P_DRV_TP_5V',                # 335 4f 5V testpoint
  336 => 'ISC_P_DRV_TP_12V',               # 336 50 12V testpoint
  337 => 'ISC_P_DRV_TRQ_MEAS_FILT_TC',     # 337 51 Trq Measured Filter Time Const
  338 => 'ISC_P_DRV_TEMP_SIM',             # 338 52 Temp Simulator
  339 => 'ISC_P_DRV_FACT_KM_FACTOR',       # 339 53 Km Factor
  340 => 'ISC_P_DRV_FACT_MTR_MIN_RES',     # 340 54 Mtr Min Res
  341 => 'ISC_P_FACT_FAN_ON_TEMP',         # 341 55 Fan On Temp
  342 => 'ISC_P_DRV_PARTID',               # 342 56 Part ID
  343 => 'ISC_P_DRV_FACT_IB_TC',           # 343 57 IB TC
  344 => 'ISC_P_DRV_FACT_IB_TRIP',         # 344 58 IB Trip Point (A)
  345 => 'ISC_P_DRV_FACT_PHASE_TRIP',      # 345 59 Phase Trip Point (A)
  346 => 'ISC_P_DRV_IB_LVL',               # 346 5a IB Level
  347 => 'ISC_P_DRV_TSPD',                 # 347 5b Tspd phase delay
  349 => 'ISC_P_DRV_COMM_CHK_ANGLE_LIM',#' => , // 349 5d Comm check angle limit
  350 => 'ISC_P_DRV_CPL_ERR_LIM',    # 350 5e Coupling Error Limit (quad cnts)

  357 => 'ISC_P_IEX_STATUS',           # 357 6f Current IEX status info
  358 => 'ISC_P_IEX_USER_OUT_REG',         # 358 66 IEX output register
  359 => 'ISC_P_IEX_STOP_OUT_REG',         # 359 67 IEX output register when stopped
  360 => 'ISC_P_IEX_OUT_REG',              # 360 68 IEX last output register
  361 => 'ISC_P_IEX_IN_REG',               # 361 69 IEX input register
  362 => 'ISC_P_IEX_IN_RISE_REG',          # 362 6a IEX input rise register
  363 => 'ISC_P_IEX_IN_FALL_REG',          # 363 6b IEX input fall register
  364 => 'ISC_P_IEX_IN_REG_MASK',          # 364 6c IEX input register
  365 => 'ISC_P_IEX_IN_RISE_REG_MASK',     # 365 6d IEX input rise register
  366 => 'ISC_P_IEX_IN_FALL_REG_MASK',     # 366 6e IEX input fall register
  367 => 'ISC_P_IEX_GLITCH_LIM',           # 367 6f IEX glitch limit
  368 => 'ISC_P_DRV_SOFT_LIM_POSN_POS',    # 368 70 Software limit positive position
  369 => 'ISC_P_DRV_SOFT_LIM_POSN_NEG',     # 369 71 Software limit negative position
}
