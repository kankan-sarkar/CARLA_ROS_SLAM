/****************************************************************************
** Meta object code from reading C++ file 'radar_target_array_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/ainstein_radar_rviz_plugins/src/radar_target_array_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'radar_target_array_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay_t {
    QByteArrayData data[11];
    char stringdata0[218];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay_t qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay = {
    {
QT_MOC_LITERAL(0, 0, 52), // "ainstein_radar_rviz_plugins::..."
QT_MOC_LITERAL(1, 53, 19), // "updateColorAndAlpha"
QT_MOC_LITERAL(2, 73, 0), // ""
QT_MOC_LITERAL(3, 74, 11), // "updateScale"
QT_MOC_LITERAL(4, 86, 19), // "updateHistoryLength"
QT_MOC_LITERAL(5, 106, 14), // "updateMinRange"
QT_MOC_LITERAL(6, 121, 14), // "updateMaxRange"
QT_MOC_LITERAL(7, 136, 21), // "updateShowSpeedArrows"
QT_MOC_LITERAL(8, 158, 20), // "updateShowTargetInfo"
QT_MOC_LITERAL(9, 179, 20), // "updateInfoTextHeight"
QT_MOC_LITERAL(10, 200, 17) // "updateTargetShape"

    },
    "ainstein_radar_rviz_plugins::RadarTargetArrayDisplay\0"
    "updateColorAndAlpha\0\0updateScale\0"
    "updateHistoryLength\0updateMinRange\0"
    "updateMaxRange\0updateShowSpeedArrows\0"
    "updateShowTargetInfo\0updateInfoTextHeight\0"
    "updateTargetShape"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x08 /* Private */,
       3,    0,   60,    2, 0x08 /* Private */,
       4,    0,   61,    2, 0x08 /* Private */,
       5,    0,   62,    2, 0x08 /* Private */,
       6,    0,   63,    2, 0x08 /* Private */,
       7,    0,   64,    2, 0x08 /* Private */,
       8,    0,   65,    2, 0x08 /* Private */,
       9,    0,   66,    2, 0x08 /* Private */,
      10,    0,   67,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void ainstein_radar_rviz_plugins::RadarTargetArrayDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        RadarTargetArrayDisplay *_t = static_cast<RadarTargetArrayDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateColorAndAlpha(); break;
        case 1: _t->updateScale(); break;
        case 2: _t->updateHistoryLength(); break;
        case 3: _t->updateMinRange(); break;
        case 4: _t->updateMaxRange(); break;
        case 5: _t->updateShowSpeedArrows(); break;
        case 6: _t->updateShowTargetInfo(); break;
        case 7: _t->updateInfoTextHeight(); break;
        case 8: _t->updateTargetShape(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject ainstein_radar_rviz_plugins::RadarTargetArrayDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<ainstein_radar_msgs::RadarTargetArray>::staticMetaObject, qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay.data,
      qt_meta_data_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *ainstein_radar_rviz_plugins::RadarTargetArrayDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ainstein_radar_rviz_plugins::RadarTargetArrayDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ainstein_radar_rviz_plugins__RadarTargetArrayDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<ainstein_radar_msgs::RadarTargetArray>::qt_metacast(_clname);
}

int ainstein_radar_rviz_plugins::RadarTargetArrayDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<ainstein_radar_msgs::RadarTargetArray>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
