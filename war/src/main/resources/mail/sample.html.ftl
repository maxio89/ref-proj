<#-- @ftlvariable name="event" type="com.yartista.domain.Artist" -->
<#-- @ftlvariable name="otherEvents" type="java.util.List<com.yartista.domain.LunchEvent>" -->
<#-- @ftlvariable name="otherEventsURLs" type="java.util.Map<java.lang.Long,java.lang.String>" -->
<#-- @ftlvariable name="otherEventsIcons" type="java.util.Map<java.lang.Long,java.lang.String>" -->
<#-- @ftlvariable name="facebookPageURL" type="java.lang.String" -->
<#-- @ftlvariable name="recipientFirstName" type="java.lang.String" -->
<#-- @ftlvariable name="mailContext" type="org.jboss.seam.mail.templating.MailContext" -->
<#-- @ftlvariable name="messages" type="java.util.PropertyResourceBundle" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body style="font-family: Arial, sans-serif; margin: 0;">
<#setting time_zone="${event.timeZone.ID}">
<div style="padding: .5em 5em; background-color: #282828; color: #fff;">
    <a href="http://yartista.ch"><img src="${mailContext.insert("yartista-logo.png")}"/></a>
    <span style="float: right;">${messages('mail.betConfirmation.city')}: ${event.restaurant.city.name}</span>
</div>
<div style="text-align: center; background: #c5c5c5 url('${mailContext.insert("bg-silver.png")}') repeat-y 50%; color: #505050; padding: 3em 0 5em;">
    <img src="${mailContext.insert("face.png")}" alt="Yartista Waiter"/>

    <h1 style="margin-bottom: 0; font-size:34px; font-weight: normal;">"${recipientFirstName}! ${messages('mail.betConfirmation.results.header')}."</h1>

    <div style="margin: 1em 0; font-size:13px;">${event.id}. ${messages('mail.betConfirmation.results.yartistaForTopic')}:</div>
    <div class="date">${event.date?string("yyyy-MM-dd")}</div>
    <div style="font-size: 18px">${event.name}</div>
    <div class="date">${messages('mail.betConfirmation.results.dateToClose')}: ${event.dateToClose?string("yyyy-MM-dd HH:mm")}</div>
</div>
<div style="margin: 0 auto; width: 800px; color: #505050;">
    <h1 style="margin-top: 1em; background: url('${mailContext.insert("dot.png")}') repeat-x bottom; padding-bottom: .5em; font-size: 1.5em; font-weight: normal;">${messages('mail.betConfirmation.otherEvents.header')}</h1>

    <div class="slogan">${messages('mail.betConfirmation.otherEvents.slogan')}</div>
    <table style="width: 100%;">
    <#list otherEvents as otherEvent>
        <#if otherEvent_index%2==0>
        <tr>
        </#if>
        <td style="width: 50%;">
            <table>
                <tr>
                    <td style="width: 84px;"><img src="${mailContext.insert(otherEventsIcons[otherEvent_index])}" alt="Category icon"/></td>
                    <td style="padding-left: 1ex;">
                        <a href="${otherEventsURLs[otherEvent_index]}"
                           style="display: inline-block; vertical-align: middle; color: #006154; font-size: 1.3em; text-decoration: none;">
                        ${otherEvent.name}
                        </a>

                        <div style="font-size: .8em;">${otherEvent.date?date}
                            , ${otherEvent.playerCount} ${messages('mail.betConfirmation.otherEvents.participants')}</div>
                    </td>
                </tr>
            </table>
        </td>
        <#if !otherEvent_has_next || (otherEvent_index+1)%2==0>
        </tr>
        </#if>
    </#list>
    </table>
    <div style="margin: 2em 0; padding-top: 1em; background: url('${mailContext.insert("dot.png")}') repeat-x top; text-align: center;">
        <img src="${mailContext.insert("bowtie.png")}" alt="Bow tie"/><br/>
        "${messages('mail.betConfirmation.otherEvents.goodLuck')}!"
    </div>
</div>
<div style="background-color: #282828; color: #fff; padding: 3em 5em 1em; vertical-align: bottom;">
    <a href="http://yartista.ch/rules" style="color: #fff; text-decoration: none;">${messages('layout.template.rules')}</a> |
    <a href="http://yartista.ch/aboutUs" style="color: #fff; text-decoration: none;">${messages('layout.template.aboutUs')}</a>

    <div style="float: right; vertical-align: bottom; display: inline-block;">
        <a href="${facebookPageURL}">
            <img src="${mailContext.insert("facebook_dark.png")}" style="border: none;"/>
        </a>
    </div>
    <div style="clear:both;display: block;">&#160;</div>
</div>
</body>
</html>