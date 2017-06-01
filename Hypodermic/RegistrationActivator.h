#pragma once

#include <functional>
#include <memory>
#include <vector>
#include <QObject>

#include "Hypodermic/ActivationHandlers.h"
#include "Hypodermic/InstanceFactory.h"
#include "Hypodermic/IRegistration.h"
#include "Hypodermic/IRegistrationActivator.h"
#include "Hypodermic/Log.h"
#include "Hypodermic/TypeInfo.h"


namespace Hypodermic
{

    class RegistrationActivator : public QObject, public IRegistrationActivator
    {
        Q_OBJECT

    public:
        RegistrationActivator(const IRegistration& registration,
                              const InstanceFactory& instanceFactory,
                              const ActivationHandlers& activationHandlers)
            : m_registration(registration)
            , m_instanceFactory(instanceFactory)
        {
            for (auto&& handler : activationHandlers)
                QObject::connect(this, &RegistrationActivator::activated, handler);
        }

        std::shared_ptr< void > activate(IResolutionContext& resolutionContext) override
        {
            HYPODERMIC_LOG_INFO("Activating type " << m_registration.instanceType().fullyQualifiedName());

            if (!m_instanceFactory)
            {
                HYPODERMIC_LOG_WARN("No instance factory provided to activate type " << m_registration.instanceType().fullyQualifiedName());
                return nullptr;
            }

            return m_instanceFactory(m_registration, resolutionContext);
        }

        void raiseActivated(ComponentContext& container, const std::shared_ptr< void >& instance) override
        {
            emit activated(container, instance);
        }

    signals:
        void activated(ComponentContext& container, const std::shared_ptr< void >& instance);

    private:
        const IRegistration& m_registration;
        InstanceFactory m_instanceFactory;
    };

} // namespace Hypodermic
