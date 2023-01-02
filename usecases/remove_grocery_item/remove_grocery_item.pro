QT += testlib
QT -= gui

TARGET = tst_remove_grocery_item
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

include(../../entities/entities.pri)
include(../../repositories/repositories.pri)
include(../check_available_groceries/check_available_groceries.pri)
include(remove_grocery_item.pri)

SOURCES +=  tst_remove_grocery_item.cpp

DEFINES += SRCDIR=\\\"$$PWD/\\\"
