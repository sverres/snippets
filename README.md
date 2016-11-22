# snippets

Some useful bits - could be


## FronterQuiz2Blackboard

Konverterer test-spørsmål fra Fronter eksport-format til Blackboard import-format.  

Fungerer på flervalgspørsmål, tar med spørsmålstekst og svaralternativ.  
Setter alle spørsmål til type MC - Multiple Choice,  
dette må eventult redigeres manuelt til MA - Multiple Answers.  
Setter alle svar til incorrect, korrekte svar må redigeres manuelt til correct.  
Resultatfil kan lett importeres til Excel for redigering. Skilletegn: tab.  

FronterQuiz2Blackboard.xsl brukes sammen med f.eks. Sablotron XSLT Processor.

Konvertering kan gjøres slik fra kommandolinje:

`sabcmd FronterQuiz2Blackboard.xsl FronterQuiz.xml BlackboardQuiz.txt`

Produsert fil må sjekkes for eventuelle uregelmessigheter i form av ekstra linjeskift etc,  
og den må redigeres i henhold til formatreglene for Blackboard (spørsmålstype og  
  correct/incorrect - som nevnt ovenfor).

For å få med norske tegn må importfil ha Windows 1252 e.l. tegnsett. UTF-8 fungerer ikke pr. pr. 22.11.16.

Referanser:

- [Blackboard formatregler](https://en-us.help.blackboard.com/Learn/Instructor/Tests_Pools_Surveys/070_Reuse_Questions/040_Upload_Questions)
- [Sablotron XSLT Processor](https://sourceforge.net/projects/sablotron/)

---

## startWebServerHere

Start web server in current directory by means of python 2 SimpleHTTPServer.

HTTP Headers are set to avoid file caching in browser:

```
Cache-Control: no-cache, no-store, must-revalidate
Pragma: no-cache
Expires: 0
```

Reference:
- [Brad Parks' servit.py](http://stackoverflow.com/questions/12193803/invoke-python-simplehttpserver-from-command-line-with-no-cache-option/25708957#25708957)
- [Python 2 Internet Protocols and Support](https://docs.python.org/2/library/internet.html)
- [Caching Tutorial](https://www.mnot.net/cache_docs/)
