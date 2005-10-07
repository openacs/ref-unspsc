<master>
  <property name="title">@package_instance_name@</property>
 <p>
  This package provides UNSPSC code references in a convenient format for OpenACS.
 </p>
<h3>
UNSPSC Code
</h3>
 <p>
The United Nations Standard Products and Services Code&reg; (UNSPSC&reg;) (<a href="http://www.unspsc.org/">http://www.unspsc.org</a>) provides an open, global multi-sector standard for efficient, accurate classification of products and services. The UNSPSC offers a single global classification system that can be used for company-wide visibility of spend analysis, cost-effective procurement optimization, full exploitation of electronic commerce capabilities. See the UNSPSC <a href="http://www.unspsc.org/AdminFolder/Documents/UNSPSC_White_paper.doc" target="_blank">White Paper</a> or the unspsc.org FAQs for more information regarding specifications and requirements.
 </p>
<h3>
Language versions
</h3>
<p>
Currently (September 2005), UNSPSC is publishing code in Adobe Acrobat PDF format only. This package currently includes Chinese, English, Japanese, Korean, Portuguese, Spanish, and some French (ref.1).
</p><p>
UNSPC also publishes the code in French, German and Italian. These versions require (afaik) the Adobe Acrobat full version to separate the language column from the English language column, and so are not included at this time.
</p><p>
The English version uses the latest PDF format, since it only includes 1 column for titles (in English). There is no need to separate titles in 2 languages.   Other languages have been added where possible.
</p><p>
ref.1<br> French has been added with this caveat: It is not 100% accurate. A few hours were spent using regular expression substitutions in an attempt to separate the English language from French. Earlier in 2005, UNSPC published the code in MSExcel (XLS) and Adobe Acrobat (PDF) formats. The XLS formats would have eased the separation of columns significantly. Unfortunately some languages did not include the unique identifiers that are needed to match up with current mapping revisions.
</p>
<h3>
Loading languages
</h3>
<p>
<a href="/acs-lang/admin">Localization Administration</a> may not show this package has available message keys for an existing locale, because the UNSPSC message keys are in utf-8 format, but the import function is expecting another format. To import the utf-8 messages, browse to /acs-lang/admin/ and then edit the locale settings by clicking on the icon to the far left. Change the MIME Charset to 'utf-8'. Click "OK" then try importing the locale messages again.
</p>

