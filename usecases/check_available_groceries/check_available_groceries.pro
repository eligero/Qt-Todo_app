QT += testlib
QT -= gui

TARGET = tst_check_available_groceries
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

include(../../entities/entities.pri)
include(../../repositories/repositories.pri)
include(check_available_groceries.pri)

SOURCES +=  tst_check_available_groceries.cpp
