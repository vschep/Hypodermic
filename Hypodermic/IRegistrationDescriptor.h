#pragma once

#include <functional>
#include <memory>
#include <QObject>


namespace Hypodermic
{

    class IRegistrationDescriptor;
    class IRegistrationScope;

    struct TypeInfo;


    class IRegistrationDescriptor : public QObject
    {
        Q_OBJECT

    signals:
        void registrationDescriptorUpdated(const std::shared_ptr< IRegistrationDescriptor >& registrationDescriptor);

    public:
        virtual ~IRegistrationDescriptor() {}

        virtual std::function< void(IRegistrationScope&) > getDescriptionFactory() const = 0;

        virtual const TypeInfo& instanceType() const = 0;
    };

} // namespace Hypodermic
