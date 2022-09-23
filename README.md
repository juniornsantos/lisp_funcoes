# Biblioteca de funções Lisp/Autolisp
Esta é uma biblioteca de funções lisp/Autolisp/Common Lisp em de código aberto, Funciona como um serviço 
que você pode executar em qualquer lugar.

## Json -> List
Esse comando funciona semelhante ao JSON.parse no JavaScript
Está e a função:

```go
(defun json->lst ( jsn )
  (if (eq "STR" (type jsn))
    (read (vl-string-translate "[]{}:," "()()  " jsn))
  )
)
```

### Json (exemplo do google)
```sh
{"menu": {
    "header": "SVG Viewer",
    "items": [
        {"id": "Open"},
        {"id": "OpenNew", "label": "Open New"},
        null,
        {"id": "ZoomIn", "label": "Zoom In"},
        {"id": "ZoomOut", "label": "Zoom Out"},
        {"id": "OriginalView", "label": "Original View"},
        null,
        {"id": "Quality"},
        {"id": "Pause"},
        {"id": "Mute"},
        null,
        {"id": "Find", "label": "Find..."},
        {"id": "FindAgain", "label": "Find Again"},
        {"id": "Copy"},
        {"id": "CopyAgain", "label": "Copy Again"},
        {"id": "CopySVG", "label": "Copy SVG"},
        {"id": "ViewSVG", "label": "View SVG"},
        {"id": "ViewSource", "label": "View Source"},
        {"id": "SaveAs", "label": "Save As"},
        null,
        {"id": "Help"},
        {"id": "About", "label": "About Adobe CVG Viewer..."}
    ]
}}
```
### Modo de uso e retorno

```sh
(json->lst "{\"myTag\" : \"MyTagValue\" , \"myNum\" : -123.4}")
... (("myTag" "MyTagValue") ("myNum" -123.4)) //esse é o retorno
```
## Support
Você pode obter suporte da comunidade por meio de:

<a href = "https://api.whatsapp.com/send?phone=5588998686890"><img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" target="_blank"></a>
 <a href = "https://t.me/JuniorNogueira"><img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" target="_blank"></a>