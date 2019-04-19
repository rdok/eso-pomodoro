TextFormatter = {

    success = function(text)
        return TextFormatter.toString('28a745', text)
    end,

    primary = function(text)
        return TextFormatter.toString('007bff', text)
    end,

    error = function(text)
        return TextFormatter.toString('dc3545', text)
    end,

    warning = function(text)
        return TextFormatter.toString('ffc107', text)
    end,

    info = function(text)
        return TextFormatter.toString('17a2b8', text)
    end,

    toString = function(colour, text)
        return string.format('|c%s%s|r', colour, text)
    end
}

function info(text)
    text = TextFormatter.info(text)
    chat(text)
end

function primary(text)
    text = TextFormatter.primary(text)
    chat(text)
end

function success(text)
    text = TextFormatter.success(text)
    chat(text)
end

function error_chat(text)
    text = TextFormatter.error(text)
    chat(text)
end

function warning(text)
    text = TextFormatter.warning(text)
    chat(text)
end

function chat(text)
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, text)
end
