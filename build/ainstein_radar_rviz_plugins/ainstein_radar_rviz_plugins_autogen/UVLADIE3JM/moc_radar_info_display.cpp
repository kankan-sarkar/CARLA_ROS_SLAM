/****************************************************************************
** Meta object code from reading C++ file 'radar_info_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/ainstein_radar_rviz_plugins/src/radar_info_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'radar_info_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarInfoDisplay_t {
    QByteArrayData data[3];
    char stringdata0[67];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarInfoDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarInfoDisplay_t qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarInfoDisplay = {
    {
QT_MOC_LITERAL(0, 0, 45), // "ainstein_radar_rviz_plugins::..."
QT_MOC_LITERAL(1, 46, 19), // "updateColorAndAlpha"
QT_MOC_LITERAL(2, 66, 0) // ""

    },
    "ainstein_radar_rviz_plugins::RadarInfoDisplay\0"
    "updateColorAndAlpha\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ainstein_radar_rviz_plugins__RadarInfoDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void ainstein_radar_rviz_plugins::RadarInfoDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        RadarInfoDisplay *_t = static_cast<RadarInfoDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateColorAndAlpha(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject ainstein_radar_rviz_plugins::RadarInfoDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<ainstein_radar_msgs::RadarInfo>::staticMetaObject, qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarInfoDisplay.data,
      qt_meta_data_ainstein_radar_rviz_plugins__RadarInfoDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *ainstein_radar_rviz_plugins::RadarInfoDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ainstein_radar_rviz_plugins::RadarInfoDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarInfoDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<ainstein_radar_msgs::RadarInfo>::qt_metacast(_clname);
}

int ainstein_radar_rviz_plugins::RadarInfoDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<ainstein_radar_msgs::RadarInfo>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
