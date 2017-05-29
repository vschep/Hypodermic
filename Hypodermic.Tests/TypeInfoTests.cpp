#include "stdafx.h"

#include "Hypodermic/TypeInfo.h"

namespace Hypodermic
{
namespace Testing
{

    BOOST_AUTO_TEST_SUITE(TypeInfoTests)

    BOOST_AUTO_TEST_CASE(should_dot_netify_type_info)
    {
        auto dotNetified = TypeInfo::dotNetify(std::string("AAA::BBB::CCC"));
        BOOST_CHECK(std::string("AAA.BBB.CCC") == dotNetified);
    }

    BOOST_AUTO_TEST_SUITE_END()
}
}
