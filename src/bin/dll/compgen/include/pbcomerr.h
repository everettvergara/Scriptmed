//**************************************************************************
//              Copyright Sybase, Inc. 1997
//
//      Sybase, Inc. ("Sybase") claims copyright in this
//      program and documentation as an unpublished work, versions of
//      which were first licensed on the date indicated in the foregoing
//      notice.  Claim of copyright does not imply waiver of Sybase's
//      other rights.
//
// ------------------------------------------------------------------------
//    Filename :        pbcomerr.h
//
//    Author   :        Bob Taylor
//
//    Purpose  :        PB COM error codes 
//
//****************************************************************************

#ifndef PBCOMERR_H
#define PBCOMERR_H


//
// define base error code levels for runtime execution or generation of
// PB COM Servers or PB COM objects
//

#define PBCOM_BASE          -8000                 // base category
#define PBCOM_SERVERRUNTIME_BASE  PBCOM_BASE - 200
#define PBCOM_OBJECTRUNTIME_BASE  PBCOM_BASE - 300
#define PBCOM_TYPECONVERSION_BASE PBCOM_BASE - 400


//
// PB COM Server runtime execution errors
//
#define PBCOM_SERV_LOADTYPELIBFAILED                  PBCOM_SERVERRUNTIME_BASE -1
#define PBCOM_SERV_REGSERVERFAILED                    PBCOM_SERVERRUNTIME_BASE -2
#define PBCOM_SERV_UNREGSERVERFAILED                  PBCOM_SERVERRUNTIME_BASE -3
#define PBCOM_SERV_GETSESSIONFORTHREADFAILED          PBCOM_SERVERRUNTIME_BASE -4
#define PBCOM_SERV_SETSESSIONFORTHREADFAILED          PBCOM_SERVERRUNTIME_BASE -5
#define PBCOM_SERV_INCRSESSIONOBJCOUNTFORTHREADFAILED          PBCOM_SERVERRUNTIME_BASE -6
#define PBCOM_SERV_DECRSESSIONOBJCOUNTFORTHREADFAILED          PBCOM_SERVERRUNTIME_BASE -7
//
// PB COM Object runtime execution errors
//

#define PBCOM_ERR_ALLOCATION_FAILED                      PBCOM_OBJECTRUNTIME_BASE -1
#define PBCOM_ERR_INVALID_OBJECT                         PBCOM_OBJECTRUNTIME_BASE -2	
#define PBCOM_ERR_INVALID_ARGUMENT                       PBCOM_OBJECTRUNTIME_BASE -3
#define PBCOM_ERR_SESSION_CREATE_FAILED                  PBCOM_OBJECTRUNTIME_BASE -4
#define PBCOM_ERR_INSTANCE_CREATE_FAILED                 PBCOM_OBJECTRUNTIME_BASE -5
#define PBCOM_ERR_PROPERTY_NAME_INTERFACE_CREATE_FAILED  PBCOM_OBJECTRUNTIME_BASE -6
#define PBCOM_ERR_PROPERTY_VALUE_INTERFACE_CREATE_FAILED PBCOM_OBJECTRUNTIME_BASE -7 
#define PBCOM_ERR_METHOD_NAME_INTERFACE_CREATE_FAILED    PBCOM_OBJECTRUNTIME_BASE -8
#define PBCOM_ERR_RETURN_VALUE_INTERFACE_CREATE_FAILED   PBCOM_OBJECTRUNTIME_BASE -9
#define PBCOM_ERR_ARGUMENT_VALUE_INTERFACE_CREATE_FAILED PBCOM_OBJECTRUNTIME_BASE -10
#define PBCOM_ERR_ARGUMENT_ASSIGNMENT_FAILED             PBCOM_OBJECTRUNTIME_BASE -11
#define PBCOM_ERR_SESSION_FETCH_FAILED                   PBCOM_OBJECTRUNTIME_BASE -12
#define PBCOM_ERR_PROPERTY_ASSIGNMENT_FAILED             PBCOM_OBJECTRUNTIME_BASE -13
#define PBCOM_ERR_PROPERTY_FETCH_FAILED                  PBCOM_OBJECTRUNTIME_BASE -14
#define PBCOM_ERR_PROPERTY_VALUE_FETCH_FAILED            PBCOM_OBJECTRUNTIME_BASE -15
#define PBCOM_ERR_PROPERTY_VALUE_ASSIGNMENT_FAILED       PBCOM_OBJECTRUNTIME_BASE -16
#define PBCOM_ERR_RETURN_VALUE_ASSIGNMENT_FAILED         PBCOM_OBJECTRUNTIME_BASE -17
#define PBCOM_ERR_ARGUMENT_INTERFACE_CREATE_FAILED       PBCOM_OBJECTRUNTIME_BASE -18
#define PBCOM_ERR_DO_METHOD_FAILED                       PBCOM_OBJECTRUNTIME_BASE -19
#define PBCOM_ERR_RETURN_VALUE_FETCH_FAILED              PBCOM_OBJECTRUNTIME_BASE -20
#define PBCOM_ERR_ARGUMENT_VALUE_ASSIGNMENT_FAILED       PBCOM_OBJECTRUNTIME_BASE -21
#define PBCOM_ERR_REF_ARG_VALUE_FETCH_FAILED             PBCOM_OBJECTRUNTIME_BASE -22
#define PBCOM_ERR_REF_ARG_VALUE_ASSIGNMENT_FAILED        PBCOM_OBJECTRUNTIME_BASE -23
#define PBCOM_ERR_INCOMING_REF_ARG_ISNULL                PBCOM_OBJECTRUNTIME_BASE -24
#define PBCOM_ERR_INCOMING_PROPERTY_ARG_ISNULL           PBCOM_OBJECTRUNTIME_BASE -25
#define PBCOM_ERR_TYPE_NOT_SUPPORTED_FOR_ARRAY           PBCOM_OBJECTRUNTIME_BASE -26
#define PBCOM_ERR_HRESULTS_ERROR                         PBCOM_OBJECTRUNTIME_BASE -27

// PB COM Type conversion errors
#define PBCOM_ERR_INCOMING_PROPERTY_CONVERSION_FAILED    PBCOM_TYPECONVERSION_BASE -1
#define PBCOM_ERR_OUTGOING_PROPERTY_CONVERSION_FAILED    PBCOM_TYPECONVERSION_BASE -2
#define PBCOM_ERR_INCOMING_ARGUMENT_CONVERSION_FAILED    PBCOM_TYPECONVERSION_BASE -3
#define PBCOM_ERR_OUTGOING_ARGUMENT_CONVERSION_FAILED    PBCOM_TYPECONVERSION_BASE -4
#define PBCOM_ERR_RETURN_VALUE_CONVERSION_FAILED         PBCOM_TYPECONVERSION_BASE -5
#define PBCOM_ERR_INCOMING_DATE_CONVERSION_FAILED        PBCOM_TYPECONVERSION_BASE -6
#define PBCOM_ERR_OUTGOING_DATE_CONVERSION_FAILED        PBCOM_TYPECONVERSION_BASE -7
#define PBCOM_ERR_INCOMING_TIME_CONVERSION_FAILED        PBCOM_TYPECONVERSION_BASE -8
#define PBCOM_ERR_OUTGOING_TIME_CONVERSION_FAILED        PBCOM_TYPECONVERSION_BASE -9
#define PBCOM_ERR_INCOMING_DATETIME_CONVERSION_FAILED    PBCOM_TYPECONVERSION_BASE -10
#define PBCOM_ERR_OUTGOING_DATETIME_CONVERSION_FAILED    PBCOM_TYPECONVERSION_BASE -11

#endif  // PBCOMERR_H


