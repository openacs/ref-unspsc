<master>
 <property name="title">Edit a message</property>
 <property name="context">@context;noquote@</property>
 <property name="focus">message.message</property>

<!-- TODO: Remove 'style' when we've merged 4.6.4 back onto HEAD -->
<formtemplate id="message"></formtemplate>

<h2>Audit Trail</h2>

@first_translated_message;noquote@

<include src="audit-include" current_locale="@current_locale;noquote@" message_key="@message_key;noquote@" package_key="@package_key;noquote@">

