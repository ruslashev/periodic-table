# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = periodic-table

CONFIG += sailfishapp

SOURCES += src/periodic-table.cpp

OTHER_FILES += \
	qml/periodic-table.qml \
	qml/ListOfElements.qml \
	qml/CoverList.qml \
	qml/elements/h.qml \
    rpm/periodic-table.changes.in \
    rpm/periodic-table.spec \
    rpm/periodic-table.yaml \
    translations/*.ts \
    periodic-table.desktop

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/periodic-table-de.ts

