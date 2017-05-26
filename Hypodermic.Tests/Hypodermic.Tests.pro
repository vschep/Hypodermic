include(gtest_dependency.pri)

QT += core

TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG += qt
  
INCLUDEPATH += $$PWD/..

SOURCES += main.cpp

HEADERS += \
    ../Hypodermic/ActivatedRegistrationInfo.h \
    ../Hypodermic/ActivationException.h \
    ../Hypodermic/ActivationHandler.h \
    ../Hypodermic/ActivationHandlers.h \
    ../Hypodermic/ActivationRegistry.h \
    ../Hypodermic/ActivationResult.h \
    ../Hypodermic/AnyArgument.h \
    ../Hypodermic/ArgumentPack.h \
    ../Hypodermic/ArgumentResolver.h \
    ../Hypodermic/As.h \
    ../Hypodermic/AsSelf.h \
    ../Hypodermic/AutowireableConstructor.h \
    ../Hypodermic/AutowireableConstructorRegistrationDescriptor.h \
    ../Hypodermic/CircularDependencyException.h \
    ../Hypodermic/ComponentContext.h \
    ../Hypodermic/Config.h \
    ../Hypodermic/ConsoleLoggerSink.h \
    ../Hypodermic/ConstructorDescriptor.h \
    ../Hypodermic/ConstructorTypologyDeducer.h \
    ../Hypodermic/Container.h \
    ../Hypodermic/ContainerBuilder.h \
    ../Hypodermic/ContainerInstanceRegistration.h \
    ../Hypodermic/ContainerInstanceRegistrationActivator.h \
    ../Hypodermic/DependencyActivationException.h \
    ../Hypodermic/DependencyFactories.h \
    ../Hypodermic/DependencyFactory.h \
    ../Hypodermic/DependencyFactoryTag.h \
    ../Hypodermic/ExceptionBase.h \
    ../Hypodermic/FactoryWrapper.h \
    ../Hypodermic/Hypodermic.h \
    ../Hypodermic/ILoggerSink.h \
    ../Hypodermic/InstanceAlreadyActivatingException.h \
    ../Hypodermic/InstanceFactory.h \
    ../Hypodermic/InstanceLifetime.h \
    ../Hypodermic/InstanceRegistrationTags.h \
    ../Hypodermic/IntegerSequence.h \
    ../Hypodermic/IRegistration.h \
    ../Hypodermic/IRegistrationActivator.h \
    ../Hypodermic/IRegistrationDescriptor.h \
    ../Hypodermic/IRegistrationScope.h \
    ../Hypodermic/IResolutionContainer.h \
    ../Hypodermic/IResolutionContext.h \
    ../Hypodermic/IRuntimeRegistrationBuilder.h \
    ../Hypodermic/IsComplete.h \
    ../Hypodermic/IsSupportedArgument.h \
    ../Hypodermic/ITypeAlias.h \
    ../Hypodermic/Log.h \
    ../Hypodermic/Logger.h \
    ../Hypodermic/LogLevel.h \
    ../Hypodermic/MetaContains.h \
    ../Hypodermic/MetaForEach.h \
    ../Hypodermic/MetaIdentity.h \
    ../Hypodermic/MetaInsert.h \
    ../Hypodermic/MetaMap.h \
    ../Hypodermic/MetaPair.h \
    ../Hypodermic/Named.h \
    ../Hypodermic/NamedTypeAlias.h \
    ../Hypodermic/NestedRegistrationScope.h \
    ../Hypodermic/NoopLoggerSink.h \
    ../Hypodermic/OnActivated.h \
    ../Hypodermic/PersistentInstanceRegistration.h \
    ../Hypodermic/PointerAlignment.h \
    ../Hypodermic/Pragmas.h \
    ../Hypodermic/ProvidedDependencyTag.h \
    ../Hypodermic/ProvidedInstanceDependencyTag.h \
    ../Hypodermic/ProvidedInstanceFactoryRegistrationDescriptor.h \
    ../Hypodermic/ProvidedInstanceRegistration.h \
    ../Hypodermic/ProvidedInstanceRegistrationActivator.h \
    ../Hypodermic/ProvidedInstanceRegistrationDescriptor.h \
    ../Hypodermic/Registration.h \
    ../Hypodermic/RegistrationActivator.h \
    ../Hypodermic/RegistrationBuilder.h \
    ../Hypodermic/RegistrationContext.h \
    ../Hypodermic/RegistrationDescriptorBase.h \
    ../Hypodermic/RegistrationDescriptorBuilder.h \
    ../Hypodermic/RegistrationDescriptorInfo.h \
    ../Hypodermic/RegistrationDescriptorInfoToString.h \
    ../Hypodermic/RegistrationException.h \
    ../Hypodermic/RegistrationScope.h \
    ../Hypodermic/ResolutionContainer.h \
    ../Hypodermic/ResolutionContext.h \
    ../Hypodermic/ResolutionInfo.h \
    ../Hypodermic/RuntimeRegistrationBuilder.h \
    ../Hypodermic/SingleInstance.h \
    ../Hypodermic/TypeAlias.h \
    ../Hypodermic/TypeAliases.h \
    ../Hypodermic/TypeAliasKey.h \
    ../Hypodermic/TypeInfo.h \
    ../Hypodermic/UseIfNone.h \
    ../Hypodermic/With.h

