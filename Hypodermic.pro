TEMPLATE = subdirs

SUBDIRS += src

CONFIG(debug, debug|release) {
    SUBDIRS += Hypodermic.Tests
}
