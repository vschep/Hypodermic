isEmpty(HYPODERMIC_DIR) {
  error("set HYPODERMIC_DIR as qmake variable to get rid of this message")
}

!isEmpty(HYPODERMIC_DIR): {
  HYPODERMIC_HDIR = $$HYPODERMIC_DIR/
}

INCLUDEPATH += $$HYPODERMIC_HDIR

HEADERS += \
  $$HYPODERMIC_HDIR/Hypodermic/RegistrationActivator.h \
  $$HYPODERMIC_HDIR/Hypodermic/IRegistrationDescriptor.h
