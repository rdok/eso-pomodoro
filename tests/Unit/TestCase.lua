function TestCase:assertMessageEmittedContains(text)
    actual = CHAT_SYSTEM:GetMessage()
    lu.assertEquals(type(actual), 'string')
    lu.assertStrContains(actual, text)
end
